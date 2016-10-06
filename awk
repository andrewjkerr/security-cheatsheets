# awk - pattern-directed scanning and processing language
# if you're just looking to take columns, take a look at `cut`

# awk normally uses 'space' as a delimiter.
# To force the delimiter to a 'tab':
awk -F\\t '{ print $0 }' file.txt

# print full line with awk
awk -F\\t '{ print $0 }' file.txt

# taking columns with awk
awk -F\\t '{ print $1 }' file.txt
awk -F\\t '{ print $1"\t"$2 }' file.txt

# matching on conditionals
awk -F\\t '$1 == 1 { print $0 }' file.txt > matches_one.txt
awk -F\\t '$1 != 1 { print $0 }' file.txt > does_not_match_one.txt

# take all but the first column (sed will eliminate whitespace at beginning)
awk -F\\t '{ $1=""; print $0 }' file.txt | sed 's/^\s//'

