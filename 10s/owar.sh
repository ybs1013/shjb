if [ ! -s ckerror.txt -a -s uuid.txt ]
then uuid=$(cat uuid.txt)
ja=$(cat ja.txt)
ju=$(cat ju.txt)
ji=$(cat ji.txt)
ou=$(cat ou.txt)
arou=$(cat arou.txt)
key=$(cat key.txt)
ov=$(cat ov.txt)
op=$(cat op.txt)
ua=$(cat ua.txt)
curl -k -i --raw -o owar.txt "https://open.weixin.qq.com/connect/oauth2/authorize_reply?allow=1&snsapi_userinfo=on&uuid=$uuid&uin=$ou&key=$key&pass_ticket=$op&version=$ov" -H "Host: open.weixin.qq.com" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: $ua" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" -H "Sec-Fetch-Site: same-origin" -H "Sec-Fetch-Mode: navigate" -H "Sec-Fetch-Dest: document" -H "Referer: https://open.weixin.qq.com/connect/oauth2/authorize?appid=$ja&redirect_uri=http%%3A%%2F%%2F$ju%%2Fread_task%%2Fsdfec%%3Fjumpid%%3D$ji%%26type%%3D2&response_type=code&scope=snsapi_userinfo&state=1&connect_redirect=1&uin=$arou&key=$key&version=$ov&pass_ticket=$op" -H "Accept-Encoding: gzip, deflate, br" -H "Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7" -s
echo $(cat owar.txt | grep -o "code.*" | cut -d '&' -f1 | cut -d '=' -f2) > jc.txt
fi
