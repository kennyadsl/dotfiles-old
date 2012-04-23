#!/bin/sh

CODE_DIR="${HOME}/Code"
DEFAULT_RUBY="1.9.2"

PROJ="$1"
PROJ_NAME=`echo $PROJ | cut -d '@' -f 1`
PROJ_RUBY=`echo $PROJ | cut -s -d '@' -f 2`
test -z $PROJ_RUBY && PROJ_RUBY=$DEFAULT_RUBY
PROJ_DIR="$CODE_DIR/$PROJ_NAME"

if [ ! -d $PROJ_DIR ]; then
  read -ep "Project $PROJ_NAME does not exist, would you like to clone it from a git repository? (y/n) "

  if ([ "$REPLY" == "y" ] || [ "$REPLY" == "yes" ]); then
    read -ep "Enter the git repository for $PROJ_NAME: "
    git clone $REPLY $PROJ_DIR
  else
    return 1
  fi

fi

if [[ -z `rvm list | grep $PROJ_RUBY` ]]; then
  read -ep "Ruby $PROJ_RUBY is not installed as a RVM ruby, would you like to install it? (y/n) "

  if ([ "$REPLY" == "y" ] || [ "$REPLY" == "yes" ]); then
    rvm install $PROJ_RUBY
  else
    return 1
  fi

fi

cd $PROJ_DIR
rvm $PROJ_RUBY@$PROJ_NAME --create
