#!/bin/bash

# reference
# https://docs.docker.com/storage/volumes/#backup-restore-or-migrate-data-volumes

backup_volume () {
  docker run --rm --volumes-from $1 -v $(pwd)/backupdata:/backup ubuntu tar zcvf /backup/$2.tar.gz $3
}

# delete all tar
rm backupdata/*.tar.gz

# backup
while read row; do
  volume_name=`echo ${row} | cut -d , -f 1`
  tar_name=`echo ${row} | cut -d , -f 2`
  directory_name=`echo ${row} | cut -d , -f 3`

  echo backup_volume $volume_name $tar_name $directory_name
       backup_volume $volume_name $tar_name $directory_name
done < backupinfo.csv

