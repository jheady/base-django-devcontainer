#!/bin/bash

if [ ! -n "$1" ]
then
    echo "Usage: `basename $0` new_project_name"
    exit 1
fi

PROJECT_NAME="$1"
BASE_DIRECTORY=$( dirname -- "$( readlink -f -- "$0"; )"; )
PARENTDIR=`dirname $BASE_DIRECTORY`


cd $PARENTDIR
mkdir -p $PROJECT_NAME
cp -r $BASE_DIRECTORY/.devcontainer $PROJECT_NAME
cp -r $BASE_DIRECTORY/requirements.txt $PROJECT_NAME
sed -ie "s/baseDjangoContainer/$PROJECT_NAME/" $PROJECT_NAME/.devcontainer/devcontainer.json
cd $PROJECT_NAME
