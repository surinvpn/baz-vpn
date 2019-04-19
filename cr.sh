IP=$(wget -qO- ipv4.icanhazip.com);
if [[ "$IP" = "" ]]; then
    IP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | grep -v '192.168'`;
fi
echo
echo -e "\e[34m    ┣━━━━━━━━━━━ ข้อความการแจ้งเตือน ━━━━━━━━━━━┫"
echo -e "\e[35m    ┣━━━━━━━━━━━ Server IP $IP ━━━━━━━━━━━┫"

