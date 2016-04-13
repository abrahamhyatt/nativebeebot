#!/bin/bash


cd /Users/abraham/build/nativebeebot
rawdog -uw &&
sed -e 's/^/\<\?xml version\=\"1\.0\" encoding\=\"utf\-8\"\?\>\<rss version\=\"2\.0\"\>\<channel\>\<title\>Native Bee Bot\<\/title\> \<link\>http\:\/\/twitter\.com\/nativebeebot\<\/link\>\<description\>\@nativebeebot\<\/description\>/g' \
-e 's/$/\<\/channel\>\<\/rss\>/g' \
-e 's/\&//g' > docs/beebot.xml
git add . && git commit -m "@nativebeebot feed update $(date +%Y-%m-%d-%R)" && git push
exit
