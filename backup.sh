function validate_user {
  read -p "username: " user
  read -sp "password: " password
  if [ "$user" = "$(whoami)" ] && [ "$password" = "password" ]; then
    return 1
  else
    printf "\nWrong username and password.\n"
    exit 1
  fi

}

backup_loc="/tmp/$1.bak"
if [ -d "$1" ]; then
  validate_user
  cp -r "$1" "$backup_loc"

elif [ -f "$1" ]; then
  validate_user
  cp "$1" "$backup_loc"

else
  printf "\nEnter valid file/directory.\n"
  exit 1

fi

echo ""
echo "------------"
echo "Backup file: $backup_loc"
