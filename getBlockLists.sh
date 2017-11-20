curl -s https://www.iblocklist.com/lists.php \
    | sed -n "s/.*value='\(http:.*=p2p.*\)'.*/\1/p" \
    | xargs wget -O - \
    | gunzip \
    | egrep -v '^#' > ~/Library/Application\ Support/Transmission/blocklists/blocklist.txt
