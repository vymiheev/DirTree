#!/bin/bash

MNT_DIR="mnt_dir_tree"
VERSION=0.1
DOCKER_ID=vymiheev
CONTAINER_NAME=dir_tree
TAG_NAME="$DOCKER_ID/$CONTAINER_NAME"

d=${d:--1}
p=${p:-${PWD}}
f=${f:-true}

while [ $# -gt 0 ]; do
  if [[ $1 == *"--"* ]]; then
    param="${1/--/}"
    declare $param="$2"
    #    echo $1 $2
  fi
  shift
done

if [[ $p != "/"* ]]; then
  p="${PWD}/${p}"
fi

echo ${PWD}
#echo "/$MNT_DIR/$p" $d

echo run --rm -v /:/$MNT_DIR:ro --name $CONTAINER_NAME $TAG_NAME:$VERSION -p="/$MNT_DIR$p" -d=$d -f=$f
echo ""
docker run --rm -v /:/$MNT_DIR:ro --name $CONTAINER_NAME $TAG_NAME:$VERSION -p="/$MNT_DIR$p" -d=$d -f=$f
