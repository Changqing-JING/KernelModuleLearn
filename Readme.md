# Build
add 'source' to apt source list

```shell
echo "deb http://ddebs.ubuntu.com $(lsb_release -cs) main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list.d/ddebs.list
echo -e "deb http://ddebs.ubuntu.com $(lsb_release -cs)-updates main restricted universe multiverse\ndeb http://ddebs.ubuntu.com $(lsb_release -cs)-proposed main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list.d/ddebs.list
sudo apt update
sudo apt-get install pkg-config-dbgsym
sudo apt-get install libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf zfs-dkms kernel-wedge
apt-get source linux-image-unsigned-$(uname -r)
cd linux-hwe-5.11-5.11.0
LANG=C fakeroot debian/rules clean
#LANG=C fakeroot debian/rules binary-headers binary-generic binary-perarch skipdbg=false
AUTOBUILD=1 fakeroot debian/rules binary-generic skipdbg=false

```

https://edonymu.com/2021/05/21/linux-kernel-lsm-hook-technology/