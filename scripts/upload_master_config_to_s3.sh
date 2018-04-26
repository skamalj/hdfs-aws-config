cd /home/ubuntu/hdfs-aws-config/config
cp  /home/hduser/.ssh/id_rsa.pub ./id_rsa_hduser.pub
cp  /home/yarn/.ssh/id_rsa.pub ./id_rsa_yarn.pub
su - ubuntu << EOF
cd /home/ubuntu/hdfs-aws-config/config
aws s3 cp mapred-site.xml s3://$1
aws s3 cp hdfs-site.xml s3://$1
aws s3 cp yarn-site.xml s3://$1
aws s3 cp core-site.xml s3://$1
aws s3 cp hadoopenv s3://$1
aws s3 cp hadoop-env.sh s3://$1
aws s3 cp mapred-env.sh s3://$1
aws s3 cp yarn-env.sh s3://$1
aws s3 cp  id_rsa_hduser.pub s3://$1/id_rsa_hduser.pub
aws s3 cp  id_rsa_yarn.pub s3://$1/id_rsa_yarn.pub
EOF
apt-get update
apt-get install python-setuptools -y
easy_install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz
