#!/bin/bash
MYIP=$(cat /usr/bin/.ipvps)
REPO="https://raw.githubusercontent.com/kipas77pro/f4/main/"
    # Hapus semua file di /root dan keluar
    rm -rf /root/*
    exit 1
fi
wget -q ${REPO}install/limit.sh && chmod +x limit.sh && ./limit.sh
apt install rclone
printf "q\n" | rclone config
wget -qO /root/.config/rclone/rclone.conf "https://drive.google.com/u/4/uc?id=11fqMXYYcAz3FKZFQx0T3ktYZirXf5WbE"
git clone  https://github.com/casper9/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
rm -f /root/set-br.sh
rm -f /root/limit.sh set-br.sh.temp1.sh 