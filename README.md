# OpenBSD-rofs
Create a full read-only OpenBSD system for your firewall, appliance.

What does the script do ?
- create a binary update-disk
- Install rsync
- Allocate in RAM 400 MB for /var slice
- Allocate in RAM 40 MB for /tmp slice
- Allocate in RAM 4 MB for /dev slice
- Enable read-only for / slice

You need :
- RAM 1GB minimum
- Install OpenBSD on a 3GB partition / without swap, at install, please remove -x* -g* -c* sets

How to install ?<br>
Just import the install.site script in a set called siteXX.tgz. For more information, look at <a href="https://www.openbsd.org/faq/faq4.html#site">OpenBSD FAQ : Customizing the install process</a>

Enjoy!

Use openbsd-rofs entirely at your own risk. No one will help you.
