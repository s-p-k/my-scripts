#!/bin/sh
echo "--------------------------------------------------------------------------------"
echo "Printing System Info"
echo "--------------------------------------------------------------------------------"

os=$(cat /etc/os-release | head -n 1 | cut -d\  -f1,2 | sed -e 's/NAME=//' -e 's/\"//g')

snd=$(lspci | grep Audio | tail -n 1 | cut -d\  -f12-15 | sed -e 's/\[//' -e 's/\]//')

memtotal=$(free -m | head -n 2 | tail -n 1 | cut -d\  -f1-11 | cut -d\  -f11)

memavail=$(free -m | head -n 2 | tail -n 1 | cut -d\  -f25)
vga=$(lspci| grep VGA | cut -d\  -f11-14 | sed -e 's/\[//' -e 's/\]//')
krnl=$(uname -sr)

echo "OS              : $os" 
echo "Kernel          : $krnl"
echo "VGA             : $vga"
echo "Audio           : $snd"
echo "Avl.  Memory    : $memavail MB"
echo "Total Memory    : $memtotal MB"
echo "--------------------------------------------------------------------------------"

