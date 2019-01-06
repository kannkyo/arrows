#!/bin/sh

remote=//samba/shared
local=/mnt/shared

#setup
clear

#execute
smbclient -L samba -N
mkdir /mnt/shared
mount -t cifs $remote $local -o user=,password=
ls -l $local
