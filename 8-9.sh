#The password for the next level is stored in the file data.txt and is the only line of text that occurs only once

cat data.txt | sort | uniq -u
#OR
sort data.txt | uniq -u

#password:
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM