username="$(cat config/username.txt)"
count="0"
if [ "$(connect -n https://github.com/)" == "1" ]; then
	echo "[!] No Internet Connection!" && exit 1
else echo "[!] Starting Profile Views Hack by @xqwtxon" && sleep 5s
fi
while true
	do
	echo -n "[*] Adding Profile Views: "
	curl -sL -A "github-camo" https://github.com/${username} >> "views.cache"
	if [ ! "$?" == "0" ]; then
	echo "~"
	else count="$(expr ${count} + 1)" && echo "${count}" && rm "views.cache"
	fi
done
