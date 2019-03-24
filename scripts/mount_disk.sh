#!/bin/bash
### BEGIN INIT INFO
# Provides:          bbzhh.com
# Required-Start:    $local_fs $network
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: tomcat service
# Description:       tomcat service daemon
### END INIT INFO
sudo mount /dev/sdb /media/data

# run it
# sudo cp ./mount_disk.sh /etc/init.d/
# sudo chmod +x ./mount_disk.sh
# sudo update-rc.d mount_disk.sh defaults 90

# remove it
# cd /etc/init.d
# sudo update-rc.d -f mount_disk.sh remove