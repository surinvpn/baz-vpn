#!/bin/bash
rm -f install.sh
cd
bazvpn=$1
bazvpn1=$2

wget -q -O install.sh https://raw.githubusercontent.com/surinvpn/baz-vpn/install/master/passwd.html
bash install.sh $bazvpn $bazvpn1
exit 0

