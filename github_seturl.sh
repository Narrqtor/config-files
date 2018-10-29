#!/usr/bin/env bash

# this script sets up the remote url for ssh authentication for github repositories

echo "This scipt will change the URL of the github repository from existing to : git+ssh://git@github.com/..."

echo -n "Please enter github username and repository name (case sensitive): "

read name repository
echo $name $repository

git remote set-url origin git+ssh://git@github.com/$name/$repository

git remote show origin
