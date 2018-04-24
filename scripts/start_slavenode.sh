. /home/ubuntu/hadoopenv
su - hduser << EOF 
$HADOOP_INSTALL/bin/hadoop-daemon.sh start datanode
EOF
su - yarn << EOF
$HADOOP_INSTALL/bin/yarn-daemon.sh start nodemanager
EOF
