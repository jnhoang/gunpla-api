import os
import json
import time
from os.path import join, dirname
from typing import List

import cloudinary
import cloudinary.uploader
import cloudinary.api


from dotenv  import load_dotenv

dotenv_path = join(dirname(__file__), '.env')
load_dotenv(dotenv_path)


cloudinary.config(
  cloud_name =  os.getenv("CLOUDINARY_NAME"),
  api_key    =  os.getenv("CLOUDINARY_API_KEY"),
  api_secret =  os.getenv("CLOUDINARY_API_SECRET"),
)


### hg, p-bandai, sd
BRAND = 'bandai'
GRADE = 'p-bandai'

FILE_SRC_LOCATION =  '../scraper/output/usa_gundam/pass-5-manual-updates/%s.json'
OUTPUT_LOCATION   =  './output/%s.json' % GRADE


def main():
  print('script starting')
  # CONSIDERATIONS
    # HOW TO SET FOLDER DEPTH
      # grade/kit/file

  input_kit  =  get_kit_file(FILE_SRC_LOCATION % GRADE)
  total_kits =  len(input_kit.keys())
  print(total_kits)

  count = 0
  for kit_name, data in input_kit.items():
    if kit_name == 'other-kits':
      continue

    print(f'------kit: {count}/{total_kits}')
    cloud_dir = f'{BRAND}/{GRADE}/{kit_name}'

    data['pics'] = []
    for img in data['images']:

      # get the image filename
      filename = rename_url_as_filename(img)

      # upload img to cloud service
      try:
        new_url = cloudinary_upload(img, public_id = f'{cloud_dir}/{filename}')
        print(new_url)
      except Exception as e:
        add_to_error_log(e)

      # append the new_url to the data[pics]
      data['pics'].append(new_url)
    count += 1

  # open new file and save result  - ./output/<FILE_NAME>.json
  with open(OUTPUT_LOCATION, 'w') as f:
    f.write(json.dumps(input_kit, indent=2))
  print('done')
  return


def rename_url_as_filename(url: str):
  # strip fr ont part
  filename = url.split('/products/')[1]
  # sprint end part
  filename = filename.split('.')[0]
  return filename


def get_kit_file(file_location:str):
  with open(file_location, 'r+') as f:
    file_data = json.load(f)
  return file_data


def cloudinary_upload(url:str, public_id: str, tags: List[str]=[]):
  res = cloudinary.uploader.upload(url, public_id=public_id, tags=tags)
  return res['url']


def add_to_error_log(error):
  with open('./errors.txt', 'a') as f:
    f.write(str(error))
  return

if __name__ == '__main__':
  start_time = time.time()
  # main()
  main2()
  end_time = round((time.time() - start_time) / 60, 2)
  print(f'execution time: {end_time} mins',)
