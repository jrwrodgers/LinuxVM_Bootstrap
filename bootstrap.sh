# Define some colors for quick use...
COLOR_RED=$(tput setaf 1)
COLOR_GREEN=$(tput setaf 2)
COLOR_YELLOW=$(tput setaf 3)
COLOR_BLUE=$(tput setaf 4)
COLOR_MAGENTA=$(tput setaf 5)
COLOR_CYAN=$(tput setaf 6)
COLOR_WHITE=$(tput setaf 7)
BOLD=$(tput bold)
COLOR_RESET=$(tput sgr0)

INSTALL_USER=$(whoami)

function echo_red(){
	echo "${COLOR_RED}${BOLD}$1${COLOR_RESET}"
}

function echo_green(){
	echo "${COLOR_GREEN}${BOLD}$1${COLOR_RESET}"
}

function echo_yellow(){
	echo "${COLOR_YELLOW}${BOLD}$1${COLOR_RESET}"
}

function echo_magenta(){
	echo "${COLOR_MAGENTA}$1${COLOR_RESET}"
}


function apt_install () {
	echo_magenta "Installing: $1"
	sudo apt-get -y install $1 > $1.install_log
	echo_green "....Done"
}




## Apt-install progs
sudo apt-get update

##Ubuntu
sudo apt install net-tools
#sudo apt install indicator-multiload
#sudo apt-get install chrome-gnome-shell
#sudo apt install gir1.2-gtop-2.0 lm-sensors


##OpenVPN
sudo apt-get -y install openvpn

##Docker
sudo apt-get -y install docker
sudo apt-get -y install docker.io

##Vagrant
sudo apt-get -y install vagrant

##Terminator
sudo apt-get -y install terminator

##Remmina
sudo apt-get -y install remmina

##Git
sudo apt-get -y install git

##Python
sudo apt-get -y install python2
sudo apt-get -y install python3
##Sort out alias to python3 as python


##Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get -y install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get -y install sublime-text

sublime_settings="/home/james/.config/sublime-text/Packages/User/Preferences.sublime-settings"
echo $sublime_settings
echo "{" > $sublime_settings
echo "\"update_check\": false" >> $sublime_settings
echo "}" >> $sublime_settings


## Main Hacking tool
sudo apt-get -y install nmap
sudo apt-get -y install gobuster
sudo apt-get -y install nikto
sudo apt-get -y install ffuf

###Hacking tools from Kali library
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
rm archive-key.asc

sudo sh -c "echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list"
sudo apt-get update

sudo apt-get -y install hashcat

sudo apt-get -y install john
sudo apt-get -y install hydra

sudo apt-get -y install wordlists
sudo apt-get -y install seclists
sudo mv /usr/share/seclists/ /usr/share/wordlists/seclists/

sudo apt-get -y install smbmap

sudo apt-get -y install gdb
sudo apt-get -y install radare2
sudo apt-get -y install ghidra

sudo rm /etc/apt/sources.list.d/kali.list

sudo apt-get update

## Hacking Tools with Github libraries
##Linpeas
##curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
sudo git clone https://github.com/offensive-security/exploit-database.git /opt/exploit-database
sudo ln -sf /opt/exploit-database/searchsploit /usr/local/bin/searchsploit


## Get docker apps

##Rust scan?
sudo docker pull rustscan/rustscan:1.10.0
alias rustscan='sudo docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'

##Setup tools
mkdir /home/$INSTALL_USER/Tools
mkdir /home/$INSTALL_USER/Scripts
mkdir /home/$INSTALL_USER/Wordlists

##Sort out links


## Extras

sudo apt-get -y install figlet
sudo apt-get -y install lolcat

#install foxyproxy

## Sort out desktop


##
