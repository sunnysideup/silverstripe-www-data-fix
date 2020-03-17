LINE='alias www-owns-assets="sudo chown www-data public/assets -R"'

FILE='~/.bash_aliases'

touch $FILE

grep -qsFx -- "$LINE" $FILE || echo "$LINE" >> $FILE

