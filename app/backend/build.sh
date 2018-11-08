#!/bin/bash

NAME=$(cat name.txt)
if [ -z "$(git status --porcelain)" ]; then 
  VERSION=$(cat version.txt)
  NEWVERSION=$(./release_version.sh -p $VERSION)
  echo creating version $NEWVERSION
  docker build . --tag 0.0.0.0:5000/$NAME:$NEWVERSION
  git tag $NAME-$NEWVERSION
  git push --tags
  echo $NEWVERSION > version.txt
  docker push 0.0.0.0:5000/backend:$NEWVERSION
else 
  echo "Dirty Repo - Please commit your changes before build"
fi
