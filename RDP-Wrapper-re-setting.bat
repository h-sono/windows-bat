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
