#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-11-jdk -y
sudo apt install tomcat9 tomcat9-admin tomcat9-docs tomcat9-common git -y
git clone https://github.com/daus2936/vprofile-project.git
cd vprofile-project
mvn install
sudo rm -rf /var/lib/tomcat9/webapps/ROOT
sudo -r cp /home/ubuntu/vprofile-project/target/vprofile-v2.war /var/lib/tomcat9/webapps/ROOT.war
sudo systemctl stop tomcat9
sudo systemctl start tomcat9

