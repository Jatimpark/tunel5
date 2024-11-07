#!/bin/bash

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
clear
if [ ! -e /usr/local/bin/backup_otomatis ]; then
echo '#!/bin/bash' > /usr/local/bin/backup_otomatis 
echo 'tanggal=$(date +"%m-%d-%Y")' >> /usr/local/bin/backup_otomatis 
echo 'waktu=$(date +"%T")' >> /usr/local/bin/backup_otomatis 
echo 'echo "Sucsesfully Backup On $tanggal Time $waktu." >> /root/log-backup.txt' >> /usr/local/bin/backup_otomatis 
echo '/usr/local/sbin/backer -r now' >> /usr/local/bin/backup_otomatis 
chmod +x /usr/local/bin/backup_otomatis
fi
clear
echo -e ""
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m           MENU MANAGER AUTOBACKUP        $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${green}1.${NC} \033[0;36mSet Auto-Backup 1 Hour Period"
echo -e "\033[1;93m│  ${green}2.${NC} \033[0;36mSet Auto-Backup 6 Hour Period"
echo -e "\033[1;93m│  ${green}3.${NC} \033[0;36mSet Auto-Backup 12 Hour Period"
echo -e "\033[1;93m│  ${green}4.${NC} \033[0;36mSet Auto-Backup 1 Day Period"
echo -e "\033[1;93m│  ${green}5.${NC} \033[0;36mSet Auto-Backup 1 Week Period"
echo -e "\033[1;93m│  ${green}6.${NC} \033[0;36mSet Auto-Backup 1 Month Period"
echo -e "\033[1;93m│  ${green}7.${NC} \033[0;36mDeactivate Auto-Backup"
echo -e "\033[1;93m│  ${green}8.${NC} \033[0;36mSee Backup Log"
echo -e "\033[1;93m│  ${green}9.${NC} \033[0;36mDelete Backup Log"
echo -e "\033[1;93m│  $NC "
echo -e "\033[1;93m│  ${green}0.${NC} \033[0;36mBACK TO EXIT MENU \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m$NC \E[0m\033[0;34m "
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo
read -p " Select menu : " opt
echo -e ""
case $opt in
1 | 01)
clear
echo "57 * * * * root /usr/local/bin/backup_otomatis" > /etc/cron.d/backup_otomatis
echo -e "Auto-Backup Sucsesfully Set By \e[32m1 Hour Period\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
2 | 02)
clear
echo "10 */6 * * * root /usr/local/bin/backup_otomatis" > /etc/cron.d/backup_otomatis
echo -e "Auto-Backup Sucsesfully Set By \e[32m6 Hour Period\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
3 | 03)
clear
echo "10 */12 * * * root /usr/local/bin/backup_otomatis" > /etc/cron.d/backup_otomatis
echo -e "Auto-Backup Sucsesfully Set By \e[32m12 Hour Period\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
4 | 04)
clear
echo "0 0 * * * root /usr/local/bin/backup_otomatis" > /etc/cron.d/backup_otomatis
echo -e "Auto-Backup Sucsesfully Set By \e[32m1 Day Period\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
5 | 05)
clear
echo "10 0 */7 * * root /usr/local/bin/backup_otomatis" > /etc/cron.d/backup_otomatis
echo -e "Auto-Backup Sucsesfully Set By \e[32m1 Week Period\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
6 | 06)
clear
echo "10 0 1 * * root /usr/local/bin/backup_otomatis" > /etc/cron.d/backup_otomatis
echo -e "Auto-Backup Sucsesfully Set By \e[32m1 Month Period\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
7 | 07)
clear
rm -f /etc/cron.d/backup_otomatis
echo -e "Auto-Backup Sucsesfully \e[31mDeactivated ..!\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
8 | 08)
clear
if [ ! -e /root/log-backup.txt ]; then
	echo "No Activity Found"
  echo -e "\033[1;93m======================================\033[0m"
	else 
	#echo ' LOG BACKUP |'
	echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m               LOG TIME BACKUP            $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
	echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
cat /root/log-backup.txt
 echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
 echo -e "\033[1;93m======================================\033[0m"
fi
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
9 | 09)
clear
echo "" > /root/log-backup.txt
echo -e "Auto backup Log Sucsesfully \e[31mDeleted ..!\e[0m"
echo -e "\033[1;93m======================================\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
autobackup
;;
0 | 00)
clear
menu
;;
x)
exit
;;
*)
echo -e ""
autobackup
;;
esac
