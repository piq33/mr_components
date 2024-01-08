#!/bin/bash
flutter packages upgrade
flutter clean
flutter pub get

# 添加下面一行到configurations的Additional run args
# ${env}替换为要启动的环境{dev, uat, prod}
# --dart-define-from-file=./compile/config_${env}.json
flutter pub run build_runner watch --delete-conflicting-outputs