cd ~
sudo adduser `who am i | cut -d' ' -f1` fuse
mkdir nas0
sshfs ryo@home.wakatabe.com:/ ~/nas0
mkdir logfiles
sshfs wakatabe@ds13fs:/home/storage1/sagisaka/logfiles ~/logfiles
mkdir wakatabe
sshfs wakatabe@is:/home/isi/wakatabe ~/wakatabe
mkdir samba
sshfs wakatabe@is:/home/isi/samba ~/samba
cd -
