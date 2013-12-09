# andrew <andrewjkerr>
# basic sql injection prevention
$sth = $db->prepare("SELECT * FROM table WHERE username=? and password=?");
$sth->execute([$pUsername $pPassword]);
$results = $stmt->fetchAll(PDO:FETCH_ASSOC);

# basic xss prevention
strip_tags(string); # http://www.php.net/manual/en/function.strip-tags.php

## can also allow certain tags:
	strip_tags(string, allowed_tags);

# strip out HTML and special characters
# source: http://stackoverflow.com/questions/7128856/strip-out-html-and-special-characters
$clear = trim(preg_replace('/ +/', ' ', preg_replace('/[^A-Za-z0-9 ]/', ' ', urldecode(html_entity_decode(strip_tags($des)))))); 
