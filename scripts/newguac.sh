#! /bin/bash
cd /root
sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
sudo apt update && sudo apt install dolphin
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/base.7z https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z
curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/newinstall.sh | sudo bash 
wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh 
printf "n\nn\ny\nroot\nroot\nroot\nroot" | bash guac-install.sh 
sudo mkdir -p /etc/guacamole/{extensions,lib}
sudo systemctl daemon-reload
sudo systemctl enable guacd
sudo systemctl enable tomcat9
sudo systemctl start guacd
sudo systemctl restart ssh xrdp tomcat9 guacd 
sudo ufw enable && ufw allow 22 && ufw allow 8080 && ufw allow 80
gsettings set org.gnome.desktop.interface enable-animations false 
echo 'export domain="5555-jhaji.pagekite.me" && export port="8080" && export passwd="24ebe38z" && export email="gpw97v95c@mozmail.com" &&  export parent="jhaji.pagekite.me"' >> yo && cat yo > page.sh  && mv yo funale.sh
wget -O lull https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/expect.sh && cat lull >> finale.sh && rm lull
while :; do sudo bash finale.sh & sleep 300 ; done



             
             
