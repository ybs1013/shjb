ua=$(cat ua.txt) && ck=$(cat ck.txt) && rw=$(cat rw.txt) && curl -k -i --raw -o fqfr.txt "http://$rw/fast_reada" -H "Host: $rw" -H "Proxy-Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: $ua" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" -H "Accept-Encoding: gunzip, deflate" -H "Cookie: $ck" -H "Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7" -s && echo $(cat fqfr.txt | grep -o "wd-mine.*" | cut -d '>' -f3 | cut -d '<' -f1) > b.txt && echo $(cat fqfr.txt | grep -o "wd-money.*" | cut -d '>' -f2 | cut -d '<' -f1) > y.txt && b=$(cat b.txt) && y=$(cat y.txt) && if [ ! -n "$b" -a ! -n "$y" ]; then dt=$(date '+%Y-%m-%d %H:%M:%S') && echo $dt ck无效，请重新运行脚本并输入新的常量 > ckerror.txt; fi
