# OpenBSD-rofs
Create a full read-only OpenBSD system for your firewall, appliance.

Why use this ?
- Really simple (KISS), you just need siteXX.tgz, nothing else
- No third software added except rsync

What does the script do ?
- create a binary <em>update-disk</em>, this will enable you to write into the slice / and update /var
- Install rsync package
- Allocate in RAM 400 MB for /var
- Allocate in RAM 40 MB for /tmp
- Allocate in RAM 4 MB for /dev
- Enable read-only for / and /var

You need :
- RAM 1GB minimum
- Install OpenBSD on a 3GB partition / without swap, at install, please remove -x* -g* -c* +s* sets

How to install ?<br>
Just import the install.site script in a set called siteXX.tgz. For more information, look at <a href="https://www.openbsd.org/faq/faq4.html#site">OpenBSD FAQ : Customizing the install process</a>

Enjoy!

Use openbsd-rofs entirely at your own risk. No one will help you.
