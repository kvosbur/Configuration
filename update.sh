#!/usr/bin/env bash

prev=$(pwd)

cd ~/.config

#receive updates on the git repo and ignore its output
git remote update &> /dev/null

UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")

NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[0;32m'

if [ $LOCAL = $REMOTE ]; then
    echo -e "${GREEN}Shell Config Up To Date${NC}"
elif [ $LOCAL = $BASE ]; then
    echo -e "${RED}Updating Shell Config${NC}"
    git pull
    echo -e "${GREEN}Shell Config Up To Date${NC}"
    echo -e "Please Reopen Terminal to get updated Config"
fi

cd $prev
