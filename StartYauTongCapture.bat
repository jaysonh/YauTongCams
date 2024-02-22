@echo off
set /a x=0

:loop

echo Getting Video Capture %x%

set camera_name=yau_tong
set camera_port=2554  
set camera_name1=yau_tong_1
set camera_port1=2554

set camera_name2=yau_tong_2
set camera_port2=2555
set camera_name3=yau_tong_3
set camera_port3=2556 
set camera_name4=yau_tong_4
set camera_port4=2557 
set camera_name5=yau_tong_5
set camera_port1=2558
set camera_name6=yau_tong_6 
set camera_port1=2559

"C:\Program Files\Git\bin\sh.exe" --login -i -c "cd /c/projects/YauTongCamGet/ ; ./YauTongCamGet.sh %camera_name% %camera_port%"

REM "C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name1% %camera_port1%"
REM timeout 10
REM "C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name2% %camera_port2%"
REM timeout 10
REM "C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name3% %camera_port3%"
REM timeout 10
REM "C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name4% %camera_port4%"
REM timeout 10
REM "C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name5% %camera_port5%"
REM timeout 10
REM "C:\Program Files\Git\bin\sh.exe" --login -i -c "/c/projects/YauTongCamGet/YauTongCamGet.sh %camera_name6% %camera_port6%"
REM timeout 10

set /a x+=1
timeout 3600 > NUL
goto loop