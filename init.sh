#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR/..

REF=${1:-master}

echo Trying to checkout $REF

git fetch origin
git reset --hard
git checkout $REF
git pull