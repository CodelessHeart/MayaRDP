@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By NekoMaya" > out.txt 2>&1
REG ADD "HKEY_LLonB7UtV97nMVRn1w2bM656PLog19npoEm8B8eKg9WUFJooo4CUb3HRZNpe1Uer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user NekoMaya @InfinityALT /add >nul
net localgroup administrators NekoMaya /add >nul
net user NekoMaya /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo  Successfully Installed !, If the RDP is Dead, Please Rebuild Again! 
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings > Secrets > Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels "
echo Username: NekoMaya
echo Password: @InfinityALT
echo .
echo  RDP By NekoMaya
echo   Connect to Your RDP !
ping -n 10 127.0.0.1 >nul
