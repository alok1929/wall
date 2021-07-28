#! /bin/bash

#DESCRIPTION OF THE SCRIPT 

echo "
for surfing da web - chrome or brave 

for video and photo player - vlc and shotwell 

for SYSTEM MANAGEMENT - htop 

for EDITING TEXTS - neovim or sublime text or vscode or all three of them

for OFFICE AND SCHOOL - zoom and teams and spotify for 64 bit version,and

for COMMUNICATION - discord and signal"

##ENDS HERE
	echo "NOTE - SPEED OF SCRIPT WILL DEPEND ON YOUR NET CONNECTION"
#BROWSER STARTS HERE
	echo "install browser: choose [1-3]:"
echo "1-chrome 2-brave"
read varnumber

# variable-declaration

num="1"
RED='\033[0;31m'
NC='\033[0m' # No Color
num2="2"

numero1="1"
numero2="2"
numero3="3"
numero4="4"



if [ $varnumber -eq $num ];
then 
	echo -e "  GETTING LINK OF CHROME-BROWSER "
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &> /dev/null
	echo -e "  INSTALLING CHROME-BROWSER"
	sudo dpkg -i google-chrome-stable_current_amd64.deb
	echo -e "{RED}INSTALLED CHROME-BROWSER{RED}"
fi

if [ $varnumber -eq $num2 ];
then 
	echo -e " ${RED}INSTALLING TOOLS TO DOWNLOAD BRAVE ${RED}"
	sudo apt install apt-transport-https curl &> /dev/null

	echo -e " ${RED}ADDING KEYRING ${RED}"
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null
	
	echo -e " ${RED}ADDING REPO TO APT SOURCES ${RED}"
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list &> /dev/null
	echo -e " ${RED}NOW UPDATING AND INSTALLING BRAVE${RED}"
	sudo apt update &> /dev/null
	sudo apt install brave-browser
	echo "installed brave-browser"
fi

#video and photo player starts here
echo "installing vlc(vlc is too big)"
sudo apt install vlc &> /dev/null
echo -e "${RED}INSTALLED VLC${RED}"

echo "installing shotwell"
sudo apt install shotwell &> /dev/null
echo -e "${RED}installed shotwell${RED}"

#htop starts here

echo "installing htop and its done also"
sudo apt install htop &> /dev/null
echo -e "${RED}installed htop${RED}"
#EDITIORS STARTS HERE

echo "install neovim OR install sublime-text OR install vs-code"
echo "type a number :(1)-neovim (2)-sublime-text (3)-vs-code (4)-all three(if you are maniac)"
read editornum
if [ $editornum -eq $numero1 ];
then
	echo "INSTALLING NEOVIM"
	sudo apt install neovim &> /dev/null
	echo "DONE installing neovim"
fi

if [ $editornum -eq $numero2 ];
then
	echo "INSTALLING SUBLIME-TEXT"
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	echo "now updating apt sources and installing sublime-text-3"
	sudo apt-get update
	sudo apt-get install sublime-text
	echo "DONE installing SUBLIME-TEXT-3"
fi

if [ $editornum -eq $numero3 ];then
	echo "installing vs-code"
	sudo apt update &> /dev/null
	sudo apt install software-properties-common apt-transport-https &> /dev/null
	echo "getting required files-->"
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ &> /dev/null
	sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main"
	 > /etc/apt/sources.list.d/vscode.list'
	echo "now updating and installing vs-code"
	sudo apt update &> /dev/null
	sudo apt install code &> /dev/null
	echo "DONE installing vs-code"
fi

if [ $editornum -eq $numero4 ];then
	echo "INSTALLING NEOVIM"
         sudo apt install neovim &> /dev/null
         echo "DONE installing neovim"

	 echo "INSTALLING SUBLIME-TEXT"
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https &> /dev/null
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	echo "now updating apt sources and installing sublime-text-3"
	sudo apt-get update &> /dev/null
	sudo apt-get install sublime-text &> /dev/null
	echo "DONE installing SUBLIME-TEXT-3"

	echo "installing vs-code"
	sudo apt update &> /dev/null
	sudo apt install software-properties-common apt-transport-https &> /dev/null
	echo "getting required files-->"
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg 
	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	echo "now updating and installing vs-code"
	sudo apt update &> /dev/null
	sudo apt install code &> /dev/null
	echo "DONE installing vs-code"
	echo "done installing neovim and sublime-text-3 and vs-code"
fi

# zoom , teams ,and spotify and signal and discord starts here

echo "installing discord"
wget https://dl.discordapp.net/apps/linux/0.0.15/discord-0.0.15.deb &> /dev/null
sudo gdebi discord-0.0.15.deb 
echo "installed discord"

echo "installing zoom"
wget https://zoom.us/client/latest/zoom_amd64.deb &> /dev/null
sudo gdebi zoom_amd64.deb
echo "installed zoom"

echo "installing signal"
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg 
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg &> /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\sudo tee -a /etc/apt/sources.list.d/signal-xenial.list &> /dev/null

echo "installing spotify"
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - &> /dev/null
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list &> /dev/null
sudo apt-get update && sudo apt-get install spotify-client &> /dev/null
echo "installed spotify"

	echo -e "${NC} type ./install.sh in terminal again to run"

