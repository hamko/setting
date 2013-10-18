su

yes | sudo apt-get install aptitude
yes | sudo aptitude install git gitk 
yes | sudo aptitude install subversion
yes | sudo aptitude install valgrind
yes | sudo aptitude install libboost-all-dev
yes | sudo aptitude install gnuplot
yes | sudo aptitude install minicom
yes | sudo aptitude install cmake-curses-gui
yes | sudo aptitude install octave3.2 octave3.2-headers octave3.2-htmldoc

####CPPUNIT
sudo aptitude install libcppunit-1.12-1     libcppunit-dev     libcppunit-doc     libcppunit-subunit-dev    libcppunit-subunit0    libqxcppunit-dev   libqxcppunitd1  

####PCL
yes | sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
yes | sudo apt-get update
yes | sudo apt-get install libpcl-all

####ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-groovy-desktop-full
source /opt/ros/groovy/setup.bash
##Catkin workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make
source devel/setup.bash

####armadillo
#sudo aptitude install libblas-dev liblapack-dev
#http://sourceforge.net/projects/arma/files/armadillo-3.4.2.tar.gz/download からとってくる.
#cd ~/Download
#tar xvf armadillo-3.4.2.tar.gz
#cd armadillo-3.4.2
#./configure --prefix=/usr/local
#make
#sudo make install

####OpenGL
#Couldn't find any package whose name or description matched "libglut3-dev"
sudo aptitude install freeglut3-dev freeglut3-dbg  libglut3-dev libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev build-essential

####Eigen
#http://eigen.tuxfamily.org/index.php?title=Main_Pageから最新版のソースをダウンロードする．
#/home/Downloadsに，tar.gz形式で落としたと仮定すると，
#cd ~/Downloads
#tar xvf ~/Downloads/eigen-******.tar.gz
#mkdir ~/eigen
#cd ~/eigen
#cmake ~/Downloads/eigen-******
#sudo make install


wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list !!!!!!!!!!!!!!!!!!!!!!!!
sudo aptitude update
yes | sudo aptitude install google-chrome-beta

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update && sudo apt-get install nautilus-dropbox

#sudo apt-get update && sudo apt-get -y install mozc-server ibus-mozc
#ログアウト
#ログイン
#ibus-setup
#インプットメソッドに移動。インプットメソッドの選択->日本語->Mozcを選択。追加を押す。Mozcをクリック。上へを押す。閉じる。
#(Anthyを選択。削除。やってもやらなくても。)
#ログアウト
#ログイン


#gnome-control-center
# Keyboard Layout -> Ctrl Position -> Caps Lock as Ctrl

####Dropbox
#cd ~ && wget -O - "http://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
#~/.dropbox-dist/dropboxd

####
# Startup Application
#/home/ryo/.dropbox-dist/dropboxd
#/usr/bin/ibus-setup
#/usr/bin/skype

sudo add-apt-repository ppa:relan/exfat 
sudo apt-get -y update
sudo apt-get -y install fuse-exfat exfat-utils

# ~/.gitconfigに
#[core]
#    excludesfile = ~/git/setting/config/.gitignore

