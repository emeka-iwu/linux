sed -i s/replacethis/withthis/g file
rpm -qa | grep 'package name' - search for a package
find . -name filename - search for file
chmod u+rwx file - 
read -4, write -2, execute -1.
chown - newowner filename - change file owner
chgrp - newgroup filename - change file group
setfacl -m u:user:rwx /path/to/file - user access
setfacl -m g:group:rwx /path/to/file - group access
setfacl -Rm u/g:user/group:rwx /path/to/file - user/group access to directory and contents
setfacl -x u:user path/to/file - removes acl of a single user on a file
setfacl -b path/to/file - removes acl for all user on a file
getfacl file - shows who has access 
2> - stnderr
> - standout 
< - stndin
cut -c3,4-5 file . cutes an output to get 3rd charater and 4-5 characters
cut -d':' -f2 file. cuts the 2nd field of an output using the delimeter ':'
awk '{print $1}' file - prints the first column of an output
awk '/james/ {print}' file - prints row that has 'james' in it 
awk '{$2="james"; print$0}' file - replaces the 2nd character with james in file
awk 'length($0) > 4' file - prints rows longer than 4 char
awk '{print NF}' - tells you the length of each row In a file
grep emeka file - searches for lines with emeka in file
grep -c emeka file - counts lines emeka appears in a file
grep -v emeka file - searches for lines that doesn't include emeka in file.
grep -i emeka file -  searches for emeka in file regardless of case sensitive
egrep -i "emkea|iwu" file - searches for 2 keywords in file
sort file - sorts file alphabetically
sort -r file - sorts file in reverse
sort -k3 file - sorts file by the 3rd field
sort file | uniq - sorts and removes duplicate lines from file
sort file | uniq -c counts each line for uniqness
sort file | uniq -d - shows only duplicate lines
cmp/diff file1 file2 - compares difference between 2 files
tar -cvf file.tar directory - compresses a directory into file.tar
tar -xvf file.tar - uncompresses file.tar into current working dir
tar -tvf file.tar - view contents of a file
gzip file.tar - zips up an archived file
gunzip file.tar.gz - unzips an archived file
tar -cvzf arc.tar.gz file(s) - archives and zips up select files and store are arc
sed -i s/replace_this/with_this/g file - replaces words in an output
sed /keyword/d file - deletes a whole line containing keyword
sed -i /^$/d file - deletes emply lines in a file
sed '3's/old/new/g file - replaces the 3rd coccurance of a keyword in file
useradd -g group -s /bin/bash -m -d /home/user user - creates user and adds to an existing group
usermod -g groupname user - adds user to a group (main group)
usermod -aG groupname user - adds user to supplementary group
useradd
groupadd
userdel
groupdel
usermod
chage -l user - shows password config of a user
chage -m -M -W -I -E user. sets min(m), max(M), no of days before expiry to warn (W), inactivity (I), expiry (E), of a user.
/etc/sudoers/group/shadow/passwd/login.defs/ssh/sshd_config
pkill -KILL -u username -- kills a user session.
gpasswd -d username groupname  #removes a user from a group
systemctl start/restart/stop/status/disable/enable sshd/httpd  /etc/systemd/system
ps -ef ; ps -u username 
top -u username ..... shows process executed by user
