su - hduser << EOF
yes "" | ssh-keygen -t rsa -P ""
cat /home/hduser/.ssh/id_rsa.pub >> /home/hduser/.ssh/authorized_keys
ssh-keyscan -H localhost >> /home/hduser/.ssh/known_hosts
ssh-keyscan -H 0.0.0.0 >> /home/hduser/.ssh/known_hosts
EOF

su - yarn << EOF
yes "" | ssh-keygen -t rsa -P ""
cat /home/yarn/.ssh/id_rsa.pub >> /home/yarn/.ssh/authorized_keys
ssh-keyscan -H localhost >> /home/hduser/.ssh/known_hosts
EOF
