mv /etc/hosts /etc/hosts.bak
bestip=$(cat ip.txt)
echo "$bestip notion.so" > /etc/hosts
echo "$bestip www.notion.so" >> /etc/hosts
echo "$bestip msgstore.www.notion.so" >> /etc/hosts
cat /etc/hosts.bak >> /etc/hosts
rm /etc/hosts.bak