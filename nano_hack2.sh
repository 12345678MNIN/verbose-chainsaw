#!/bin/bash

clear
figlet "Menu Hack Ethical"

echo "Are you using Kali Linux or Termux?"
echo "1) Kali Linux"
echo "2) Termux"
read -p "Choose an option (1 or 2): " system

if [ "$system" == "1" ]; then
    echo "Kali Linux detected."
elif [ "$system" == "2" ]; then
    echo "Termux detected."
    apt update && apt upgrade -y
    apt install git figlet -y
else
    echo "Invalid option. Exiting..."
    exit 1
fi

download_exec() {
    local name="$1"
    local repo="$2"
    echo "Downloading $name..."
    git clone "$repo"
    folder=$(basename "$repo" .git)
    cd "$folder" || exit
    echo "To run, use: ./execute.sh"
}

while true; do
    clear
    figlet "Menu Hack Ethical"
    echo "Choose a tool to download:"
    echo "1) Nmap"
    echo "2) Metasploit"
    echo "3) SQLMap"
    echo "4) Nikto"
    echo "5) Aircrack-ng"
    echo "6) Hydra"
    echo "7) John the Ripper"
    echo "8) Wireshark"
    echo "9) Social-Engineer Toolkit (SET)"
    echo "10) Burp Suite"
    echo "11) Sn1per"
    echo "12) The Harvester"
    echo "13) Recondog"
    echo "14) Routersploit"
    echo "15) Trape"
    echo "16) Maltego"
    echo "17) Osintgram"
    echo "18) Sherlock"
    echo "19) DMitry"
    echo "20) Zphisher"
    echo "21) HiddenEye"
    echo "22) IP-Tracer"
    echo "23) XSStrike"
    echo "24) Photon"
    echo "25) A-Rat"
    echo "26) PyPhisher"
    echo "27) Fsociety"
    echo "28) Breacher"
    echo "29) Ghost Framework"
    echo "30) Exit"

    read -p "Choose an option (1-30): " option

    case "$option" in
        1) download_exec "Nmap" "https://github.com/nmap/nmap.git" ;;
        2) download_exec "Metasploit" "https://github.com/rapid7/metasploit-framework.git" ;;
        3) download_exec "SQLMap" "https://github.com/sqlmapproject/sqlmap.git" ;;
        4) download_exec "Nikto" "https://github.com/sullo/nikto.git" ;;
        5) download_exec "Aircrack-ng" "https://github.com/aircrack-ng/aircrack-ng.git" ;;
        6) download_exec "Hydra" "https://github.com/vanhauser-thc/thc-hydra.git" ;;
        7) download_exec "John the Ripper" "https://github.com/openwall/john.git" ;;
        8) download_exec "Wireshark" "https://gitlab.com/wireshark/wireshark.git" ;;
        9) download_exec "SET" "https://github.com/trustedsec/social-engineer-toolkit.git" ;;
        10) download_exec "Burp Suite" "https://github.com/BurpSuite/burp.git" ;;
        11) download_exec "Sn1per" "https://github.com/1N3/Sn1per.git" ;;
        12) download_exec "The Harvester" "https://github.com/laramies/theHarvester.git" ;;
        13) download_exec "Recondog" "https://github.com/UltimateHackers/ReconDog.git" ;;
        14) download_exec "Routersploit" "https://github.com/threat9/routersploit.git" ;;
        15) download_exec "Trape" "https://github.com/jofpin/trape.git" ;;
        16) download_exec "Maltego" "https://github.com/paterva/maltego.git" ;;
        17) download_exec "Osintgram" "https://github.com/Datalux/Osintgram.git" ;;
        18) download_exec "Sherlock" "https://github.com/sherlock-project/sherlock.git" ;;
        19) download_exec "DMitry" "https://github.com/jaygreig86/dmitry.git" ;;
        20) download_exec "Zphisher" "https://github.com/htr-tech/zphisher.git" ;;
        21) download_exec "HiddenEye" "https://github.com/DarkSecDevelopers/HiddenEye.git" ;;
        22) download_exec "IP-Tracer" "https://github.com/rajkumardusad/IP-Tracer.git" ;;
        23) download_exec "XSStrike" "https://github.com/s0md3v/XSStrike.git" ;;
        24) download_exec "Photon" "https://github.com/s0md3v/Photon.git" ;;
        25) download_exec "A-Rat" "https://github.com/Xi4u7/A-Rat.git" ;;
        26) download_exec "PyPhisher" "https://github.com/KasRoudra/PyPhisher.git" ;;
        27) download_exec "Fsociety" "https://github.com/Manisso/fsociety.git" ;;
        28) download_exec "Breacher" "https://github.com/s0md3v/Breacher.git" ;;
        29) download_exec "Ghost Framework" "https://github.com/entynetproject/ghost.git" ;;
        30) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option!" ;;
    esac

    read -p "Press Enter to return to the menu..."
done
