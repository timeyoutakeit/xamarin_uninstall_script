#!/bin/bash
# This is a simple script to aid with uninstalling Xamarin from your machine.

# Uninstall Xamarin Studio

rm –rf "/Applications/Xamarin Studio.app"
rm –rf ~/Library/Caches/XamarinStudio-*
rm –rf ~/Library/Logs/XamarinStudio-* 
rm –rf ~/Library/Preferences/XamarinStudio-* 
rm –rf ~/Library/XamarinStudio-*


# Uninstall Mono MDK
# You will also want to make sure that there are no other dependencies on Mono

rm -rf /Library/Frameworks/Mono.framework
pkgutil --forget com.xamarin.mono-MDK.pkg


# Uninstall Xamarin.Android

rm -rf /Developer/MonoDroid 
rm -rf /Library/Frameworks/Xamarin.Android.framework 
rm -rf ~/Library/MonoAndroid 
sudo pkgutil --forget com.xamarin.android.pkg


# Uninstall Xamarin.iOS

rm -rf /Developer/MonoTouch
rm -rf ~/Library/MonoTouch
pkgutil --forget com.xamarin.monotouch.pkg
pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg

## To Uninstall the Xamarn Build Host

rm –rf "/Applications/Xamarin.iOS Build Host.app"

## To uninstall unload and remove the Xamarin Build Host launchd job

launchctl unload /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist 
rm -f /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist


# Uninstall Xamarin.Mac

rm -rf /Library/Frameworks/Xamarin.Mac.framework
rm -rf $HOME/Library/Xamarin.Mac
