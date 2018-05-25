#!/bin/bash
clear
echo "enter the URL to download the MP3"
read u
echo "save with this name"
read n

f=`curl "http://www.convertmp3.io/download/?video=$u"|grep 'id="download"'|cut -d '/' -f2-|cut -d '"' -f1`
wget -O ~/Desktop/mp3/$n.mp3 "https://www.convertmp3.io/$f"  >> /dev/null

echo "song downloaded"
