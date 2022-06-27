# CyberSpy - Espía Cibernético
Hacking Tool Suite for Android in Termux **(No root)**
> This tool can only be executed in Termux.
## Preview in Termux
![CyberSpy](https://github.com/Darkmux/cyberspy/blob/main/images/CyberSpy.png)
## Requirements
* Updated Termux application.
* Android 7 or higher.
* Minimum 100MB of available storage.
## Download Termux F-Droid
> Note: It is not recommended to use the Termux application that is available in "Google Play Store" because the developers no longer maintain this app and therefore it is outdated.  Termux still receives updates on another platform called "F-Droid" so download the app with the following link:
[Termux F-Droid](https://f-droid.org/en/packages/com.termux)
## Installation in Termux
> Update Termux repositories.
```bash
yes|pkg update && pkg upgrade
```
> Grant storage permissions to Termux.
```bash
termux-setup-storage
```
> Install "git" version control software.
```bash
yes|pkg install git
```
> Clone github repository.
```bash
git clone https://github.com/Darkmux/cyberspy
```
> Access the cloned "cyberspy" folder.
```bash
cd cyberspy
```
> Grant execute permissions to all files with extension (.sh).
```bash
chmod 777 *.sh
```
> Run the installer.
```bash
bash cyberspy.sh
```
## New Commands Available
> The main command is `spy` which is used along with its arguments for it to work properly:
## Arguments Available
> Shows a help menu on the use of cyberspy in the terminal.
```bash
spy help
```
> Shows the list of tools or banners available to use and install.
```bash
spy list <tools|banners>
```
> Find and update CyberSpy to its latest version.  (Run it whenever they enter the terminal).
```bash
spy update
```
> Completely uninstall CyberSpy and go back to the default Termux (only use it if you don't like cyberspy).
```bash
spy uninstall
```
> Changes the size of the banner depending on the specified argument.  (It is recommended to adapt it to your font size in Termux).
```bash
spy style <banner>
```
> Installs the tool specified as an argument.
```bash
spy install <tool>
```
> Removes the tool specified as an argument.
```bash
spy remove <tool>
```
> Reinstall the tool specified as argument.
```bash
spy reinstall <tool>
```
## Follow Me
* [YouTube](https://youtube.com/channel/UCfMjNcFvJae_9g7wQI2W7EA)
* [Facebook](https://www.facebook.com/whitehacks00 "WHITE HACKS")
* [TikTok](https://tiktok.com/@whitehacks00 "WHITE HACKS")
* [Telegram](https://t.me/whitehacks00 "WHITE HACKS")
* [WhatsApp](https://wa.me/+593981480757 "Darkmux")
## Coded by: @Darkmux
## © WHITE HACKS
