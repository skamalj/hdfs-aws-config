##Mount Storage
mkdir /data
mkfs -t ext4 /dev/xvdb
mount /dev/xvdb /data

##Create Directories
mkdir -p /data/hadoop/namenode
mkdir -p /data/hadoop/datanode
mkdir -p /data/hadoop/logs
chmod 777 /tmp
cd /usr/local
sudo chown -R hduser:hadoop hadoop
cd /data
chown -R hduser:hadoop hadoop
su -p - hduser -C "chmod g+w /data/hadoop/logs"
