#!/bin/bash
docker kill app > /dev/null 2>&1
docker rm app > /dev/null 2>&1
docker run -d --name app -p 9999:8080 emasos/bizops
sleep 3
curl -v http://localhost:9999