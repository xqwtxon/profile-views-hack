#!/bin/sh
if [ -e "hack.log" ]; then
	rm "hack.log"
fi
echo "[!] Profile Views Hack by @xqwtxon" >> "hack.log"
echo "[?] Happy Speedy Hacky way Month!" >> "hack.log"
echo "[!] Profile Views Hack by @xqwtxon"
echo "[?] Happy Speedy Hacky way Month!"
no_exit(){
	echo "[!] $SIGINT Caught: This operation is not permitted."
}

count="0"
while true
	do
	echo -n "[*] Adding Profile Views: "
	curl -sL -A "$(cat config/useragent.txt)" $(cat config/url.txt) >> "views.cache"
	if [ ! "$?" == "0" ]; then
	echo "~"
	else count="$(expr ${count} + 1)" && echo "${count}" && rm "views.cache"
	fi
	trap 'no_exit' SIGINT
	echo "[*] Adding Profile Views: ${count}" >> "hack.log"
done
