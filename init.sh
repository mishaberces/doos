#!/bin/bash
REF=${1:-master}

echo Trying to checkout $REF

git fetch origin
git reset --hard
git checkout $REF
git pull