path="$HOME/.config/bash"

# Auto load all aliases
for file in "$path/aliases/"*.sh; do
  [ -f "$file" ] && source "$file"
done
