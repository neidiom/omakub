#!/bin/bash

source $OMAKUB_PATH/bin/omakub-sub/header.sh

if [ $# -eq 0 ]; then
	SUB=$(gum choose "Theme" "Font" "Update" "Install" "Uninstall" "Manual" "Quit" --height 10 --header "What do you want to do?" --cursor-prefix "> " --header.foreground "240")
else
	SUB=$1
fi

[ -n "$SUB" ] && [ "$SUB" != "quit" ] && source $OMAKUB_PATH/bin/omakub-sub/$SUB.sh
