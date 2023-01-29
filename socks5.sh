# Illegal selling and redistribution of this script is strictly prohibite
# Please respect author's Property
# Binigay sainyo ng libre, ipamahagi nyo rin ng libre.
#
#

# Account
User='nohit22'
Pw='nohit22'

# Install AutoScript
sudo apt update
sudo apt install dante-server

function removedante() {
sudo rm /etc/danted.conf
}
removedante

function adddante() {
wget -qO /etc/danted.conf https://raw.githubusercontent.com/kagutom/Prj/main/danted.conf
dos2unix -q /etc/danted.conf
}
adddante
sudo ufw allow 1080

function acc() {
sudo useradd -r -s /bin/false $User
sudo passwd $User