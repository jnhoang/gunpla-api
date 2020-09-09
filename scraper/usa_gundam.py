import os
import time
import json
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

from bs4 import BeautifulSoup, element

from helper import Helper

SITE = 'usa_gundam'
SITE_HTML_FOLDER = f'html/{SITE}'
BASE_PAGE_LINKS = {
  'rg'       :  'https://www.usagundamstore.com/pages/search-results-page?collection=rg-kits',
  'p-bandai' :  'https://www.usagundamstore.com/pages/search-results-page?collection=p-bandai',
  'pg'       :  'https://www.usagundamstore.com/pages/search-results-page?collection=pg-gundam-kits',
  'mg'       :  'https://www.usagundamstore.com/pages/search-results-page?collection=model-kits',
  'sd'       :  'https://www.usagundamstore.com/pages/search-results-page?collection=gundam-bb-sd',
  're'       :  'https://www.usagundamstore.com/pages/search-results-page?collection=re-100-reborn-model-kits',
  'hguc'     :  'https://www.usagundamstore.com/pages/search-results-page?collection=hguc-gundam-kits',
  'hg'       :  'https://www.usagundamstore.com/pages/search-results-page?collection=1-144&rb_tags=Gundam',
}
HELPER = Helper()

def main():
  # download_html_pages_extract_basic_info()

  # open json and update models in json data
  for product_line in BASE_PAGE_LINKS.keys():
    print(f'\n\n============== {product_line} ==============')

    # pass 1: scrape for basic info into json format
    # scrape_details_page(product_line)

    # pass 2: clean up json
    run_pass(
      product_line    =  product_line,
      input_location  =  f'output/{SITE}/pass-1-original',
      output_location =  f'output/{SITE}/pass-2-reduce-details',
      operation       =  pass_2,
      operation_extra =  {'product_line': product_line}
      log             =  'pass 2: reduce json details'
    )

    # pass 3: update key names
    run_pass(
      product_line    =  product_line,
      input_location  =  f'output/{SITE}/pass-2-reduce-details',
      output_location =  f'output/{SITE}/pass-3-update-key-names',
      operation       =  pass_3,
      log             =  'pass 3: update key names'
    )

    #

    # pass 4: process by grade
    """ MG
      - move everything from "other" out
        - modify the key name
          - remove "pre-order"
    """
    run_pass(
      product_line    =  product_line,
      input_location  =  f'output/{SITE}/pass-3-update-key-names',
      output_location =  f'output/{SITE}/pass-4-process-by-grade',
      operation       =  pass_3,
      operation_extra =  {}
      log             =  'pass 3: update key names'
    )


    # create access_name field
    """ requirements
      - scale
      - title
      - grade
    """



    # add series
    # add timeline

  return


def download_html_pages_extract_basic_info():
  for product_line, page_link in BASE_PAGE_LINKS.items():
    print('product_line: ', product_line)
    # download base pages
    output_json_location =  f'output/{SITE}/pass-1-original/{product_line}.json'
    download_dir         =  f'{SITE_HTML_FOLDER}/base_pages/{product_line}'
    download_location    =  f'{download_dir}/{product_line}.html'
    HELPER.download_dynamic_html(page_link, download_dir, alt_filename=product_line)

    # get all kits in each base page
    get_model_details_page(product_line, download_dir, download_location, output_json_location)
    print('completed extracting base page data!')
  return


def run_pass(product_line, input_location, output_location, operation, operation_extra={} log=''):
  print(f'running {log}')
  with open(f'input_location/{product_line}.json', 'r') as f:
    json_data = json.load(f)
    f.close()

  updated_json = operation(json_data, extra=operation_extra)

  HELPER.compose_download_dir(output_location)
  with open(f'{output_location}/{product_line}.json', 'w') as f:
    f.write(json.dumps(updated_json, indent=2))
    f.close()

  print(f'completed {log}')
  return


# PASS 1 STUFF
def scrape_details_page(product_line):
  output_json_location =  f'output/{SITE}/pass-1-original/{product_line}.json'
  with open(output_json_location, 'r') as f:
    json_data = json.load(f)
    f.close()

  num_of_kits_to_process = len(json_data.keys())
  print(f'total kits in {product_line}: {num_of_kits_to_process}')

  counter = 1
  for model_kit, file_model_info in json_data.items():
    print(f'{counter}/{num_of_kits_to_process} - {model_kit}')
    if model_kit == 'mg-1-100-full-armor-unicorn-gundam-red-color-ver-p-bandai': # broken for idk why reasons
      counter += 1
      continue
    if file_model_info.get('is_visited'):
      counter += 1
      print('  skipping, already extracted')
      continue

    # get the extra model kit info from details page
    html_model_info =  process_details_page(file_model_info)

    # update json file
    output_json_location =  f'output/{SITE}/pass-1-original/{product_line}.json'
    HELPER.update_json_file_content(html_model_info, model_kit, output_json_location)
    counter += 1
  return


def process_details_page(file_model_info):
  try:
    page_url =  file_model_info['href']
    driver   =  webdriver.Firefox()
    driver.implicitly_wait(20)
    driver.get(page_url)
    page_html =  driver.page_source
    soup      =  BeautifulSoup(page_html, 'html.parser')

    html_model_info =  {}

    # title
    html_model_info['title'] = soup.find('h1', class_='product-single__title').contents

    # sku
    sku = soup.find('p', class_='product-single__sku').contents
    html_model_info['sku'] = sku[1] if len(sku) > 1 else None

    # category
    category_tags = soup.find('p', class_='product-single__cat')
    html_model_info['categories'] = [el.contents for el in category_tags if type(el) == element.Tag and el != None and len(el)]

    # description
    product_description =  []

    product_description_1_tag     =  soup.findAll('div', class_='productdescription')
    product_description_1_content =  [tags.text for tags in product_description_1_tag]
    if len(product_description_1_content):
      product_description.append(product_description_1_content)

    product_description_2_tag     =  soup.findAll('div', class_='product attibute description')
    product_description_2_content =  [tags.text for tags in product_description_2_tag if len(tags)]
    if len(product_description_2_content):
      product_description.append(product_description_2_content)

    product_description_3_tag     =  soup.findAll('div', id='proTabs1')
    product_description_3_content =  [tags.text for tags in product_description_3_tag if len(tags)]
    if len(product_description_3_content):
      product_description.append(product_description_3_content)

    for el in product_description_3_tag:
      description_images = el.find('img')
      if description_images:
        product_description.append([description_images['src']])

    html_model_info['product_description'] = product_description

    # images
    main_img    =  soup.find('img', id='ProductPhotoImg')['src']
    img_gallery =  soup.find('div', class_='owl-stage-outer')
    if img_gallery != None:
      a_tags = img_gallery.findAll('a', class_='product-single__thumbnail')
      images = file_model_info['images']
      images.append(main_img)
      for tag in a_tags:
        images.append(tag['data-zoom-image'])
      html_model_info['images'] = images

    # mark that the model has been updated
    html_model_info['is_visited'] = True
  finally:
    driver.quit()

  return html_model_info


def get_model_details_page(product_line, download_dir, download_location, output_json_location):
  print('\n ================')
  print('processing page: ', product_line)

  # open the page
  with open(download_location, 'r') as f:
    page_html = f.read()
    f.close()

  soup          =  BeautifulSoup(page_html, 'html.parser')
  paginator_div =  soup.find('div', class_='snize-pagination')
  a_tags        =  paginator_div.findAll('a')

  num_of_pages = get_num_of_pages(a_tags)
  print(f'\n{product_line} has {num_of_pages} of pages.')

  # content already in file, used as a base to append new content unto
  with open(output_json_location, 'r') as f:
    file_json = json.load(f)
    f.close()

  # get initial page's content
  print(f'processing page : {product_line}.html')
  html_json = extract_table_contents(soup, file_json)

  # get any subsequent page contents
  if num_of_pages > 0:

    # iterate range up to num_of_ages
    for page_num in range(2, num_of_pages + 1):
      page_link         =  f'{BASE_PAGE_LINKS[product_line]}&page={page_num}'
      filename          =  f'{product_line}-{page_num}'
      download_location =  f'{download_dir}/{filename}'

      # download page
      HELPER.download_dynamic_html(page_link, download_dir, alt_filename=filename)
      with open(f'{download_location}.html', 'r') as f:
        html = f.read()
        f.close()

      # extract page content
      soup        =  BeautifulSoup(html, 'html.parser')
      models_info =  extract_table_contents(soup, file_json)
      html_json.update(models_info)

  # write data to file
  for model, model_info in html_json.items():
    HELPER.update_json_file_content(model_info, model, output_json_location)

  # update model key on json
  print(f'finished extracting base pages, {output_json_location} updated')
  return


def extract_table_contents(soup, file_json):
  # loops through a tables worth of content and extracts model info of all models in the table
  # returns a dict of the models on the page

  a_tags =  soup.findAll('a', class_ = 'snize-view-link')
  for tag in a_tags:
    page_link =  tag['href']
    model     =  page_link.split('/products/')[1]
    image     =  tag.find('img', class_ = 'snize-item-image')['src']

    # first time content, just assign a new dict
    if file_json.get(model) == None:
      file_json[model] = {
        'href'   :  page_link,
        'images' :  [image],
      }
    # else carefully append to existing content
    else:
      if image not in file_json[model].get('images'):
        file_json[model]['images'].append(image)

    print(f'  {model} processed')

  return file_json


def get_num_of_pages(a_tags):
  num = 0
  for tag in a_tags:
    if len(tag.contents):
      int_val = HELPER.safe_cast(tag.contents[0], int)
      if isinstance(int_val, int):
        num = int_val if num < int_val else num
  return num


# PASS 2 STUFF
def pass_2(json_data, extra):
  product_line = extra['product_line']

  updated_json_data = {}
  for model_kit, file_model_info in json_data.items():
    # categories section
    # change categories -> tags
    file_model_info['tags'] =[ item[0].lower() for item in file_model_info['categories'] if not item[0].lower().startswith('categories')]
    del file_model_info['categories']
    # add a scale field
    if product_line == 'sd':
      scale = 'n/a'
    elif product_line == 'mg' or product_line == 're':
      scale = '1/100'
    elif product_line == 'hg' or product_line == 'rg' or product_line == 'hguc':
      scale = '1/144'
    else:
      scale = None
    file_model_info['scale'] = scale

    # add product line
    file_model_info['product_line'] = product_line

    # image section
    updated_imgs = []
    for img in file_model_info['images']:
      url = f'https:{img}' if img.startswith('//cdn.shopify') else img
      updated_imgs.append(url)
    file_model_info['images'] = updated_imgs

    # convert description value from list of list -> list of strings
    file_model_info['description'] = [description[0] for description in file_model_info['product_description']]
    del file_model_info['product_description']

    # add manufacturer (all will be the same)
    file_model_info['manufacturer'] = 'bandai'

    updated_json_data[model_kit] = file_model_info

  return updated_json_data


# PASS 3 STUFF
def pass_3(json_data, extra):
  updated_json = {}
  for model_kit, file_model_info in json_data.items():
    # rename
    """ modify the key name
      - remove "bandai-"
      - remove "-bandai"
      - change "hguc-"    to "hg-"
      - add key-name to the product-line['title']
    """

    updated_model_kit = model_kit.lower()
    updated_model_kit = updated_model_kit.replace('pre-order-', '')
    updated_model_kit = updated_model_kit.replace('bandai-', '')
    updated_model_kit = updated_model_kit.replace('-bandai', '')
    updated_model_kit = updated_model_kit.replace('hguc-', 'hg-')

    file_model_info.get('title', []).insert(0, updated_model_kit)
    updated_json[updated_model_kit] = file_model_info

  return updated_json


def pass_4(json_data, extra):
  updated_json = {}
  for model_kit, file_model_info in json_data.items():


# # PASS _ STUFF TODO - move this to the last step
  # remove evangelion kits
  # remove starwars kits
  # remove rg kits from hg.json
# def run_pass__(product_line):
#   print('running pass 3 - cleaning json_body')
#   input_json_location =  f'output/{SITE}/pass-2-reduce-details/{product_line}.json'
#   with open(input_json_location, 'r') as f:
#     json_data = json.load(f)
#     f.close()

#   updated_json = { 'other': {} }
#   for model_kit, file_model_info in json_data.items():
#     if is_other_kit(model_kit, file_model_info):
#       updated_json['other'][model_kit] = file_model_info
#     else:
#       updated_json[model_kit] = file_model_info

#   output_json_location =  f'output/{SITE}/pass-3-update-json-body/{product_line}.json'
#   with open(output_json_location, 'w') as f:
#     f.write(json.dumps(updated_json, indent=2))
#     f.close()

#   print('pass 3 complete')
#   return


def is_other_kit(model_kit, file_model_info):
  if 'pre-order' in model_kit or 'preorder' in model_kit:
    return True

  elif 'star-wars' in model_kit:
    return True
  elif 'decal' in model_kit:
    return True
  else:
    return False



if __name__ == '__main__':
  HELPER.time_fn_execution(main)
