#!/bin/bash

#start adb server
adb start-server

#list of APK files to install
APPS=(
    "retroarch.apk"
    "ppsspp.apk"
)

#path of apks
APK_DIR="./apps"

#loop through and install each apk
for APP in "${APPS[@]}"
do
    echo "Install $APP ⏳"
    if adb install "$APK_DIR/$APP"; then
        echo "✅ $APP installed successfully."
    else
        echo "❌ Failed to install $APP."
    fi    
done

echo "All applications are installed ✅"