count="0"
while true
	do
	echo -n "[*] Adding Profile Views: "
	curl -sL -A "github-camo" $(cat config/url.txt) >> "views.cache"
	if [ ! "$?" == "0" ]; then
	echo "~"
	else count="$(expr ${count} + 1)" && echo "${count}" && rm "views.cache"
	fi
done
