#!/bin/sh
echo "camera id: $1"

#cam_name="yau_tong_1"
cam_name="$1"
cam_port=$2
currentTime=$(date "+%Y%m%d_%H.%M.%S")
output_folder="$cam_name/"
filename=$currentTime$cam_name".jpg"

HOST="34.30.64.3"
USER="cerebadmin"
PASS="pass1234"

DOMAIN='ftp://34.30.64.3/'
CAM_PATH="/yau_tong_$cam_num/"
BASE_URL="$DOMAIN$output_folder"

#ffmpeg -y -rtsp_transport tcp -i rtsp://user:farmeyes101@223.197.188.20:2554/h264Preview_01_main -vframes 1 "$filename" # kwai chung
#ffmpeg -y -rtsp_transport tcp -i "rtsp://user:farmeyes101@42.200.36.77:$cam_port/h264Preview_01_main"  -vframes 1 "$filename" # yau tong (old)
ffmpeg -y -rtsp_transport tcp -i "rtsp://user:farmeyes101@223.197.188.20:$cam_port/h264Preview_01_main" -vframes 1 "$filename" # yau tong (fixed IP)

echo "uploading $filename to: $base_url"
curl -T $filename -u "$USER:$PASS" "$BASE_URL"

mv $filename "./$output_folder"