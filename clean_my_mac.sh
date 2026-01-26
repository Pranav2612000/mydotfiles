#!/bin/bash

# Define the folders to be cleaned
CACHE_DIR=~/Library/Caches
CACHE_SYS_DIR=/Library/Caches
LIB_LOGS=~/Library/Logs
LOG_DIR=/var/log
LANG_DIR=/Library/Languages
TMP=/tmp
SL='~/Library/Application Support/com.apple.spotlight'
SFL='~/Library/Application Support/com.apple.sharedfilelist'
TRASH=~/.Trash
UPDATES=/Library/Updates
XCODE=~/Library/Caches/com.apple.dt.Xcode
XCODE_STATE='~/Library/Saved Application State/com.apple.dt.Xcode.savedState'
XCODE_LOG=~/Library/Logs/Xcode
XCODE_DEDA=~/Library/Developer/Xcode/DerivedData
XCODE_NOIN=~/Library/Developer/Xcode/Index.noindex
XCODE_SIMU=~/Library/Developer/CoreSimulator

# Function to clean a folder
clean_folder() {
    local folder=$1
    if [ -d "$folder" ]; then
        echo "Cleaning: $folder"
        sudo rm -rf "${folder:?}/"* 2>/dev/null
        echo "✅ Content of $folder removed successfully."
    else
        echo "⚠️ Folder $folder not found, skipping..."
    fi
}

# User confirmation
read -p "Are you sure you want to clean caches, logs and languages? (y/n): " confirmation

if [[ "$confirmation" =~ ^[Yy]$ ]]; then
    clean_folder "$CACHE_DIR"
    clean_folder "$CACHE_SYS_DIR"
    clean_folder "$LIB_LOGS"
    clean_folder "$LOG_DIR"
    clean_folder "$LANG_DIR"
    clean_folder "$TMP"
    clean_folder "$SL"
    clean_folder "$SFL"
    clean_folder "$TRASH"
    clean_folder "$UPDATES"
    clean_folder "$XCODE"
    clean_folder "$XCODE_STATE"
    clean_folder "$XCODE_LOG"
    clean_folder "$XCODE_DEDA"
    clean_folder "$XCODE_NOIN"
    clean_folder "$XCODE_SIMU"
    echo "🎉 Cleanup completed!"
else
    echo "❌ Operation cancelled."
fi
