# Accessing Object Storage

Object storage makes sense for example to deliver static assets or store backup data that can be reached from every container.

The script create_config_and_secrets.sh is an example how to generate a valid object storage config file that can be used 
for example with the command line util "s3cmd".

For that script to work you have to be authenticated against a valid OpenStack-API (for example following this guide): http://docs.innovo.cloud/guided_tour/en/step04/


