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
hdfs dfs -mkdir -p /user/ubuntu
hdfs dfs -mkdir -p /tmp/mr-history/done
hdfs dfs -mkdir -p /tmp/mr-history/intermediate 
hdfs dfs -mkdir -p /tmp/hadoop-yarn 
hdfs dfs -chown ubuntu:hadoop  /user/ubuntu
hdfs dfs -chown hduser:hadoop /tmp
hdfs dfs -chown hduser:hadoop /user
hdfs dfs -chmod -R 1777 /tmp
hdfs dfs -chmod 777 /tmp/mr-history
hdfs dfs -chmod 777 /tmp/mr-history/done
hdfs dfs -chmod 777 /tmp/mr-history/intermediate
hdfs dfs -chmod 1777 /tmp/hadoop-yarn 
EOF

##Start history server
su - hduser << EOF
$HADOOP_INSTALL/sbin/mr-jobhistory-daemon.sh start historyserver
EOF
