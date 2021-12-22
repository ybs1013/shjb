if [ ! -s ckerror.txt ]
then rw=$(cat rw.txt)
ua=$(cat ua.txt)
ck=$(cat ck.txt)
curl -k -i --raw -o 10sh.txt "http://$rw/j/r2" -H "Host: $rw" -H "Proxy-Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: $ua" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" -H "Accept-Encoding: gunzip, deflate" -H "Cookie: $ck" -H "Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7" -s
echo $(cat 10sh.txt | grep -o "read-common-num.*" | sed -n 2p | cut -d '<' -f1 | cut -d '>' -f2) > b.txt
echo $(cat 10sh.txt | grep -o "read-common-num.*" | sed -n 3p | cut -d '<' -f1 | cut -d '>' -f2) > zl.txt
echo $(cat 10sh.txt | grep -o "user-withdraw.*" | sed -n 2p | cut -d '>' -f3 | cut -d '<' -f1) > y.txt
b=$(cat b.txt)
zl=$(cat zl.txt)
y=$(cat y.txt)
if [ ! -n "$b" -a ! -n "$zl" -a ! -n "$y" ]
then dt=$(date '+%Y-%m-%d %H:%M:%S')
echo $dt ck无效，请重新运行脚本并输入新的常量 > ckerror.txt
fi
else echo $(cat ckerror.txt)
fi
dt=$(date '+%Y-%m-%d %H:%M:%S')
echo $dt 今日阅读$b次，今日助力$zl次，当前余额$y元 > h.txt
if [ -s rf.txt ]
then rf=$(cat rf.txt)
echo $dt 今日阅读$b次，今日助力$zl次，当前余额$y元 $rf > h.txt
fi
