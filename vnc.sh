#! /bin/bash
sudo apt update && sudo DEBIAN_FRONTEND=noninteractive apt install -y tzdata npm keyboard-configuration xfce4-session gnome-session lightdm dbus-x11 apt-utils sudo nano wget curl git dos2unix unzip xserver-xorg-video-dummy xserver-xorg-legacy x11vnc && sudo npm install -g localtunnel
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/6080.sh https://raw.githubusercontent.com/amitstudydude/gitpod-ubuntu-20.04/master/dockerfiles/xorg.conf && sudo sed -i 's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config && sudo mv xorg.conf /etc/X11/xorg.conf && sudo dos2unix /etc/X11/xorg.conf && git clone https://github.com/novnc/noVNC.git /opt/novnc && git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify  && echo "<html><head><meta http-equiv=\"Refresh\" content=\"0; url=vnc.html?autoconnect=true&reconnect=true&reconnect_delay=1000&resize=scale&quality=9\"></head></html>" > /opt/novnc/index.html  
startxfce4 &
x11vnc -display :0 -N -forever -shared -bg  &
/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5900 --listen 6080 &
sudo bash 6080.sh