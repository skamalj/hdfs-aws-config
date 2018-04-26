##This scripts copies file will all hadoop env variables to .bashrc files of required users 
cp ./hdfs-aws-config/config/hadoopenv /home/ubuntu/
echo ". /home/ubuntu/hadoopenv" >> /home/ubuntu/.bashrc
echo ". /home/ubuntu/hadoopenv" >> /home/hduser/.bashrc
echo ". /home/ubuntu/hadoopenv" >> /home/yarn/.bashrc
