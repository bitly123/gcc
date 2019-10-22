sudo apt-get install wget
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Rkfy8wYW8zea2SoIe__tuyKfuP_SK6cm' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Rkfy8wYW8zea2SoIe__tuyKfuP_SK6cm" -O jdk-8u60-linux-x64.tar.gz && rm -rf /tmp/cookies.txt
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=12KylUFB8PimvjfY8LBMJUncTDlgJACA-' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=12KylUFB8PimvjfY8LBMJUncTDlgJACA-" -O hadoop-2.7.0.tar.gz && rm -rf /tmp/cookies.txt
sudo cp *.gz /opt/
cd /opt
sudo tar -zxvf jdk-8u60-linux-x64.tar.gz
sudo tar -zxvf  hadoop-2.7.0.tar.gz
sudo echo "JAVA_HOME=/opt/jdk1.8.0_60" >> /etc/profile
sudo echo "HADOOP_PREFIX=/opt/hadoop-2.7.0" >> /etc/profile
sudo echo 'PATH=$PATH:$JAVA_HOME/bin' >> /etc/profile
sudo echo 'PATH=$PATH:$HADOOP_PREFIX/bin' >> /etc/profile
sudo echo "export PATH JAVA_HOME HADOOP_PREFIX" >> /etc/profile
source /etc/profile
ssh-keygen
sudo apt-get install ssh
ssh-copy-id -i localhost
sudo apt-get install openssh-server
cd $HADOOP_PREFIX
bin/hadoop version
sudo echo 'export  JAVA_HOME=/opt/jdk1.8.0_60' >> /opt/hadoop-2.7.0/etc/hadoop/hadoop-env.sh
sudo echo 'export HADOOP_PREFIX=/opt/hadoop-2.7.0' >> /opt/hadoop-2.7.0/etc/hadoop/hadoop-env.sh
cd /opt/hadoop-2.7.0/etc/hadoop/
sudo rm core-site.xml hdfs-site.xml yarn-site.xml
cd /home/admin123/gcc/6cluster
sudo cp *.xml /opt/hadoop-2.7.0/etc/hadoop/
cd $HADOOP_PREFIX
bin/hadoop namenode -format
sbin/start-dfs.sh
jps
sbin/start-yarn.sh
jps
xdg-open http://localhost:50070/dfshealth.html#tab-overview
xdg-open http://localhost:8088/cluster
