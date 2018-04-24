. /home/ubuntu/hadoopenv
su - hduser << EOF 
$HADOOP_INSTALL/sbin/hadoop-daemon.sh start datanode
EOF
su - yarn << EOF
$HADOOP_INSTALL/sbin/yarn-daemon.sh start nodemanager
EOF
