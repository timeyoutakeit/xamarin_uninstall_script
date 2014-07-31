#!/bin/bash
# This is a simple script to uninstall Xamarin from your machine.
 
# Uninstall Xamarin Studio
 
rm –rf "/Applications/Xamarin Studio.app"
rm –rf ~/Library/Caches/XamarinStudio-*
rm –rf ~/Library/Logs/XamarinStudio-*
rm –rf ~/Library/Preferences/XamarinStudio-*
rm –rf ~/Library/XamarinStudio-*
 
 
# Uninstall Mono MDK
# You will also want to make sure that there are no other dependencies on Mono
 
sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg
 
 
# Uninstall Xamarin.Android
 
sudo rm -rf /Developer/MonoDroid
sudo rm -rf /Library/Frameworks/Xamarin.Android.framework
sudo pkgutil --forget com.xamarin.android.pkg
rm -rf ~/Library/MonoAndroid
 
 
# Uninstall Xamarin.iOS
 
rm -rf ~/Library/MonoTouch
sudo rm -rf /Developer/MonoTouch
sudo pkgutil --forget com.xamarin.monotouch.pkg
sudo pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg
 
## To Uninstall the Xamarn Build Host
 
rm –rf "/Applications/Xamarin.iOS Build Host.app"
 
## To unload and remove the Xamarin Build Host launchd job
 
launchctl unload /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist
sudo rm -f /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist
 
 
# Uninstall Xamarin.Mac
 
sudo rm -rf /Library/Frameworks/Xamarin.Mac.framework
rm -rf ~/Library/Xamarin.Mac
