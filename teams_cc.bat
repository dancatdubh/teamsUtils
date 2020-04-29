@echo off
cls
echo ---------------------------------------------
echo - teams_cc.bat :: MS-Teams Cache Clear v0.1 -
echo ---------------------------------------------
echo Make sure MS-Teams Client is not running
echo Right-Click it's icon on the taskbar and choose 'Quit' (Don't just exit it using the 'X' in the title bar)
echo FYI AppData = %AppData%
echo ---------------------------------------------
pause
if exist "%AppData%\Microsoft\teams\application cache\cache" echo y | del "%AppData%\Microsoft\teams\application cache\cache"
if exist %AppData%\Microsoft\teams\blob_storage echo y | del %AppData%\Microsoft\teams\blob_storage 
if exist %AppData%\Microsoft\teams\databases echo y | del %AppData%\Microsoft\teams\databases 
if exist %AppData%\Microsoft\teams\cache echo y | del %AppData%\Microsoft\teams\cache 
if exist %AppData%\Microsoft\teams\gpucache echo y | del %AppData%\Microsoft\teams\gpucache 
if exist %AppData%\Microsoft\teams\Indexeddb echo y | del %AppData%\Microsoft\teams\Indexeddb 
if exist "%AppData%\Microsoft\teams\Local Storage" echo y | del "%AppData%\Microsoft\teams\Local Storage"
if exist %AppData%\Microsoft\teams\tmp echo y | del %AppData%\Microsoft\teams\tmp
echo ---------------------------------------------
echo - All Done. Try launching MS-Teams again.   -
echo ---------------------------------------------
echo.
echo Should this not work for you then try:
echo.
echo Clear Teams data from the Teams dev tool.
echo.
echo 7 Times Left click on Teams Icon in  system tray.
echo 1 time Right click on the Teams Icon from the system tray.
echo Open Devtool (mainwindow)
echo Go to Applications
echo Navigate to Clear storage
echo Click on the 'Clear site data'
echo.
echo Also delete everything in:
echo C:\Users\"user name"\AppData\Roaming\Microsoft\Teams 
echo (kinda like the first steps but select all and delete)
echo ---------------------------------------------

