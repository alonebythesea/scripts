#!/bin/bash
# Script just converting video to mp3
read -p 'Enter URL: ' URL
cd ~/Videos
youtube-dl --extract-audio --audio-format mp3 $URL
cd
echo 'Video converted to mp3 at ~/Videos'
