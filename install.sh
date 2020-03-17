LINE1='alias apache-owns-assets="sudo chown www-data public/assets -R"'
LINE2='alias cli-owns-assets="sudo chown $USER public/assets -R"'

FILE="$HOME/.bash_aliases"

touch $FILE

grep -qsFx -- "$LINE1" "$FILE" || echo "$LINE1" >> "$FILE"

echo "-----------------------------";
echo "ADDED:";
echo "... $LINE1";
echo "-----------------------------";
echo "TO:";
echo "... $FILE";
echo "-----------------------------";


grep -qsFx -- "$LINE2" "$FILE" || echo "$LINE2" >> "$FILE"

echo "-----------------------------";
echo "ADDED:";
echo "... $LINE2";
echo "-----------------------------";
echo "TO:";
echo "... $FILE";
echo "-----------------------------";
