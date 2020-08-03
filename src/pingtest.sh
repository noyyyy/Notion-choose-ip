fping -f avaip.txt -c 30 -i 0 > out.txt
cat out.txt  | grep "\[29\]" |  grep ", 0%"   > sort.txt 
cat out.txt  | grep "\[29\]" |  grep ", 3%"   >> sort.txt 
cat out.txt  | grep "\[29\]" |  grep ", 6%"   >> sort.txt 
cat out.txt  | grep "\[29\]" |  grep ", 10%"   >> sort.txt 
cut -f1 -d: sort.txt  > out_1.txt

mkdir temp
for i in `cat out_1.txt`
	do
		echo 正在测试 $i
		curl --resolve www.notion.so:443:$i https://www.notion.so/app-4ca8cd21ec209cfc38a6.js --output temp/$i -s --connect-timeout 2 --max-time 10 &
		sleep 0.1
	done
sleep 5

ls -Slrh --block-size=k temp > speed.txt
sort speed.txt -o sort_3.txt -d -k 5rn
sed '2,$d' sort_3.txt > finalip.txt
cut -f11 -d " "  finalip.txt > ip.txt
cat ip.txt

rm -rf temp
rm out.txt
rm  sort_3.txt
rm sort.txt
rm out_1.txt
rm speed.txt
rm finalip.txt
