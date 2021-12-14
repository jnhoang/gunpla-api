import os
import json
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

FILENAME = 're'
FILE_SRC_LOCATION =  '../scraper/output/usa_gundam/pass-5-manual-updates/%s.json'
OUTPUT_LOCATION   =  './output/%s.json'


def main():
  print('top of main')
  # CONSIDERATIONS
    # HOW TO SET FOLDER DEPTH
      # grade/kit/file

  foo = get_kit_file(FILE_SRC_LOCATION % FILENAME)
  # print(foo)
  # print(type(foo))
  for kit, data in foo.items():
    print('data:', data)
    if kit == 'other-kits': continue
    counter = 0
    for img in data['images']:
      cloudinary_upload(img, public_id = f"kit-{counter}")
      counter += 1
    break

  # open file  - ../scraper/output/usa_gundam/pass-5-manual-updates/re.json
  # loop through dict of kit / value
    # loop through images key
      # wrap try/exception block here
        # upload img to cloudinary
        # save cloudinary['secure_url'] to kit['pics']
      # exception
        # save into errors file in ./output/errors.txt
        # kit, scale
  # open new file and save result  - ./output/<FILE_NAME>.json

  print('done')
  return


def get_kit_file(file_location:str):
  with open(file_location, 'r+') as f:
    file_data = json.load(f)
  return file_data


def cloudinary_upload(url:str, public_id: str, tags: List[str]=[]):
  res = cloudinary.uploader.upload(url, public_id=public_id, tags=tags)
  print(res['public_id'])
  return


if __name__ == '__main__':
  main()
