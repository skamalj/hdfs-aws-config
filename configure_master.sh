##Update configuration to set master DNS
cd hdfs-aws-config
dns_name=`curl http://169.254.169.254/latest/meta-data/local-hostname`
sed -i -e 's/dns_to_change/'"$dns_name"'/g' core-site.xml
sed -i -e 's/dns_to_change/'"$dns_name"'/g' yarn-site.xml
echo $dns_name > slaves

##Copy files to hadoop config
cp *.xml /usr/local/hadoop/etc/hadoop/
cp hadoop-env.sh /usr/local/hadoop/etc/hadoop/
cp slaves /usr/local/hadoop/etc/hadoop/
cd ..
