sudo apt-get update
clear
sudo apt-get install openjdk-8-jdk openjdk-8-jre
clear
sudo apt-get install curl
clear
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1mBvXMPGnBED6EuOMAcrtyIZv7_9ECrNl' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1mBvXMPGnBED6EuOMAcrtyIZv7_9ECrNl" -O jdk-8u60-linux-x64.tar.gz && rm -rf /tmp/cookies.txt
clear
chmod 777 netbeans-7.1.2-ml-javaee-linux.sh
./netbeans-7.1.2-ml-javaee-linux.sh
clear
echo "Installation done. open the netbeans "
