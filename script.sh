#!/bin/bash

plain='\033[0m'

red='\e[31m'
yellow='\e[33m'
gray='\e[90m'
green='\e[92m'
blue='\e[94m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'
# Font Size
# h6 = SMALL , h4 = AVERAGE , h3 = LARGE
# Check Root
[[ $EUID -ne 0 ]] && echo -e "${red}Error: ${plain} You must use root user to run this script!\n" && exit 1

sed -i 's/#\?AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config && sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && sed -i 's/#\?Banner .*/Banner \/etc\/ssh\/gcp_834/' /etc/ssh/sshd_config && /etc/init.d/ssh restart;
echo "
<h3><font color='white'>▬▬▬▬▬▬MYANMAR▬▬▬▬▬▬
</font></h3>

<h3><font color='yellow'>--- ۩ GOOGLE SERVER ۩ ---
</font></h3>

<h3><font color='green'>--- ۩ SERVER BY KOK834 ۩ ---
</font></h3>

<h4><font color='red'>--- ۩ https://t.me/KOKHANT834 ۩ ---
</font></h4>

<h3><font color='white'>▬▬▬▬▬▬BURMESE▬▬▬▬▬▬
</font></h3>" | tee /etc/ssh/gcp_834 >/dev/null
useradd "kok834" --shell=/bin/false -M
echo "kok834:kok834" | chpasswd


