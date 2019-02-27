#!/bin/sh

rpm -q --quiet docker
docker=$?
rpm -q --quiet docker-engine
dockerengine=$?
rpm -q --quiet docker-ce
dockerce=$?

if [ "$docker" = "1" -a "$dockerengine" = "1" -a "$dockerce" = "1" ]; then
	echo "Please install docker|docker-engine|docker-ce"
	echo "If you use e.g., dvdcli, irgnore this message"
fi
