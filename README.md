# - 
копируете все директории-каталоги и перемещаете в те название файлов которэе ниже написал
freedomUI-root - файл хранение ядра и образа
freedomUI - файл хранения ядра,образа и файл qemu для запуска
freedomISO - этот файл не особо нужен
 если что-то не нравится,скачивайте ядро 6.8.1 по команде wget https://www.kernel.org/pub/linux/kernel/v6.x/linux-6.8.1.tar.xz
открэваете make menuconfig делаете под себя и радуйтесь 
tar -xf linux-6.8.1.tar.xz
cd linux-6.8.1
make menuconfig
make
sudo make modules_install
sudo make install
но нужно будет скачать make, gcc, libncurses-dev 
ubuntu 
sudo apt update
sudo apt install build-essential libncurses-dev bison flex libssl-dev libelf-dev bc -y
arch
sudo pacman -Syu --needed base-devel ncurses bc openssl elfutils
fedora и другие на базе dnf
sudo dnf groupinstall "Development Tools" -y
sudo dnf install ncurses-devel bison flex elfutils-libelf-devel openssl-devel bc -y
OpenSUSE
sudo zypper install -t pattern devel_C_C++ ncurses-devel bison flex elfutils-libelf-devel openssl-devel bc
после установка 
tar -xf linux-6.8.1.tar.xz
cd linux-6.8.1
make menuconfig   # настройка ядра
make -j$(nproc)   # сборка с использованием всех ядер процессора
sudo make modules_install
sudo make install
