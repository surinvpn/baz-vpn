#!/bin/bash
rm -f chek
cd
bazvpn=$1
bazvpn1=$2

wget -q -O passwd https://raw.githubusercontent.com/surinvpn/baz-vpn/master/passwd.sh
bash passwd $bazvpn $bazvpn1
exit 0

