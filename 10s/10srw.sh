rk=$(cat rk.txt)
ua=$(cat ua.txt)
curl -k -i --raw -o 10srw.txt "http://$rk/j/r2" -H "Host: $rk" -H "Proxy-Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: $ua" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" -H "Accept-Encoding: gunzip, deflate" -H "Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7" -s
echo $(cat 10srw.txt | grep -o "Location.*" | cut -d '/' -f3) > rw.txt
