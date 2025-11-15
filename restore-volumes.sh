#!/bin/bash
for i in $(docker volume ls -f "name=$1" -q); do
	rep=$(echo $i | sed -r "s/(\w+)_/$2_/g")
	./coolify-scripts/restore-volume.sh -v "$i" -f "$3/$rep.tar.gz"
done
