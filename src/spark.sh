curl https://cdn.jsdelivr.net/gh/Jerrywang959/notion-choose-ip/src/cfip.txt -o cfip.txt

mkdir temp
for i in `cat cfip.txt`
	do
		echo 正在测试 $i
		curl --resolve cfcdn.jerrry.wang:80:$i http://cfcdn.jerrry.wang/ --output temp/$i -s --connect-timeout 0.5 --max-time 1 &
 	  sleep 0.05
	done
sleep 5
ls -Slrh --block-size=k temp | cut -f2 -d: | cut -f2 -d " " | sed '1d'  > avaip.txt
rm -rf temp
rm cfip.txt

mkdir temp
for i in `cat avaip.txt`
	do
		echo 正在测试 $i
		curl --resolve cfcdn.jerrry.wang:80:$i http://cfcdn.jerrry.wang/store/network/cn.189.cloud.spark/cn.189.cloud.spark_6.3.0spark0_i386.deb --output temp/$i -s --connect-timeout 1 --max-time 2 &
		sleep 0.5
	done
sleep 5

ls -Slrh --block-size=k temp | sort -d -k 5rn | sed '2,$d' | cut -f 2 -d ":" | cut -f 2 -d " " > ip.txt
cat ip.txt

rm -rf temp
rm out.txt
rm sort.txt
rm out_1.txt
rm avaip.txt
rm ip.txt
