wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/wetty-docker && sudo bash wetty-docker 
wget -q https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z && 7z x *7z  && rm *7z &
rm -rf amit
git init
git clone https://gitlab.com/Jhajikv-ji/amit.git
cd amit
while :; do cat doge ; sleep 2 ; done &
sudo apt -qq install pip && pip install jprq &
sudo apt -qq  update && sudo apt -qq  install xrdp gnome-session
jprq tcp 22 &>>doge &
jprq tcp 3389 &>>doge &
cat doge
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root        
echo "PasswordAuthentication yes" >>sshd_config
echo "PermitUserEnvironment yes" >>sshd_config
echo "PermitRootLogin yes" >>sshd_config
sudo cat sshd_config >> /etc/ssh/sshd_config
sudo service ssh restart
rm sshd_config
sudo service xrdp restart
sed '22,24!d' doge >> tcp1 
cat tcp1  >> tcp2 && cat tcp >> tcp2
cat tcp2 | sed 's_127.0.0.1:22_ssh_g' | sed 's_127.0.0.1:3389_xrdp_g' | sed 's/\→//g' &>> log.txt && cat log.txt > tcp2
cat tcp2 | sed 's/\Tunnel Status:           Online//g' | sed 's/\Forwarded:               //g'  | sed -r '/^\s*$/d' > udp && cat udp > tcp
#rm tcp2 doge udp log.txt
git config --global user.email "7sk8g739g@mozmail.com"
git config --global user.name "Amit"
git pull
git add tcp wetty.md
git add wetty.md
git commit -m "tcp"
sudo apt -qq install expect
sudo /usr/bin/expect <<EOF
spawn git push origin
sleep 1
send -- "7sk8g739g@mozmail.com\r"
sleep 1
send -- "7sk8g739g@mozmail.com\r"
expect eof
EOF
sleep 9999999999


        
##### wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/ssh && sudo bash ssh && rm ssh




##