if [ ! -s ckerror.txt -a -s jc.txt ]
then jc=$(cat jc.txt)
rw=$(cat rw.txt)
ji=$(cat ji.txt)
ua=$(cat ua.txt)
ck=$(cat ck.txt)
curl -k -i --raw -o rpc.txt "http://$rw/read_task/poiasdj?code2=$jc&jumpid=$ji&type=2" -H "Host: $rw" -H "Proxy-Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: $ua" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" -H "Sec-Fetch-Site: same-origin" -H "Sec-Fetch-Mode: navigate" -H "Sec-Fetch-Dest: document" -H "Accept-Encoding: gunzip, deflate, br" -H "Cookie: $ck" -H "Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7" -s
fi
