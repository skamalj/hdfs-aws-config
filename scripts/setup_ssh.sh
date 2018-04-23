dns_name=`curl http://169.254.169.254/latest/meta-data/local-hostname`
su - hduser << EOF
yes "" | ssh-keygen -t rsa -P ""
cat /home/hduser/.ssh/id_rsa.pub >> /home/hduser/.ssh/authorized_keys
ssh-keyscan -H $dns_name >> /home/hduser/.ssh/known_hosts
ssh-keyscan -H 0.0.0.0 >> /home/hduser/.ssh/known_hosts
EOF

su - yarn << EOF
yes "" | ssh-keygen -t rsa -P ""
cat /home/yarn/.ssh/id_rsa.pub >> /home/yarn/.ssh/authorized_keys
ssh-keyscan -H $dns_name >> /home/yarn/.ssh/known_hosts
EOF
