#!/bin/bash
docker volume ls -f "name=$1" -q | xargs -I {} ./backup-volume.sh -v {} -d $2
