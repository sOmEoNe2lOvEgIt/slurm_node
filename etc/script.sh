#!/bin/sh
chmod 700 etc/munge/munge.key
chown 999 /etc/munge/munge.key
su -s /bin/bash -c "munged --key-file /etc/munge/munge.key" munge
/usr/sbin/slurmd -Dvvv -s 