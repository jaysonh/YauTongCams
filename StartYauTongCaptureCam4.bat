@echo off
set /a x=0

:loop

echo Getting Video Capture %x%


set camera_name4=yau_tong_rack02_02
set camera_port4=2557 

"C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name4% %camera_port4%"

set /a x+=1
timeout 3600 > NUL
goto loop