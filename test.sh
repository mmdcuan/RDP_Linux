sudo apt install python3 expect 
cd .. && pwd && python3 -m http.server 6080 &
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/new.exp
curl -O https://pagekite.net/pk/pagekite.py && sudo chmod +x pagekite.py && sudo mv -f pagekite.py /usr/local/bin
expect new.exp
