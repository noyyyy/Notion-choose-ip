fping -f avaip.txt -c 50 -i 0 > out.txt
cat out.txt  | grep "\[49\]" |  grep ", 0%"   > sort.txt 
cat out.txt  | grep "\[49\]" |  grep ", 2%"   >> sort.txt 
cat out.txt  | grep "\[49\]" |  grep ", 4%"   >> sort.txt 
cat out.txt  | grep "\[49\]" |  grep ", 6%"   >> sort.txt 
cat out.txt  | grep "\[49\]" |  grep ", 8%"   >> sort.txt 
cut -f1 -d: sort.txt  > out_1.txt

mkdir temp
for i in `cat out_1.txt`
	do
		echo 正在测试 $i
		curl --resolve www.notion.so:443:$i https://www.notion.so/app-4ca8cd21ec209cfc38a6.js --output temp/$i -s --connect-timeout 1 --max-time 2 &
		sleep 0.5
	done
sleep 5

ls -Slrh --block-size=k temp | sort -d -k 5rn | sed '2,$d' | cut -f 2 -d ":" | cut -f 2 -d " " > ip.txt
cat ip.txt

rm -rf temp
rm out.txt
rm sort.txt
rm out_1.txt
