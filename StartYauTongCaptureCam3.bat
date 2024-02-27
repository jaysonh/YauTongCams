@echo off
set /a x=0

:loop

echo Getting Video Capture %x%


set camera_name3=yau_tong_rack02_01
set camera_port3=2556 

"C:\Program Files\Git\bin\sh.exe" --login -i -c "timeout 300s /c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name3% %camera_port3%"

set /a x+=1
timeout 3600 > NUL
goto loop