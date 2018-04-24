. /home/ubuntu/hadoopenv
##Format namenode and start DFS
su - hduser  << EOF
$HADOOP_INSTALL/bin/hdfs namenode -format
$HADOOP_INSTALL/sbin/start-dfs.sh
EOF

##Start Yarn
su - yarn  << EOF
$HADOOP_INSTALL/sbin/start-yarn.sh
EOF

##Setup user and history server directories
su - hduser << EOF
$HADOOP_INSTALL/bin/hdfs dfs -mkdir -p /user/ubuntu
$HADOOP_INSTALL/bin/hdfs dfs -mkdir -p /tmp/mr-history/done
$HADOOP_INSTALL/bin/hdfs dfs -mkdir -p /tmp/mr-history/intermediate 
$HADOOP_INSTALL/bin/hdfs dfs -mkdir -p /tmp/hadoop-yarn 
$HADOOP_INSTALL/bin/hdfs dfs -chown ubuntu:hadoop  /user/ubuntu
$HADOOP_INSTALL/bin/hdfs dfs -chown hduser:hadoop /tmp
$HADOOP_INSTALL/bin/hdfs dfs -chown hduser:hadoop /user
$HADOOP_INSTALL/bin/hdfs dfs -chmod -R 1777 /tmp
$HADOOP_INSTALL/bin/hdfs dfs -chmod 777 /tmp/mr-history
$HADOOP_INSTALL/bin/hdfs dfs -chmod 777 /tmp/mr-history/done
$HADOOP_INSTALL/bin/hdfs dfs -chmod 777 /tmp/mr-history/intermediate
$HADOOP_INSTALL/bin/hdfs dfs -chmod 1777 /tmp/hadoop-yarn 
EOF

##Start history server
su - hduser << EOF
$HADOOP_INSTALL/sbin/mr-jobhistory-daemon.sh start historyserver
EOF
