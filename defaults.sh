#!/bin/bash

## Dock
# Autohide dock
defaults write com.apple.dock autohide -bool true
# Disable recent apps in docl
defaults write com.apple.dock show-recents -bool false
# Restart dock
killall Dock

## Screenshots
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location -string ~/Pictures/Screenshots 
killall SystemUIServer

## Finder
# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Show hidden files
defaults write com.apple.Finder AppleShowAllFiles -bool true
# Disable file extension warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Save to disk instead of iCloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
killall Finder

## Time
defaults write com.apple.menuextra.clock DateFormat -string "HH:mm"

## Text Edit
defaults write com.apple.TextEdit RichText -bool false
killall TextEdit