# rulyotano.blog
My blog

## Local volumes restore:

> Suppose we already have the tar files (github returns zipped files) with the same name of the volume
> first we need to run:
> `tar -xf drupal-sites-0000000000.tar.zip` and then remove the code part of the extracted file

### postgres_data
`docker run --rm -v postgres_data:/t/ -v ./postgres_data.tar:/postgres_data.tar busybox:1.37.0  tar -xvf /postgres_data.tar -C /t`

### drupal-sites
`docker run --rm -v drupal-sites:/t/ -v ./drupal-sites.tar:/drupal-sites.tar busybox:1.37.0  tar -xvf /drupal-sites.tar -C /t`

### drupal-profiles
`docker run --rm -v drupal-profiles:/t/ -v ./drupal-profiles.tar:/drupal-profiles.tar busybox:1.37.0  tar -xvf /drupal-profiles.tar -C /t`