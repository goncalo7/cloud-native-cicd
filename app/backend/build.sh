#!/bin/bash

NAME=$(cat name.txt)
if [ -z "$(git status --porcelain)" ]; then 
  VERSION=$(cat version.txt)
  NEWVERSION=$(./release_version.sh -p $VERSION)
  echo creating version $NEWVERSION
  docker build . --tag 0.0.0.0:5000/$NAME:$NEWVERSION
  echo $NEWVERSION > version.txt
  docker push 0.0.0.0:5000/backend:$NEWVERSION
  git tag $NAME-$NEWVERSION 
  git add .
  git commit -m "bump $NAME version to $NEWVERSION"
  git push 
  git push --tags
else 
  echo "Dirty Repo - Please commit your changes before build"
fi
