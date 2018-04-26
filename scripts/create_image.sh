apt-get update -y
apt-get install default-jdk -y
apt-get install ssh -y

addgroup hadoop 
adduser --disabled-password --gecos "" --ingroup hadoop hduser
adduser --disabled-password --gecos "" --ingroup hadoop yarn
usermod -a -G hadoop ubuntu

su - ubuntu << EOF
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
export PATH=~/.local/bin:$PATH
echo "export PATH=~/.local/bin:$PATH" >> /home/ubnutu/.bashrc
pip install awscli --upgrade --user
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.9.0/hadoop-2.9.0.tar.gz
tar xvf hadoop-2.9.0.tar.gz 
EOF
mv /home/ubuntu/hadoop-2.9.0 /usr/local/hadoop

cat >> /etc/security/limits.conf << EOF
*        hard    nofile        50000
*        soft    nofile        50000
*        hard    nproc         10000
*        soft    nproc         10000
EOF

cat >> /etc/systemd/logind.conf << EOF
KillUserProcesses=no
EOF
