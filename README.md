# OpenBSD-rofs
Create a full read-only OpenBSD system, perfect for CF.

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
