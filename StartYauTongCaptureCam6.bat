@echo off
set /a x=0

:loop

echo Getting Video Capture %x%

set camera_name6=yau_tong_rack03_02
set camera_port6=2559

"C:\Program Files\Git\bin\sh.exe" --login -i -c "timeout 300s /c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name6% %camera_port6%"

set /a x+=1
timeout 3600 > NUL
goto loop