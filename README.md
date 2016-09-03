# OpenBSD-rofs
Create a full read-only OpenBSD system for your firewall, appliance.

What does the script do ?
- Disable sndiod daemon
- Install rsync
- Get Mtier tool (Openup), used to update the OpenBSD system
- Allocate in RAM 400 MB for /var slice
- Allocate in RAM 40 MB for /tmp slice
- Allocate in RAM 4 MB for /dev slice
- Enable read-only for / slice

You need :
- RAM 1GB minimum
- Install OpenBSD on a 3GB partition / without swap, at install, please remove -x* -g* -c* sets

Install the binaries :
<pre>
./install.sh
</pre>

Just run :
<pre>
# log in as root and :
prepare_mfs
enable_single_user && reboot

# At prompt just execute :
make_mfs && exit

# log in as root and :
disable_single_user
</pre>

Update the box :
<pre>
mount -uw / && openup
mount -ur /
</pre>

Enjoy!
