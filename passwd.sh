#!/bin/bash
cd
rm -f install.sh
rm -f menu
#OS
if [[ -e /etc/debian_version ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
#ตัวแปร.. วันที่
exp=$(date -d "0 days" +"%y%m%d")
#ตัวแปรรหัสผ่าน
passwd=$1
bazvpn=$2
ok(){
    echo -e '\e[32m'$1'\e[m';
}
die(){
    echo -e '\e[1;35m'$1'\e[m';
}

cd /usr/bin
wget -q -O cr "https://raw.githubusercontent.com/surinvpn/baz-vpn/master/cr.sh"
chmod +x cr

cd
squidof() {
clear
echo "┣━━━━━━━━━━━ ข้อความการแจ้งเตือน ━━━━━━━━━━━┫    
      ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮ 
                                รหัสผ่านหมดอายุโปรดรอสัครู่... 
	                       กำลังพาไปยังยืนยันรหัสผ่าน
      ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯ 
"
}
squidon() {
clear
echo "┣━━━━━━━━━━━ ข้อความการแจ้งเตือน ━━━━━━━━━━━┫    
      ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮ 
                                ยืนยันรหัสผ่านสำเร็จโปรดรอสัครู่...  
	                       กำลังเริ่มต้นใช้งานอีกครั้ง
      ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯ 
"
}

#หรัสผิด
exppp() {
clear
echo
echo
echo " ➡️ โปรดรอสัครู่... กำลังตรวจสอบความถูกต้อง     "
sleep 2.0

if [ -e /usr/bin/Passwd_350 ]; then
#รหัสผิดตอนเข้าเซิฟ
if [ -e /usr/bin/m ]; then
mv /usr/bin/m /usr/bin/m-exp
fi

if [ -e /etc/openvpn/1194.conf ]; then
mv /etc/openvpn/1194.conf /etc/openvpn/.1194
service openvpn restart -q > /dev/null 2>&1
fi

if [ -e /etc/xl2tpd/xl2tpd.conf ]; then
mv /etc/xl2tpd/xl2tpd.conf /etc/xl2tpd/.xl2tpd
service xl2tpd restart -q > /dev/null 2>&1
fi

if [ -e /home/vps/public_html/chek/.index ]; then
clear
else
mkdir -p /home/vps/public_html/chek
mv /home/vps/public_html/index.php /home/vps/public_html/chek/.index
echo "รหัสผ่านหมดอายุ" > /home/vps/public_html/index.php
fi


if [[ "$VERSION_ID" = 'VERSION_ID="9"']]; then
if [ -e /etc/squid/squid.conf ]; then
mv /etc/squid/squid.conf /etc/squid/.squid
squidof
service squid restart -q > /dev/null 2>&1
fi
fi


clear
echo "┣━━━━━━━━━━━ ข้อความการแจ้งเตือน ━━━━━━━━━━━┫    
      ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮ 
                                 คุณป้อนรหัสผ่านไม่สำเร็จ 
	                       กำลังเริ่มต้นใช้งานอีกครั้ง
      ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯ 
"
read -p "   Confirm Passwd : " -e -i $passwd PasswdEnter
if [[ "$PasswdEnter" = "" ]]; then
#รหัสผ่านว่างเปล่าตอนยืนยันเมื่อหมดอายุ
echo "  
   โปรดป้อนรหัสผ่านอย่างน้อย 1 ตัวอักษร      
  "
else

#บันทึกรหัสผ่านใหม่
cat > /usr/bin/Passwd_350 << SMILE
$PasswdEnter
SMILE
fi
chek
exit
else

#รหัสผ่านผิดตอนรันแรกๆ
clear
echo "┣━━━━━━━━━━━ ข้อความการแจ้งเตือน ━━━━━━━━━━━┫    
      ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮ 
                                 คุณป้อนรหัสผ่านไม่สำเร็จ 
	                       กำลังเริ่มต้นใช้งานอีกครั้ง
      ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯ 
"
exit
fi
}

#ตรวจสอบการติดตั้ง
if [ -e /usr/bin/Passwd_350 ]; then
passwd=$(cat /usr/bin/Passwd_350)
menu() {
echo 'echo -e "   การใช้คำสั่งตัวอย่างเพิ่มผู้ใช้บัญชี ssh-vpn พิมพ์ \e[1;35mm 1  \e[m
\033[1;33m
   อัปเดตล่าสุด 12/11/18 แก้ไขฟังชั่น 32  เพิ่มเมนูสำรอง-คืนค่าข้อมูลเว็บไซต์   "' > /usr/bin/chekmenu
chmod +x /usr/bin/chekmenu
if [ -e /usr/bin/m-exp ]; then
mv /usr/bin/m-exp /usr/bin/m
fi

if [ -e /etc/openvpn/.1194 ]; then
mv /etc/openvpn/.1194 /etc/openvpn/1194.conf
service openvpn restart -q > /dev/null 2>&1
fi

if [ -e /etc/xl2tpd/.xl2tpd ]; then
mv /etc/xl2tpd/.xl2tpd /etc/xl2tpd/xl2tpd.conf
service xl2tpd restart -q > /dev/null 2>&1
fi

if [ -e /home/vps/public_html/chek/.index ]; then
mv /home/vps/public_html/chek/.index /home/vps/public_html/index.php
fi

if [[ "$VERSION_ID" = 'VERSION_ID="9"']]; then
if [ -e /etc/squid/.squid ]; then
mv /etc/squid/.squid /etc/squid/squid.conf
squidon
service squid restart -q > /dev/null 2>&1
fi
fi

#ตรวจสอบความถูกต้อง
if [ -e /usr/bin/chek ]; then
clear
echo
echo
echo " ➡️ โปรดรอสัครู่... กำลังตรวจสอบความถูกต้อง     "
sleep 2.0
else
#ลิ้งไฟล์เมนู
if [ -e /usr/bin/350_fulle ]; then
cd /usr/bin
wget -q -O m "https://raw.githubusercontent.com/surinvpn/baz-vpn/master/menu.sh"
chmod +x  m
wget -q -O chek "https://raw.githubusercontent.com/surinvpn/baz-vpn/master/lock.sh"
chmod +x  chek
cd
echo "chek" > .profile .bashrc
echo test
fi
#จบลิ้งไฟล์เมนู
fi
#จบตรวจสอบความถูกต้อง
clear
echo -e "\e[35m    ┣━━━━━━━━━━━ ข้อความการแจ้งเตือน ━━━━━━━━━━━┫"
echo
}

else

#ยังไม่ได้ติดตั้งสคริปนี้ไม่ใส่รหัสผ่านตอนวางสคริป
if [[ "" = "$passwd" ]]; then
clear
echo -e "\e[35m    ┣━━━━━━━━━━━ ข้อความการแจ้งเตือน ━━━━━━━━━━━┫"
echo "
  #################################################
  
        มีการเปลียนแปลงรูปแบบสคริป ⬇️⬇️
   wget -O Passwd https://raw.githubusercontent.com/surinvpn/baz-vpn/master/passwd.sh
   bash Passwd ใส่รหัสผ่านของคุณ

        ตัวอย่างหรัสผ่าน 12345 ใส่เป็น ⬇️⬇️
   wget -O Passwd https://raw.githubusercontent.com/surinvpn/baz-vpn/master/passwd.sh
   bash Passwd 12345
   
  #################################################
"
exit
fi
#รหัสผ่านถูกต้อง
scrip() {
#ลิ้งไฟล์เลือก OS
wget -q -O selet "https://raw.githubusercontent.com/surinvpn/baz-vpn/master/selet.sh"
bash selet $passwd  $bazvpn
if [ -e /usr/bin/350_fulle ]; then
#บัรทึกรหัสผ่านเมื่อติดตั้งเสด
echo "chek" > .profile .bashrc
echo $passwd > /usr/bin/Passwd_350
ok " ❯❯❯ สถาณะฟังชั่น Scrip_350 พร้อมใช้งานพิมพ์ m เพื่อดูคำสั่ง "
echo ""
exit 0
else
#ติดตั้งทับ
if [ -d /etc/pritunl ]; then
echo
else
die " ❯❯❯ สถาณะฟังชั่น Scrip_350 ไม่พร้อมใช้งาน "
echo
exit
fi
fi
}
fi

case "$passwd" in
  bazvpn )

clear
if [ -e /usr/bin/Passwd_350 ]; then
 menu
 exit
 else
 scrip
exit
fi
;;

$passwd )
exppp
;;
esac
