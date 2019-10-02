openstack ec2 credentials create
access="$(openstack ec2 credentials list -f json -c Access -c Secret | jq -r .[0].Access)"
secret="$(openstack ec2 credentials list -f json -c Access -c Secret | jq -r .[0].Secret)"

cat <<EOF> ~/.s3cfg
access_key = ${access} 
check_ssl_certificate = True
check_ssl_hostname = True
host_base = s3.es1.fra.optimist.innovo.cloud
host_bucket = s3.es1.fra.optimist.innovo.cloud
secret_key = ${secret}   
use_https = True
EOF
 
