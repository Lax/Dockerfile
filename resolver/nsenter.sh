#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Usage: $0 <container_id>"
	exit
fi
sudo nsenter --target `sudo docker inspect --format {{.State.Pid}} $1` --mount --uts --ipc --net --pid
