cat /etc/passwd |sed '/^#/d' |cut -f1 -d':'| awk 'NR >=2 && NR%2==0' |rev |sort -r|
cat /etc/passwd |sed '/^#/d' |cut -f1 -d':'| awk 'NR >=2 && NR%2==0'|rev |sort -r|tr '\n' ',*'|sed 's/, */, /g'| sed '$ s/, $//g'| awk '/'"$FT_LINE1"'/ , /'"$FT_LINE2"'/'| sed 's/$/./'
