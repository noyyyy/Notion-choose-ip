mkdir temp
for i in `cat cfip.txt`
	do
		echo 正在测试 $i
		curl --resolve www.notion.so:443:$i https://www.notion.so/app-4ca8cd21ec209cfc38a6.js --output temp/$i -s --connect-timeout 2 --max-time 10 &
    sleep 0.001
	done
sleep 5
ls -Slrh --block-size=k temp | cut -f2 -d: | cut -f2 -d " " | sed '1d'  > avaip.txt
rm -rf temp
