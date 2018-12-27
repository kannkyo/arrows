#!/bin/bash

sh down.sh

docker volume prune -f
docker network prune -f
