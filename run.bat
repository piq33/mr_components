REM 添加下面一行到configurations的Additional run args
REM 替换${env}为要启动的环境{dev, uat, prod}
REM --dart-define-from-file=./compile/config_${env}.json

@echo off
flutter packages upgrade && flutter clean && flutter pub get && flutter pub run build_runner watch --delete-conflicting-outputs --use-polling-watcher