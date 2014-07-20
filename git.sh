#!/bin/bash

if [ $1 == "push" ];
then
  read -p "Are you sure? (y/n)" yn
  case $yn in
  [Yy]* )
    git "$@"
  esac
else
  git "$@"
fi
