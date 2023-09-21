@echo off
:Admin
title 
    if "processor_architecture" equ "amd64" (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
) else (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

)

if '%errorlevel%' neq '0' (
color 0e
mode 40,3
echo.
title 
    goto getadmin
) else ( goto fadmin )

:GetAdmin
    echo set uac = createobject^("shell.application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""09
    echo uac.shellexecute "%~s0", "%params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "temp\getadmin.vbs"
    exit \b

:FAdmin
    pushd "%CD%"
    cd /d "%~dp0"
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@shift /0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


title Anti-SS

echo [1] cheat.exe
echo [2] cheat.dll
set /p input=-(
if %input% == 1 goto 1
if %input% == 2 goto 2

:1
cls
echo Deseja usar o metodo AnyDesk?

echo [s] Sim
echo [n] Nao
set /p in=-(
if %in%==s goto sim
if %in%==n goto aa
:aa
cls
echo Escreva o nome do cheat. (Exemplo: cheat.exe)
set /p n=-(

cls
echo Selecione o diretorio do cheat.
echo [1] Desktop
echo [2] Downloads
echo [3] Documents
echo [4] Music
set /p is=-(
if %is% == 1 cd %homepath%\desktop
if %is% == 2 cd %homepath%\downloads
if %is% == 3 cd %homepath%\documents
if %is% == 4 cd %homepath%\music
cls
start %n%
cls
taskkill -im explorer.exe /f
start explorer.exe
cls
taskkill -im SearchIndexer.exe /f
start SearchIndexer.exe
cls
net stop PcaSvc
echo Apos ser puxado para a ss e fechado o %n% aperte qualquer botao.
pause >nul
del %n% /Q

reg DELETE "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\BagMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\Bags" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
reg DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
reg DELETE HKU\S-1-5-21-3824826823-2598791734-3121535486-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count /f
reg DELETE "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f


reg add HKU\S-1-5-21-3824826823-2598791734-3121535486-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count /f
reg ADD "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\BagMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\Bags" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
reg ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /f
reg ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /t REG_SZ /d OS_Scanner.exe
cls
echo deseja limpar o journal?
echo [s] Sim
echo [n] Nao
set /p sd=-(
if %sd%==s fsutil usn deleteJournal /D C:
if %sd%==n goto adds
cls
:adds
echo deseja reiniciar a DPS?
echo [s] Sim
echo [n] Nao
set /p sd=-(
if %sd%==s goto dps
if %sd%==n goto ddt
:dps
net stop DPS
net start DPS
:ddt
del C:\Windows\System32\RenamedFiles.txt
echo . > C:\Windows\System32\RenamedFiles.txt
del C:\Windows\System32\DeletedFiles.txt
echo . > C:\Windows\System32\DeletedFiles.txt
set df=%random%
echo @echo off >> %df%.bat
echo del *.bat /Q >> %df%.bat
start %df%.bat
exit


:sim
cls
echo Selecione o diretorio do cheat.
echo [1] Desktop
echo [2] Downloads
echo [3] Documents
echo [4] Music
set /p is=-(
if %is% == 1 cd %homepath%\desktop
if %is% == 2 cd %homepath%\downloads
if %is% == 3 cd %homepath%\documents
if %is% == 4 cd %homepath%\music

cls
echo Renomeie o cheat para Anydesk.exe e depois aperte qualquer tecla.
pause >nul
cls
start AnyDesk.exe
cls
taskkill -im explorer.exe /f
start explorer.exe
cls
taskkill -im SearchIndexer.exe /f
start SearchIndexer.exe
cls
net stop PcaSvc
echo Apos ser puxado para a ss e fechado o AnyDesk.exe aperte qualquer botao.
pause >nul
del Anydesk.exe /Q
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy"
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\BagMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\Bags" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
reg DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
reg DELETE HKU\S-1-5-21-3824826823-2598791734-3121535486-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count /f
reg DELETE "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f


reg add HKU\S-1-5-21-3824826823-2598791734-3121535486-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count /f
reg ADD "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\BagMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\Bags" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
reg ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /f
reg ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /t REG_SZ /d OS_Scanner.exe
cls

if %is% == 1 curl https://download.anydesk.com/AnyDesk.exe > %homepath%\desktop\AnyDesk.exe
if %is% == 2 curl https://download.anydesk.com/AnyDesk.exe > %homepath%\downloads\AnyDesk.exe
if %is% == 3 curl https://download.anydesk.com/AnyDesk.exe > %homepath%\documents\AnyDesk.exe
if %is% == 4 curl https://download.anydesk.com/AnyDesk.exe > %homepath%\music\AnyDesk.exe
cls
echo deseja limpar o journal?
echo [s] Sim
echo [n] Nao
set /p sd=-(
if %sd%==s fsutil usn deleteJournal /D C:
if %sd%==n goto adds
cls
:adds
echo Deseja reiniciar a DPS?
echo [s] Sim
echo [n] Nao
set /p ssd=-(
if %ssd%==s goto dps
if %ssd%==n goto ddf
:dps
net stop DPS
net start DPS
:ddf
del C:\Windows\System32\RenamedFiles.txt
echo . > C:\Windows\System32\RenamedFiles.txt
del C:\Windows\System32\DeletedFiles.txt
echo . > C:\Windows\System32\DeletedFiles.txt
set df=%random%
echo @echo off >> %df%.bat
echo del *.bat /Q >> %df%.bat
start %df%.bat
exit



:2
taskkill -im explorer.exe /f
start explorer.exe
cls
taskkill -im SearchIndexer.exe /f
start SearchIndexer.exe
cls
net stop PcaSvc
echo Apos ser puxado para a ss e fechado o seu cheat aperte qualquer botao.
pause >nul
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy"
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\BagMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\Bags" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
reg DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
reg DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
reg DELETE HKU\S-1-5-21-3824826823-2598791734-3121535486-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count /f
reg DELETE "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f


reg add HKU\S-1-5-21-3824826823-2598791734-3121535486-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count /f
reg ADD "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\BagMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\Bags" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
reg ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /f
reg ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /t REG_SZ /d OS_Scanner.exe
cls
echo deseja limpar o journal?
echo [s] Sim
echo [n] Nao
set /p sd=-(
if %sd%==s fsutil usn deleteJournal /D C:
if %sd%==n goto adds
cls
:adds
echo Deseja reiniciar a DPS?
echo [s] Sim
echo [n] Nao
set /p ssd=-(
if %ssd%==s goto dps
if %ssd%==n goto :ddd
:dps
net stop DPS
net start DPS
:ddd
del C:\Windows\System32\RenamedFiles.txt
echo . > C:\Windows\System32\RenamedFiles.txt
del C:\Windows\System32\DeletedFiles.txt
echo . > C:\Windows\System32\DeletedFiles.txt
cls
echo Selecione o diretorio do antiss.
echo [1] Desktop
echo [2] Downloads
echo [3] Documents
echo [4] Music
set /p is=-(
if %is% == 1 cd %homepath%\desktop
if %is% == 2 cd %homepath%\downloads
if %is% == 3 cd %homepath%\documents
if %is% == 4 cd %homepath%\music


set df=%random%
echo @echo off >> %df%.bat
echo del *.bat /Q >> %df%.bat
start %df%.bat


exit
