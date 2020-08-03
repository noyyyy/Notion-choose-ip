curl https://www.cloudflare.com/ips-v4 -o cfip.txt
python3 cidr2ip.py cfip.txt cfip.txt