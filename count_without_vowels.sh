echo "AWK script to count the number of lines in a file that do not contain vowels"
awk 'BEGIN {count=0} !/[AEIOUaeiou]/ {count++} END {print "Number of lines without vowels:", count}' input.txt

echo "AWK script to find the number of characters, words and lines in a file"
awk '{chars+=length; words+=NF; lines++} END {print "Number of characters:", chars; print "Number of words:", words; print "Number of lines:", lines}' input.txt
