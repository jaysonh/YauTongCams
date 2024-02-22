@echo off
set /a x=0

:loop

echo Getting Video Capture %x%



set camera_name2=yau_tong_rack01_02
set camera_port2=2555

"C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name2% %camera_port2%"

set /a x+=1
timeout 3600 > NUL
goto loop