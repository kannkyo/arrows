#!/bin/bash

# reference
# https://docs.docker.com/storage/volumes/#backup-restore-or-migrate-data-volumes

backup_volume () {
  container=`echo $1 | cut -d , -f 1`
  volume=`echo $1 | cut -d , -f 2`
  directory=`echo $1 | cut -d , -f 3`

  src=/backup
  dst=$(pwd)/backupdata

  set -x
  rm $dst/$volume.tar.gz
  docker run --rm --volumes-from $container -v $dst:$src ubuntu tar zcf $src/$volume.tar.gz $directory
  set +x
}

# backup
while read row; do
  backup_volume $row
done < backupinfo.csv

