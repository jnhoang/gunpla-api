import os

import cloudinary
import cloudinary.uploader
import cloudinary.api

from dotenv  import load_dotenv
from os.path import join, dirname

dotenv_path = join(dirname(__file__), '.env')
load_dotenv(dotenv_path)


cloudinary.config(
  cloud_name =  os.getenv("CLOUDINARY_NAME"),
  api_key    =  os.getenv("CLOUDINARY_API_KEY"),
  api_secret =  os.getenv("CLOUDINARY_API_SECRET"),
)

def main():
  print('top of main')
  ## POC WORK
  res = cloudinary.uploader.upload(
    "https://upload.wikimedia.org/wikipedia/commons/a/ae/Olympic_flag.jpg",
    public_id =  "olympic_flag",
    tags      =  ["foo", "bar"])

  print(res)
  print('done')
  return


if __name__ == '__main__':
  main()
