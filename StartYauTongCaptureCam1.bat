@echo off
set /a x=0

:loop

echo Getting Video Capture %x%


set camera_name1=yau_tong_rack01_01
set camera_port1=2554

"C:\Program Files\Git\bin\sh.exe" --login -i -c "timeout 300s /c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name1% %camera_port1%"

set /a x+=1
timeout 3600 > NUL
goto loop