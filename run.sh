#!/bin/sh
docker rm eclipse > /dev/null 2> /dev/null
xhost + > /dev/null
docker run -id -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 --name eclipse eclipse
sleep 10 && xhost - > /dev/null
