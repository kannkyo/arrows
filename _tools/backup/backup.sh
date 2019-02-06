#!/bin/bash

# reference
# https://docs.docker.com/storage/volumes/#backup-restore-or-migrate-data-volumes

backup_volume () {
  container=`echo $1 | cut -d , -f 1`
  volume=`echo $1 | cut -d , -f 2`
  directory=`echo $1 | cut -d , -f 3`

  src=/backup
  dst=$(pwd)/backupdata
  src_gz=$src/$volume.tar.gz
  dst_gz=$dst/$volume.tar.gz

  set -x
  if test -e $dst_gz; then
    rm $dst_gz
  fi
  docker stop $container
  docker run --rm --volumes-from $container -v $dst:$src ubuntu tar zcf $src_gz -C / $directory
  docker start $container
  set +x
}

# backup
while read row; do
  backup_volume $row
done < backupinfo.csv
