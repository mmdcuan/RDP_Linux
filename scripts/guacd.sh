curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/rclonemount.sh | sudo bash &
sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
sudo apt update && sudo apt install dolphin
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/base.7z https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z
curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/newinstall.sh | sudo bash 
yes | 7z x google.7z
rm *.7z



GUACVERSION="1.4.0"



SERVER="http://apache.org/dyn/closer.cgi?action=download&filename=guacamole/1.4.0"


wget -O guacamole-server-${GUACVERSION}.tar.gz ${SERVER}/source/guacamole-server-${GUACVERSION}.tar.gz

tar -xzf guacamole-server-${GUACVERSION}.tar.gz


wget -O guacamole-${GUACVERSION}.war ${SERVER}/binary/guacamole-${GUACVERSION}.war


rm -rf /etc/guacamole/lib/
rm -rf /etc/guacamole/extensions/
mkdir -p /etc/guacamole/lib/
mkdir -p /etc/guacamole/extensions/

mkdir -p /usr/sbin/.config/freerdp
chown daemon:daemon /usr/sbin/.config/freerdp

mkdir -p /var/guacamole
chown daemon:daemon /var/guacamole

cd guacamole-server-${GUACVERSION}/

export CFLAGS="-Wno-error"

./configure --with-systemd-dir=/etc/systemd/system  &>> Log.txt
make 
make install 

echo -e "Running Make on Guacamole-Server..."
ldconfig

cd

mv -f guacamole-${GUACVERSION}.war /etc/guacamole/guacamole.war

ln -sf /etc/guacamole/guacamole.war /var/lib/tomcat9/webapps/

sudo mkdir /etc/guacamole/{extensions,lib}

sudo echo "GUACAMOLE_HOME=/etc/guacamole" >> /etc/default/tomcat9



cat  >/etc/guacamole/guacamole.properties <<EOF

guacd-hostname: localhost
guacd-port:     4822
user-mapping:   /etc/guacamole/user-mapping.xml
auth-provider:  net.sourceforge.guacamole.net.basic.BasicFileAuthenticationProvider

EOF 


curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/usermapping.xml | cat >/etc/guacamole/user-mapping.xml 







            
        
rm -rf guaca*

iptables -A INPUT -p tcp --dport 8080 --jump ACCEPT
ufw allow 8080/tcp comment 'allow tomcat'
sudo ufw enable && ufw allow 22 && ufw allow 8080 && ufw allow 80

echo -e "${BLUE}Installation Complete\n- Visit: http://localhost:8080/guacamole/\n- Default login (username/password): guacadmin/guacadmin\n***Be sure to change the password***.${NC}"
sudo mkdir -p /etc/guacamole/{extensions,lib}
sudo systemctl daemon-reload
sudo systemctl enable guacd
sudo systemctl enable tomcat9
sudo systemctl start guacd
sudo systemctl restart ssh xrdp tomcat9 guacd 

