��
cls
@echo off
echo ****************************************
echo               Mumu ����
echo               Author: ShallowAi
echo               52pojie.cn
echo ****************************************
echo ������ Mumu ��װλ��, ������Mumuģ�������������
echo �� C:\Program Files (x86)\MuMu
:retry
set /p dir=��װλ�ã�
choice /M "Mumu ģ������װλ���� %dir%, ȷ�������� Y, ���������� N"
if errorlevel 2 goto retry
if errorlevel 1 goto check
:check
if exist "%dir%" goto unexist
echo Ŀ¼������, ����������.
goto retry
:unexist
echo �뱣֤ģ������������!
timeout /t 3
tasklist | find /i "NemuPlayer.exe" >nul 2>nul && goto exist || goto unexist
:exist
cd bin
adb connect 127.0.0.1:7555
adb remount
echo ����Ϊ Mumu ��װ���� NovaLauncher ����
adb install nova.apk
echo ���ڽ��� Mumu �ƹ�����
adb shell pm disable com.mumu.launcher
echo ���ڽ��� Mumu �ƹ����
adb shell pm disable com.mumu.acc
echo ����ɾ�� Mumu Ӧ���̵�
adb shell rm -rf /system/app/com.mumu.store
echo ����ɾ�� Mumu �������, ������ȷ���Ƿ�Ϊ��װλ��!
rd /s "%dir%\emulator\nemu\EmulatorShell\adImage"
echo. > "%dir%\emulator\nemu\EmulatorShell\adImage"
echo. > "%dir%\emulator\nemu\EmulatorShell\QtWebEngineProcess.exe"
echo. > "%dir%\emulator\nemu\EmulatorShell\NemuService.exe"
echo Mumu �������.
pause