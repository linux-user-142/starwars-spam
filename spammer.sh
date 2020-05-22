#!/bin/bash

if test -f "$HOME/Downloads/anewhope.txt"; then

	rm ~/Downloads/anewhope.txt
fi



curl https://www.imsdb.com/scripts/Star-Wars-A-New-Hope.html > $HOME/Downloads/anewhope.txt

if test -f "$HOME/Downloads/spamfile.txt"; then
	
	rm $HOME/Downloads/spamfile.txt

fi

sed -n 244,8369p $HOME/Downloads/anewhope.txt > $HOME/Downloads/spamfile.txt

input="$HOME/Downloads/spamfile.txt"
while IFS= read -r line
do
	echo "$line"
done < "$input"

exec ls -alh
