#!/bin/bash

USERNAME=<username>

echo "new rsync on $(date)" >> /home/${USERNAME}/rsync.log
sudo /usr/bin/rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/var/lib/dpkg/info/*","/usr/share/man/man3/*"} /media/${USERNAME}/Passport/rsync_backup/ >> /home/${USERNAME}/rsync.log
