LINE='alias www-owns-assets="sudo chown www-data public/assets -R"'

FILE="$HOME/.bash_aliases"

touch $FILE

grep -qsFx -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

echo "-----------------------------";
echo "ADDED:";
echo "... $LINE";
echo "-----------------------------";
echo "TO:";
echo "... $FILE";
echo "-----------------------------";
