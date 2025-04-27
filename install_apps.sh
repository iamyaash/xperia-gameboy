#!/bin/bash

# Start adb server
adb start-server

# List of apps to install
APPS=("RetroArch" "PPSSPP")

# Directory to temporarily store downloaded APKs
APK_DIR="./apps"

# Create the directory if it doesn't exist
mkdir -p "$APK_DIR"

# Loop through and ask user for APK download links
for APP in "${APPS[@]}"
do
    # Feel free to other application in upcoming changes
    if [ "$APP" == "RetroArch" ]; then
        F_DROID_URL="https://f-droid.org/packages/com.retroarch/"
    elif [ "$APP" == "PPSSPP" ]; then
        F_DROID_URL="https://f-droid.org/packages/org.ppsspp.ppsspp/"
    fi

    echo "To download $APP, please visit the following F-Droid link and copy the direct download link:"
    echo "$F_DROID_URL"
    echo "Once you have copied the direct download link, paste it below:"
    
    read -p "Download link for $APP: " DOWNLOAD_URL
    
    # Extract the APK name from the URL
    APK_NAME=$(basename "$DOWNLOAD_URL")

    echo "Downloading $APK_NAME from $DOWNLOAD_URL ⏳"
    
    # Download the APK file
    if wget -q "$DOWNLOAD_URL" -O "$APK_DIR/$APK_NAME.apk"; then
        echo "✅ $APK_NAME downloaded successfully."
        
        # Install the APK using adb
        echo "Installing $APK_NAME..."
        if adb install "$APK_DIR/$APK_NAME.apk"; then
            echo "✅ $APK_NAME installed successfully."
            
            # Delete the APK after successful installation
            rm "$APK_DIR/$APK_NAME.apk"
            echo "🗑️ $APK_NAME deleted after installation."
        else
            echo "❌ Failed to install $APK_NAME."
        fi
    else
        echo "❌ Failed to download $APK_NAME."
    fi
done

echo "All applications are installed ✅"
