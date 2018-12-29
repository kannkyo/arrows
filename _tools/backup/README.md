1. Backup volume

   1. Start container
      Execute `docker-compose start` at root directory.
   2. Compress volume
      Execute `backup.sh` at current direcotry.
   3. Obtain backup data
      Obtain backup data ( `*.tar.gz` files ) from `./backupdata`.

2. Restore volume

   1. Store restore data
      Store backup data ( `*.tar.gz` files ) to `./restoredata`.

   2. Down container
      Execute `docker-compose down` at root directory.

   3. Restore
      Execute `restore.sh` at current direcotry.

      Restore shell (`restore.sh`) recreate the volume and un-tar backup data to the volume from `./restoredata`.

