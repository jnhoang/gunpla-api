# Overview
- images should be moved to hosting site as not to hotlink old sources.
- cloudinary offers a free option
- [documentation](https://cloudinary.com/documentation/django_integration#installation)


# Objective
start wit this file./databaase/raw_output_data/re.json

- open file
- loop through dictionary of kit / kit_data
  - loop through all images
    - upload image to cloudinary
    - save cloudinary link to kit_data['pics']
- save to original file


# cloudinary notes
```
# command
# def upload(file, **options)
# see response for options, seems like any key on the response can be an arg for this function


cloudinary.uploader.upload(
  "https://upload.wikimedia.org/wikipedia/commons/a/ae/Olympic_flag.jpg",
  public_id = "olympic_flag")
```
# response
* [documentation link](https://cloudinary.com/documentation/django_image_and_video_upload#upload_response)
