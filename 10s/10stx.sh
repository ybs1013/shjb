y=$(cat y.txt)
rw=$(cat rw.txt)
ua=$(cat ua.txt)
ck=$(cat ck.txt)
curl -k -i --raw -o 10stx.txt -X POST -d "channel=wechat&money=$y" "http://$rw/withdrawal/submit_withdraw" -H "Host: $rw" -H "Connection: keep-alive" -H "Accept: */*" -H "Origin: http://$rw" -H "X-Requested-With: XMLHttpRequest" -H "User-Agent: $ua" -H "Content-Type: application/x-www-form-urlencoded" -H "Cookie: $ck" -H "Referer: http://$rw/withdrawal/index?type=1" -H "Accept-Encoding: gzip, deflate" -H "Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7" -s
