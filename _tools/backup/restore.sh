#!/bin/bash

# reference
# https://docs.docker.com/storage/volumes/#backup-restore-or-migrate-data-volumes

restore_volume () {
  container=`echo $1 | cut -d , -f 1`
  volume=`echo $1 | cut -d , -f 2`
  directory=`echo $1 | cut -d , -f 3`


  src=$(pwd)/restoredata
  dst=/backup

  set -x
  docker stop $container
  docker run --rm --volumes-from $container -v $src:$dst ubuntu bash -c "cd ${directory} && pwd && ls -l && ls -A | xargs rm -rf"
  docker run --rm --volumes-from $container -v $src:$dst ubuntu bash -c "cd / && tar zxf ${dst}/${volume}.tar.gz && pwd && ls -l ${directory}"
  docker start $container
  set +x
}

# restore
while read row; do
  restore_volume ${row}
done < backupinfo.csv

