echo $(curl -Ls http://m.oo2u4.cn/entry | grep -o "url_h5 =.*" | cut -d '/' -f3 | sed 's/...$//') > rk.txt
