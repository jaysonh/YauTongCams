@echo off
set /a x=0

:loop

echo Getting Video Capture %x%


set camera_name5=yau_tong_rack03_01
set camera_port5=2558

"C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name5% %camera_port5%"

set /a x+=1
timeout 3600 > NUL
goto loop