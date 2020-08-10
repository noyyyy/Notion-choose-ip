mkdir temp
for i in `cat cfip.txt`
	do
		echo 正在测试 $i
		curl --resolve www.notion.so:443:$i https://www.notion.so --output temp/$i -s --connect-timeout 2 --max-time 2 &
 	  sleep 0.05
	done
sleep 5
ls -Slrh --block-size=k temp | cut -f2 -d: | cut -f2 -d " " | sed '1d'  > avaip.txt
rm -rf temp
