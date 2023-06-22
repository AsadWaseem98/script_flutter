#!/bin/bash

flutter clean
# Remember the current directory
CURRENT_DIR=$(pwd)

# Change to the iOS directory
cd ios

# Uninstall CocoaPods
pod deintegrate

# Change back to the previous directory
cd "$CURRENT_DIR"

# Run flutter pub get
flutter pub get

# Change to the iOS directory
cd ios
# Reinstall CocoaPods
pod install --repo-update

# Change back to the previous directory
cd "$CURRENT_DIR"

# First we have to give permission chmod +x pubget.sh
# Second run ./pubget.sh