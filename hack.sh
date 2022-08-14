#!/bin/bash
username="$(cat username.txt)"
while sleep 1s; do curl -sL -A "github-camo" https://komarev.com/ghpvc/?username=${username}&style=for-the-badge&color=brightgreen&label=Profile+Views; done
