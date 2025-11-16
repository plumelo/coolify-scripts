#!/bin/bash
cdir="$(dirname "${BASH_SOURCE[0]}")"
docker volume ls -f "name=$1" -q | xargs -I {} $cdir/backup-volume.sh -v {} -d $2
