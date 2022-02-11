# Ubuntu Telemetry-Free, Privacy and Secure
This Bash script just removes a pre-installed Telemetry, a pre-installed software and libs with some potentional or a high risk. Script removes them to make your experience better and more secure. Also, the script installs an additional software for the protection.

**Please do not imagine it secures your machine against serious 
adversaries however**.

## This script does:
* System update and software upgrade
* Amazon & advert web apps removing
* AptUrl Removing ( tool, which gives possibilities to start installation by clicking on url, can be executed with js, which is not secure)
* Guest session disable for LightDM
* Remote login disable for LightDm
* DNS encryption (dnscrypt-proxy) *[**should to be manually configured and added to ufw**. Just read the end of the script and google "How To Install DNSCrypt on Ubuntu"]*
* FireWall (UFW) *[**should to be manually configured for another your software**]*
* Antivirus (ClamAV)
* Brute Force protection (Fail2Ban)
* Basic Telemetry Removing (ZeitGeist) and unsecure libs and pre-installed software with high and potentional risks (like, for example, Vino - VNC server for a remote desktop sharing and system control or libhttp-daemon-perl - http server for perl or gdbserver - remote tool for gnome debug. Some software have a potentional risks (better to remove, if you don't use it, because of opening ports, for example. **Please, read the comments in the script and use only strings, that you need**)
* Additional recomendations (about firefox plugins, sandbox for software, own latest kernel from sources for your system, etc.)

## How to use:
1. Download all the files
2. Make ubuntu-secure.sh executable with *sudo chmod +x ubuntu-secure.sh* command.
3. **Read all the code lines in the file and uncomment some commands, if you need them, and comment strings, which you don't want to use**, save the changes.
4. Execute the script from terminal: *sudo ./ubuntu-secure.sh*

## What to do more:
* Install additional plugins to firefox, like this:
    - Privacy Badger
    - Ghostery
    - Self-destructing cookies
    - NoScript
    - HTTPS everywhere
    - PrivaConf (also google "Firefox Debloat in about:config" and manually switch off some problems)
    - Block Cloudflare MITM Attack 
    - Decentraleyes
    - Review this page to find more: https://github.com/amq/firefox-debloat
* Remove any software, that you don't use
* Configure SandBox-like systems for a some not-well proprietary software like, for example, skype. Learn AppArmor, SeLinux and try to implement it
* Configure manually the kernel and compile it from a source code with modules, that you need only

### Some important notes:
Also, please **understand this important notes**:
* This script is kind of a small helper, it is not a full protection, don't use it, if you don't understand what it does.
* Read the code first and make sure, that all is ok for you. 
* **It has not been tested for the last ubuntu versions (so be carefuly, when you use it, for example removing of some zeitgeist libs can touch Unity dependencies**)

### Thank you!

Thank you for your interest to the script. Any issues, advices and pull requests are welcome.
