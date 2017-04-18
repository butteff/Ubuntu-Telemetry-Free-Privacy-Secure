# Ubuntu Telemetry-Free, Privacy and Secure
This Bash script just removes Telemetry and does basic system more secure and protected

## This script does:
* System update and software upgrade
* Amazon & advert web apps removing
* AptUrl Removing ( tool, which gives possibilities to start installation by clicking on url, can be executed with js, which is not secure)
* Guest session disable for LightDM
* Remote login disable for LightDm
* DNS encryption (dnscrypt-proxy) 
[should to be manually configured and added to ufw. Just read the end of the script and google "
How To Install DNSCrypt on Ubuntu"]
* FireWall (UFW)
* Antivirus (ClamAV)
* Brute Force protection (Fail2Ban)
* Basic Telemetry Removing (ZeitGeist) and unsecure libs and pre-installed software with high and potentional risks

## How to use:
1. Download all files
2. Make ubuntu-secure.sh executable with *sudo chmod +x ubuntu-secure.sh* command.
3. **Read all code in the file and uncomment some commands**, if you need them, save the changes.
4. Execute the script from terminal: *sudo ./ubuntu-secure.sh*

### Thank you!

Thank you for your interest to the script. Any issues, advices and pull requests are welcome.
