#!/usr/bin/env bash

languages=`echo "java js nodejs golang python tmux" | tr ' ' '\n'`
core_utils=`echo "xargs find mv cp sed awk" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if printf "$languages" | grep -qs $selected; then
    tmux neww "curl cht.sh/${selected}/`echo $query | tr ' ' '+'` & while [ : ] ; do sleep 1; done"
else 
    tmux neww "curl cht.sh/${selected}~${query} & while [ : ] ; do sleep 1; done"
fi
