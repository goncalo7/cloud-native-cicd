#!/bin/bash
VERSION=$(cat version.txt)
NEWVERSION=$(./release_version.sh -p $VERSION)
echo creating version $NEWVERSION
docker build . --tag 0.0.0.0:5000/backend:$NEWVERSION
echo $NEWVERSION > version.txt
docker push 0.0.0.0:5000/backend:$NEWVERSION
