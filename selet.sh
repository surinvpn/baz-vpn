#!/bin/bash
rm -f selet
if [[ $(id -g) != "0" ]] ; then
    echo ""
    echo "❯❯❯ สั่งรูทคำสั่ง [ sudo -i ] ก่อนรันสคริปนี้  "
    echo ""
    exit
fi
bazvpn=$2

if [[  ! -e /dev/net/tun ]] ; then
    echo "TUN/TAP device is not available."
fi
cd
if [[ -e /etc/debian_version ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
if [[ -e /etc/yum ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
IP=$(wget -qO- ipv4.icanhazip.com);

scrip="https://raw.githubusercontent.com/surinvpn/baz-vpn/master"

if [[ $bazvpn == "" ]]
then
clear
cr
echo "    ╭━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ เลือกระบบที่จะติดตั้ง Scrip      "
echo "    ╰━━━┳━━━━━━━━━━━┳━━━╯"
echo "    ╭━━━┻━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┃ ใส่ตัวเลขแล้วกด enter"
echo "    ┣━━━━━━━━━━━━━━━━━╯"
echo "    ┣ 1. OpenVPN Debian 9     "
echo "    ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
read -p "    ╰━━ Namber : " opcao
else
opcao=$bazvpn
fi

case $opcao in
 1 | 01 )
 
if [[ "$bazvpn" = "" ]]; then
clear
else
clear
cr
echo "        ╭━━━━━━━━━━━━━━━━━━━━━━━╮ 
        ┣ แน่ใจคุณต้องการรันระบบ OpenVPN    
        ┣━━━━━━━━━━━━━━━━━━━━━━━╯   "
    read -p "        ╰━━ ( Y/n ) : " Confirn
    if [[ "$Confirn" = "y" || "$Confirn" = "Y" ]]; then
    clear
    else
 wget -q -O selet "https://raw.githubusercontent.com/surinvpn/baz-vpn/master/selet.sh"
bash selet
exit 0
    fi
fi
if [[ "$VERSION_ID" = 'VERSION_ID="9"' ]]; then
cd
wget -q -O open-bazvpn "$scrip/open-bazvpn.sh"
bash open-bazvpn
exit
fi
echo ""
echo " openvpn รันได้แค่ OS debian9"
echo ""
exit
;;
$opcao )
clear
cr
echo "        ╭━━━━━━━━━━━━━━━━━━━╮ 
        ┣ โปรดพิมพ์คำสั่งให้ถูกต้อง
        ╰━━━━━━━━━━━━━━━━━━━╯
 "
exit 0
;;
 esac
 


