# Ubuntu-Telemetry-Free-Privacy-Secure
This Bash script just removes Telemetry and does basic system more secure and protected

## This script does:
* System update and software upgrade
* Amazon & advert web apps removing
* AptUrl Removing ( tool, which gives possibilities to start installation by clicking on url, can be executed with js, which is not secure)
* Guest session disable for LightDM
* Remote login disable for LightDm
* Basic Telemetry Removing (ZeitGeist)
* DNS encryption (dnscrypt-proxy)
* FireWall (UFW)
* Antivirus (ClamAV)
* **[optionaly]** Cups Daemon (needed for printers) removing *[has remote access and open port, better to remove, if you don't use printers]*
* **[optionaly]** Remmina (tool for remote connections) removing *[keep utilities and libruares in system, which potentially can use third-party software. Better to remove, if you don't use it.]*

## How to use:
1. Download all files
2. Make ubuntu-secure.sh executable with *sudo chmod +x ubuntu-secure.sh* command.
3. Read all code in the file and uncomment some commands, if you need them, save the changes.
4. Execute the script from terminal: *sudo ./ubuntu-secure.sh*

### Thank you!

Thank you for your interest to the script. Any issues, advices and pull requests are welcome.
