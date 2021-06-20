@echo off
echo MayaRDP, not for public use!
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings > Secrets > Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels " & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > nul
cls
echo MayaRDP, not for public use!

goto check
