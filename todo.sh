#!/bin/bash

FILE="$HOME/todo.txt"

touch "$FILE"

case $1 in
    add)
      echo "$2" >> "$FILE"
      echo "Tache ajoutée"
      ;;
    list)
      cat -n "$FILE"
      ;;
    clear)
      > "$FILE"
      echo "Toutes les tâches ont été supprimés"
      ;;
    del)
      sed -i "${2}d" "$FILE"
      echo "Tache $2 supprimé"
      ;;
    search)
      grep -n "$2" "$FILE"
      ;;
     *)
      echo " Usage: $0 {add 'tache' | list | clear | del.NUM}"
      ;;
esac
