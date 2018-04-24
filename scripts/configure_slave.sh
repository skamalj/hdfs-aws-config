su - ubuntu << EOF
cd /home/ubuntu
mkdir master_config
cd master_config
aws s3 cp s3://$1 . --recursive
EOF

su - hduser << EOF
cd /home/ubuntu/master_config
cp *.xml /usr/local/hadoop/etc/hadoop
cp *env.sh /usr/local/hadoop/etc/hadoop
cat id_rsa_hduser.pub >> /home/hduser/.ssh/authorized_keys
EOF

su - yarn << EOF
cd /home/ubuntu/master_config
cat id_rsa_yarn.pub >> /home/yarn/.ssh/authorized_keys
EOF
