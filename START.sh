#!/bin/sh

# plan9port uses /bin/9 to set this path to /usr/lib/plan9/bin and for some reason rc excepts it too so we set it to /
export PLAN9=/

socat TCP-LISTEN:564,fork,reuseaddr EXEC:"chroot /usr/lib/plan9 /bin/rc -i",chdir=/usr/lib/plan9,stderr
