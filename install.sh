line1='alias apache-owns-assets="sudo chown www-data public/assets -R"'
line2='alias cli-owns-assets="sudo chown $USER public/assets -R"'

file="$HOME/.bash_aliases"

touch $file

grep -qsFx -- "$line1" "$file" || echo "$line1" >> "$file"

echo "-----------------------------";
echo "ADDED:";
echo "... $line1";
echo "-----------------------------";
echo "TO:";
echo "... $file";
echo "-----------------------------";


grep -qsFx -- "$line2" "$file" || echo "$line2" >> "$file"

echo "-----------------------------";
echo "ADDED:";
echo "... $line2";
echo "-----------------------------";
echo "TO:";
echo "... $FILE";
echo "-----------------------------";

source ~/.bashrc 
