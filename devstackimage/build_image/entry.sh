#!/bin/bash
git clone --progress $GIT_URL$GIT_REPO.git 
cd /$GIT_REPO
sbt $1 $2
rm -rf /target/*
cp -r target/* /target