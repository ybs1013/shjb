ua=$(cat ua.txt)
rk=$(cat rk.txt)
curl -k -i --raw -o fqrw.txt "http://$rk/" -H "Host: $rk" -H "Proxy-Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: $ua" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" -H "Accept-Encoding: gunzip, deflate" -H "Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7" -s
echo $(cat fqrw.txt | grep -o "http.*" | cut -d '/' -f3) > rw.txt
