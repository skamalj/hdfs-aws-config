cd /home/ubuntu/hdfs-aws-config/scripts
aws s3 cp *.xml s3::/$1
aws s3 cp hadoop-env.sh s3::/$1
aws s3 cp mapred-env.sh s3::/$1
aws s3 cp yarn-env.sh s3::/$1
