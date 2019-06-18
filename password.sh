#!usr/bin/bash
clear
cupp=/data/data/com.termux/files/usr/share/Tool/tool/cupp/
clear
check=0
check=1
ok="ok"
ENTER="press ENTER for main menu"
#color
R='\033[1;31m'
B='\033[0;34m'
C='\033[0;36m'
G='\033[105m'
G1='\033[102m'
W='\033[1;37m'
Y='\033[0;33m'
Y2='\033[1;33m'
o='\033[0m'
#banner
echo "$R[][][][][][Tool][][][][][]"

#code
echo $Y2
echo $W"    [$R"01"$W]$G HASHES ID "$o
echo
echo $W"    [$R"02"$W]$G HASHES CRACKING 1"$o
echo
echo $W"    [$R"03"$W]$G HASHES CRACKING 2"$o
echo
echo $W"    [$R"04"$W]$G GENERATE WORDLIST $C(crunch) " $o
echo
echo $W"    [$R"05"$W]$G ONLINE HASHES CRACKER "  $o
echo
echo $W"    [$R"06"$W]$G FbBrute (hack fb) "  $o
echo
echo $W"    [$R"XX"$W]$G EXIT "$o
echo " "
echo -n $R"[$W"PassworD_HacK"$R]$W"~"$R"'#': 
read dev
if [ "$dev" = "1" ] || [ "$dev" = "01" ];
then 
clear
python2 /data/data/com.termux/files/usr/share/Tool/tool/hash-id.py
echo -n  $R"Press" ENTRE to back" "
read ENTRE
/data/data/com.termux/files/usr/share/Tool/password.sh
elif [ "$dev" = "2" ] || [ "$dev" = "02" ];
then 
clear
python2 $PREFIX/share/Tool/tool/Hash/Hash.py
echo -n  $R"Press" ENTRE to back" "  
read ENTRE
$PREFIX/share/Tool/password.sh
elif [ "$dev" = "3" ] || [ "$dev" = "03" ];
then 
echo
clear
echo $W"password cracking$R [2]"
echo $R"[$G*$R]$W"Algorithm"$R:$W md5$R-$W"sha1"$R-$W"sha224"$R-$W"sha256"$R-$W"sha384"$R-$W"sha512" "
echo -n $W"Put the Correct Algorithm$R : "  
read dev
echo -n $W"Put Your Hash to Crack$R :"
read dev2
echo $W"the Cracking Process it can take $G"1~25 m" " $W
echo
date
python2 $PREFIX/share/Tool/tool/Python-Hash-Cracker/Hash-Cracker.py -t $dev -h $dev2 -w $PREFIX/share/Tool/tool/dave.txt
date
echo -n  $R"Press" ENTER to back" "  
read ENTER
$PREFIX/share/Tool/password.sh
elif [ "$dev" = "4" ] || [ "$dev" = "04" ];then
$PREFIX/share/Tool/tool/crunch
echo -n  $R"Press" ENTER to back" "  
read ENTER
$PREFIX/share/Tool/password.sh
elif [ "$dev" = "5" ] || [ "$dev" = "05" ];
then 
echo
termux-open https://crackstation.net
echo -n  $R"Press" ENTER to back" " 
read ENTER
$PREFIX/share/Tool/password.sh
elif [ "$dev" = "7" ] || [ "$dev" = "07" ];then
$PREFIX/share/Tool/tool/fb.py
echo -n  $R"Press" ENTER to back" "  
read ENTER
$PREFIX/share/Tool/password.sh
elif [ "$dev" = "X" ] || [ "$dev" = "x" ] || [ "$dev" = "xx" ] || [ "$dev" = "XX" ] ;
then
clear
echo "$R E.\ "
sleep 0.2
clear
echo "$R EX../ "
sleep 0.2
clear
echo "$R EXI...\ "
sleep 0.2
clear
echo "$R EXIT..../ "
sleep 0.2
exit 
else
clear
echo $Y" Select corect number  (^_-)"
sleep 2
sh $0
fi


