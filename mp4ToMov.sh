#!/bin/bash
for file in *.mp4; do
  base_name=$(basename "$file" .mp4)
  if [ -e "${base_name}.mov" ]; then
    continue
  fi
    ffmpeg -i $base_name.mp4 -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le $base_name.mvo
    chmod 777 $base_name.mvo
   echo " $file.mvo sucessfull created! "
done


