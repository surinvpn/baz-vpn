rm -f install
clear
cd
#<BODY text='ffffff'>
#<center><font color="#002BC2"><b> <h1>WELLCOM SCRIP</h1></b></font></center>
webpanel="https://raw.githubusercontent.com/surinvpn/baz-vpn/master"
#<center><font color="#FF0043"><b> <h1>==== VIEW MENU ====</h1></b></font></center>
#<font color="#00B9FF"><ul> { 01 } สร้างบัญชี SSH & VPN</font>
#</ul><font color="#FF0028"><ul> { 02 } สร้างบัญชีทดลองใช้ได้ถึ่งเที่ยงคืน</font>
#</ul><font color="#FF7C00"><ul> { 03 } เปลียนชื่อและรหัสผ่าน SSH & VPN</font>
#</ul><font color="#FF4A00"><ul> { 04 } เปลียนวันหมดอายุ</font>
#</ul><font color="#FF1400"><ul> { 05 } ลบบัญชี SSH & VPN</font>
#</ul><font color="#FF0056"><ul> { 06 } ลบบัญชีหมดอายุอัตโนมัต</font>
#</ul><font color="#FF0088"><ul> { 07 } ดูผู้ใช้ทั้งหมดและที่ใช้งานอยู่</font>
#</ul><font color="#FF00A0"><ul> { 08 } รีสตาร์ตระบบต่างๆ </font>
#</ul><font color="#EB00FF"><ul> { 09 } เทสความเร็ว VPS</font>
#</ul><font color="#B500FF"><ul> { 10 } ดูแบนวิทที่ใช้งานตั้งแต่รีบูตเครื่อง</font>
#</ul><font color="#8800FF"><ul> { 11 } รายละเอียดการใช้งาน</font>
#</ul><font color="#8200FF"><ul> { 12 } รายละเอียด vps</font>
#</ul><font color="#3700FF"><ul> { 13 } แบนผู้ใช้</font>
#</ul><font color="#0063FF"><ul> { 14 } ปลดแบน</font>
#</ul><font color="#001AFF"><ul> { 15 } ตั้งเวลาหรือปิดใช้งานรีบูตอัตโนมัต</font>
#</ul><font color="#FF00F9"><ul> { 16 } สำรองและคืนค่าชื่อผู้ใช้</font>
#</ul><font color="#FF6600"><ul> { 17 } เปลียนรหัสและตั้งให้เป็นชื่อ root</font>
#</ul><font color="#3700FF"><ul> { 18 } เชดการใช้งานแบนวิท </font>
#</ul><font color="#FF0088"><ul> { 19 } ลบผู้ใช้ทั้งหมด </font>
#</ul><font color="#FF00A0"><ul> { 20 } เช็ดผู้ใช้ที่หมดอายุ</font>
#</ul><font color="#EB00FF"><ul> { 21 } ดาวน์โหลดไฟล์ ovpn </font>
#</ul><font color="#B500FF"><ul> { 22 } จำกัดความเร็วอินเตอเน็ต</font>
#</ul><font color="#B500FF"><ul> { 23 } เช็ดแบนวิทของแต่ละ user</font>
#</ul><font color="#3700FF"><ul> { 24 } ลิ้งต่างๆ </font>
#</ul><font color="#FF0088"><ul> { 25 } จัดการสะบบ pptp </font>
#</ul><font color="#FF00F9"><ul> { 26 } เช็ดวันหมดอายุค้นหาด้วยชื่อ </font>
#</ul><font color="#FF6600"><ul> { up } ตรวจสอบอัปเดต </font>
#</ul><font color="#FF5C00"><ul> { reboot } รีบูตเครื่อง VPS</font>
#</ul><font color="#FF0033"><ul> { exit } ออกจากเครื่อง</ul></font>
wget -q -O lock "$webpanel/lock.sh" 
chmod +x lock && ./lock $1 $2