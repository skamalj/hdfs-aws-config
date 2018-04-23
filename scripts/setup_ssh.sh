su - hduser << EOF
yes "" | ssh-keygen -t rsa -P ""
cat /home/hduser/.ssh/id_rsa.pub >> /home/hduser/.ssh/authorized_keys
EOF

su - yarn << EOF
yes "" | ssh-keygen -t rsa -P ""
cat /home/yarn/.ssh/id_rsa.pub >> /home/yarn/.ssh/authorized_keys
EOF
