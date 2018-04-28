su - ubuntu << EOF
aws s3 cp s3://teststack-hdfsinstancerole-rft-hdfsconfigs3bucket-1bq15t1yv6g1v/slaves .
EOF
su - hduser << EOF
cp /home/ubuntu/slaves /usr/local/hadoop/etc/hadoop
EOF

