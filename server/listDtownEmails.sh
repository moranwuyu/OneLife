find lifeLog/ -type f -mtime -30 -mtime +0 -print0 | xargs -0 grep -h "noParent" | grep ",-20" | sed "s/B [0-9]* [0-9]* //" | sed "s/ [FM] .*//" | sort -n | uniq -c | sort -n 