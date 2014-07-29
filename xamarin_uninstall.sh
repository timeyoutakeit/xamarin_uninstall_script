#!/bin/bash
# This is a simple script to aid with uninstalling Xamarin from your machine.

# Uninstall Xamarin Studio

sudo rm –rf “/Applications/Xamarin Studio.app” 
rm –rf ~/Library/Caches/XamarinStudio-*
rm –rf ~/Library/Logs/XamarinStudio-* 
rm –rf ~/Library/Preferences/XamarinStudio-* 
rm –rf ~/Library/XamarinStudio-*


# Uninstall Mono MDK

sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg


# Uninstall Xamarin.Android

sudo rm -rf /Developer/MonoDroid 
sudo rm -rf /Library/Frameworks/Xamarin.Android.framework 
rm -rf ~/Library/MonoAndroid 
sudo pkgutil --forget com.xamarin.android.pkg


# Uninstall Xamarin.iOS

sudo rm -rf /Developer/MonoTouch
rm -rf ~/Library/MonoTouch
sudo pkgutil --forget com.xamarin.monotouch.pkg
sudo pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg

## To Uninstall the Xamarn Build Host

rm –rf “/Applications/Xamarin.iOS Build Host.app”

## To uninstall unload and remove the Xamarin Build Host launchd job

sudo launchctl unload /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist 
sudo rm -f /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist


# Uninstall Xamarin.Mac

rm -rf /Library/Frameworks/Xamarin.Mac.framework
rm -rf $HOME/Library/Xamarin.Mac
