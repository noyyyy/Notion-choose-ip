#curl https://www.cloudflare.com/ips-v4 -o rawcfip.txt
python3 cidr2ip.py rawcfip.txt all_cfip.txt
cat all_cfip.txt | grep "\.15$" > cfip.txt
rm all_cfip.txt
#rm rawcfip.txt