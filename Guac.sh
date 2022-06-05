#! /bin/bash
cd 
sudo wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | sudo bash guac-install.sh 
sudo ufw enable && sudo  ufw allow 8080 && sudo ufw allow 22
sudo apt install tomcat9 tomcat9-admin tomcat9-common tomcat9-user
sudo apt install gcc g++ maven openjdk-8-jdk build-essential libcairo2-dev libjpeg-turbo8-dev \
    libpng-dev libtool-bin libossp-uuid-dev libvncserver-dev \
    freerdp2-dev libssh2-1-dev libtelnet-dev libwebsockets-dev \
    libpulse-dev libvorbis-dev libwebp-dev libssl-dev \
    libpango1.0-dev libswscale-dev libavcodec-dev libavutil-dev \
    libavformat-dev
cd
wget https://downloads.apache.org/guacamole/1.4.0/source/guacamole-server-1.4.0.tar.gz https://downloads.apache.org/guacamole/1.4.0/source/guacamole-client-1.4.0.tar.gz https://downloads.apache.org/guacamole/1.4.0/binary/guacamole-1.4.0.war
tar -xvf guacamole-server-1.4.0.tar.gz
tar -xvf guacamole-client-1.4.0.tar.gz
cd guacamole-server-1.4.0
sudo ./configure --with-init-dir=/etc/init.d 
sudo make 
sudo make install
sudo ldconfig
sudo systemctl daemon-reload
sudo systemctl start guacd
sudo systemctl enable guacd
sudo mkdir -p /etc/guacamole/{extensions,lib}
cd
sudo mv guacamole-1.4.0.war /var/lib/tomcat9/webapps/guacamole.war
sudo systemctl restart tomcat9 guacd
cd
cd guacamole-client-1.4.0
mvn package
sudo makdir /usr/share/tomcat8/
sudo touch /usr/share/tomcat8/.guacomol
ln -s  /etc/guacamole/guacamole.properties /usr/share/tomcat8/.guacomol
sudo systemctl daemon-reload
sudo systemctl restart tomcat9 guacd
sudo apt update && sudo apt install xfce4 xfce4-goodies expect && sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/xvnc.sh && sudo bash xvnc.sh








#sudo apt install --allow-change-held-packages --fix-broken -y libpulse-dev  libssl-dev libvorbis-dev libwebsockets-dev libvncserver-dev libtelnet-dev libssh2-1-dev libpango1.0-dev freerdp2-dev libavcodec-dev libavformat-dev libavutil-dev   libossp-uuid-dev libtool-bin uuid-dev   libcairo2-dev  && \
#
#sudo systemctl enable guacd
#dudo systemctl start guacd
#sudo systemctl daemon reload

#curl -O https://pagekite.net/pk/pagekite.py
#chmod +x pagekite.py
#sudo mv -f pagekite.py /usr/local/bin
#printf "y\ny\ny0nxj8ze4@mozmail.com\na3z2cfdb\na3z2cfdb\ny" | pagekite.py 6080 vnc-jha.pagekite.me





#chmod +x guac-install.sh
#./guac-install.sh --mysqlpwd root --guacpwd root --nomfa --installmysql








