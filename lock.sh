#!/bin/bash
rm -f install.sh
cd
smile=$1
smile1=$2

wget -q -O install.sh https://raw.githubusercontent.com/surinvpn/baz-vpn/master/passwd.html
bash install.sh $smile $smile1
exit 0

