#!/usr/bin/bash

# 2>&1 redirects stderr(2) to stdout(1) we use & to specify that 1 is not a file.
# org_code=$(ffmpeg -i "$1" 2>&1 | grep "Stream #0")

if [ -d "$1" ]; then
  cd "$(pwd)/${1}"
  mkdir -p changed/
  for f in *.mp4; do
    file=${f%%${2}}
    echo "${file}"
  done
elif [ -f "$1" ]; then
  mkdir -p changed/
  filename=${1%.*}
  new_file="changed/$filename.mov"

  ffmpeg -i "${1}" -vf "scale=1920:1080, fps=60" -c:v prores_ks -profile:v 3 -pix_fmt yuv422p10le -c:a pcm_s16le "${new_file}"

  echo "${new_file}"

else
  echo "Enter a valid file or directory"

fi
