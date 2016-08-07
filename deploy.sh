#!/bin/bash
docker kill app > /dev/null 2>&1
docker rm app > /dev/null 2>&1
docker run -d --name app -p 9898:9090 kohsuke/acmecorp-buildenv
sleep 3
curl -v http://localhost:9898
