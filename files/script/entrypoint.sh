#!/bin/bash

PATH=$PATH:~/.local/bin

export SOURCE_PATH='/opt/source'
export BINARY_PATH=$(dirname "$0")

. $BINARY_PATH/source.sh
. $BINARY_PATH/version_bumper.sh

printf "\n\n" | git-flow init

case $1 in
  feature) echo feature ;;
  bugfix) echo bugfix ;;
  release)
    . $BINARY_PATH/wrapper/release.sh
  ;;
  hotfix) echo hotfix ;;
  support) echo support ;;
  *) echo 'sho me how it works' ;;
esac