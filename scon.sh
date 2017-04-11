#!/bin/sh
# scon.sh

# --------------- to do ---------------------- 
# abfrage auf wol option + wol befehl absetzen
# input auf wörter-optionen umstellen
# ./master.sh -w nas	| wol nas
# ./master.sh -s server	| ssh connect to server

# ------------------ setting variables
usage="verbindung interner ssh server, sudo shutdown -h now"
port="4242"
usr="volker"
unset options

# ------------------ asking for user input
while getopts "dlsnvwxt" options; do
  case $options in
    d ) target="192.168.x.xxx"
	vname="stube (dachboden)"
	usr="stube";;
    l ) target="192.168.x.xxx"
	vname="lappie";;
    s ) target="192.168.x.xxx"
	vname="server";;
    n ) target="192.168.x.xxx"
	port="22";
	vname="nas";;
#	usr="vnas";;
    v ) target="192.168.x.xxx"
	vname="pc";;
    w ) echo "wake up nas eth1!"
	wakeonlan 00:01:02:03:04:f5
#    w ) echo "waaaakeeee uuuuupppp xtreamer!!!"
        exit 0;;	
    t ) target="192.168.x.xxx"
	vname="pc2";;
    x ) target="192.168.x.xxx"
	vname="xtreamer"
	port="22"
	usr="root";;
    * ) echo "option $options  gesetzt";;
   \? ) echo $usage;;
#        ;;
  esac
done

# ------------------ intro movie ^^
sh ./intro.sh

echo connecting to $vname : $target, port $port 
sh ./planet.sh
ssh -X -p $port $usr@$target


