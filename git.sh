#!/bin/bash

day=$(date +"%A")
if [ $1 == "push" ];
then
  read -p "Are you sure? (y/n)" yn
  case $yn in
  [Yy]* )
    if [ $day == "Wednesday" ];
    then
      read -p "Remember... today is WEDNESDAY"
    fi
  git "$@"
  esac
else
  git "$@"
fi
