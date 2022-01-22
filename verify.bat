@echo off
rem 再起動後に自動実行するバッチ作成⇒RDP WrapperのListenが無効になった際の対応バッチ

rem 以下、再起動後に自動実行するコマンド
rem cd /d %~dp0
rem if "%1" neq "" goto :%1
rem "再起動を要求される処理"
rem reg add "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnce" /v "再起動後実行" /t REG_SZ /d "%~0 AfterReboot1" /f
rem exit
rem :AfterReboot1
rem "再起動後に行いたい処理"　←ここに実際の処理を入れる
rem exit

rem ファイルコピー＆ペースト
rem type nul > C:\Users\sonob\verify_file_delete_ok\hoge.txt
rem COPY C:\Users\sonob\verify_file_delete_ok\hoge3.txt C:\Users\sonob\verify_file_delete_ok\hoge4.txt

rem 古いrdpwrap.ini削除
del C:\Users\sonob\verify_file_delete_ok\rdpwrap.ini

rem rdpwrap.iniファイルを指定URLからインストール
rem START /WAIT bitsadmin /TRANSFER FILEGET https://raw.githubusercontent.com/affinityv/INI-RDPWRAP/master/rdpwrap.ini C:\Users\sonob\verify_file_delete_ok\rdpwrap.ini

rem 再起動
SET /P selected="再起動しますか(y/n)？"
if /i "%selected%"=="y" (goto :yes)
if /i "%selected%"=="yes" (goto :yes)
exit 0

:yes
shutdown -r -t 0

exit 0

rem フォルダ開く
rem START C:\Users\sonob\verify_file_delete_ok


