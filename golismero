#Golismero Cheat Sheet
#Jason Soto <www.jsitech.com>

#GoLismero is an open source framework for security testing. It's currently geared towards web security

#Syntax 

golismero.py [-h] [--help] [-f FILE] [--config FILE] [--user-config FILE] [-p NAME] [--ui-mode MODE] [-v] [-q] [--color]
                    [--no-color] [--audit-name NAME] [-db DATABASE] [-nd] [-i FILENAME] [-ni] [-o FILENAME] [-no] [--full] [--brief]
                    [--allow-subdomains] [--forbid-subdomains] [--parent] [-np] [-r DEPTH] [--follow-redirects] [--no-follow-redirects]
                    [--follow-first] [--no-follow-first] [--max-connections MAX_CONNECTIONS] [-l MAX_LINKS] [-pu USER] [-pp PASS]
                    [-pa ADDRESS] [-pn PORT] [--cookie COOKIE] [--user-agent USER_AGENT] [--cookie-file FILE] [--persistent-cache]
                    [--volatile-cache] [-a PLUGIN:KEY=VALUE] [-e PLUGIN] [-d PLUGIN] [--max-concurrent N] [--plugin-timeout N]
                    [--plugins-folder PATH]
                    COMMAND [TARGET [TARGET ...]]

#available commands

  SCAN:
    Perform a vulnerability scan on the given targets. Optionally import
    results from other tools and write a report. The arguments that follow may
    be domain names, IP addresses or web pages.

  RESCAN:
    Same as SCAN, but previously run tests are repeated. If the database is
    new, this command is identical to SCAN.

  PROFILES:
    Show a list of available config profiles. This command takes no arguments.

  PLUGINS:
    Show a list of available plugins. This command takes no arguments.

  INFO:
    Show detailed information on a given plugin. The arguments that follow are
    the plugin IDs. You can use glob-style wildcards.

  REPORT:
    Write a report from an earlier scan. This command takes no arguments.
    To specify output files use the -o switch.

  IMPORT:
    Import results from other tools and optionally write a report, but don't
    scan the targets. This command takes no arguments. To specify input files
    use the -i switch.

  DUMP:
    Dump the database from an earlier scan in SQL format. This command takes no
    arguments. To specify output files use the -o switch.

  LOAD:
    Load a database dump from an earlier scan in SQL format. This command takes
    no arguments. To specify input files use the -i switch.

  UPDATE:
    Update GoLismero to the latest version. Requires Git to be installed and
    available in the PATH. This command takes no arguments.

#positional arguments
  COMMAND               action to perform
  TARGET                zero or more arguments, meaning depends on command

#optional arguments
  -h                    show this help message and exit
  --help                show this help message and exit

#main options
  -f FILE, --file FILE  load a list of targets from a plain text file
  --config FILE         global configuration file
  --user-config FILE    per-user configuration file
  -p NAME, --profile NAME
                        profile to use
  --ui-mode MODE        UI mode
  -v, --verbose         increase output verbosity
  -q, --quiet           suppress text output
  --color               use colors in console output
  --no-color            suppress colors in console output

#audit options
  --audit-name NAME     customize the audit name
  -db DATABASE, --audit-db DATABASE
                        specify a database filename
  -nd, --no-db          do not store the results in a database
  -i FILENAME, --input FILENAME
                        read results from external tools right before the audit
  -ni, --no-input       do not read results from external tools

#report options
  -o FILENAME, --output FILENAME
                        write the results of the audit to this file (use - for stdout)
  -no, --no-output      do not output the results
  --full                produce fully detailed reports
  --brief               report only the highlights

#network options
  --allow-subdomains    include subdomains in the target scope
  --forbid-subdomains   do not include subdomains in the target scope
  --parent              include parent folders in the target scope
  -np, --no-parent      do not include parent folders in the target scope
  -r DEPTH, --depth DEPTH
                        maximum spidering depth (use "infinite" for no limit)
  --follow-redirects    follow redirects
  --no-follow-redirects
                        do not follow redirects
  --follow-first        always follow a redirection on the target URL itself
  --no-follow-first     don't treat a redirection on a target URL as a special case
  --max-connections MAX_CONNECTIONS
                        maximum number of concurrent connections per host
  -l MAX_LINKS, --max-links MAX_LINKS
                        maximum number of links to analyze (0 => infinite)
  -pu USER, --proxy-user USER
                        HTTP proxy username
  -pp PASS, --proxy-pass PASS
                        HTTP proxy password
  -pa ADDRESS, --proxy-addr ADDRESS
                        HTTP proxy address
  -pn PORT, --proxy-port PORT
                        HTTP proxy port number
  --cookie COOKIE       set cookie for requests
  --user-agent USER_AGENT
                        set a custom user agent or 'random' value
  --cookie-file FILE    load a cookie from file
  --persistent-cache    use a persistent network cache [default]
  --volatile-cache      use a volatile network cache

#plugin options:
  -a PLUGIN:KEY=VALUE, --plugin-arg PLUGIN:KEY=VALUE
                        pass an argument to a plugin
  -e PLUGIN, --enable-plugin PLUGIN
                        enable a plugin
  -d PLUGIN, --disable-plugin PLUGIN
                        disable a plugin
  --max-concurrent N    maximum number of plugins to run concurrently
  --plugin-timeout N    timeout in seconds for the execution of a plugin
  --plugins-folder PATH
                        cheacustomize the location of the plugins
#Example
#Show Available Plugins
$ ./golismero.py plugins


#Available Plugins
#Import plugins

csv_nikto:
    Import the results of a Nikto scan in CSV format.

csv_spiderfoot:
    Import the results of a SpiderFoot scan in CSV format.

xml_nmap:
    Import the results of an Nmap scan in XML format.

xml_openvas:
    Import the results of an OpenVAS scan in XML format.

xml_sslscan:
    Import the results of an SSLScan run in XML format.

#Recon plugins

dns:
    DNS resolver plugin.
    Without it, GoLismero can't resolve domain names to IP addresses.

dns_malware:
    Detect if a domain has been potentially spoofed, hijacked.

exploitdb:
    Integration with Exploit-DB (http://www.exploit-db.com/)
    This plugin requires a working Internet connection to run.

fingerprint_web:
    Fingerprinter of web servers.

geoip:
    Geolocates IP addresses using online services.
    This plugin requires a working Internet connection to run.

punkspider:
    Integration with PunkSPIDER (http://punkspider.hyperiongray.com/)
    This plugin requires a working Internet connection to run.

robots:
    Analyzes robots.txt files and extracts their links.

shodan:
    Integration with Shodan: http://www.shodanhq.com/
    This plugin requires a working Internet connection to run.

spider:
    Web spider plugin.
    Without it, GoLismero can't crawl web sites.

spiderfoot:
    Integration with SpiderFoot: http://www.spiderfoot.net/

theharvester:
    Integration with theHarvester: https://github.com/MarioVilas/theHarvester/

#Scan plugins

brute_directories:
    Tries to discover hidden folders by brute force:
    www.site.com/folder/ -> www.site.com/folder2 www.site.com/folder3 ...

brute_dns:
    Tries to find hidden subdomains by brute force.

brute_url_extensions:
    Tries to discover hidden files by brute force:
    www.site.com/index.php -> www.site.com/index.php.old

brute_url_permutations:
    Tries to discover hidden files by bruteforcing the extension:
    www.site.com/index.php -> www.site.com/index.php2

brute_url_predictables:
    Tries to discover hidden files at predictable locations.
    For example: (Apache) www.site.com/error_log

brute_url_prefixes:
    Tries to discover hidden files by bruteforcing prefixes:
    www.site.com/index.php -> www.site.com/~index.php

brute_url_suffixes:
    Tries to discover hidden files by bruteforcing suffixes:
    www.site.com/index.php -> www.site.com/index2.php

nikto:
    Integration with Nikto: https://www.cirt.net/nikto2

nmap:
    Integration with Nmap: http://nmap.org/

openvas:
    Integration with OpenVAS: http://www.openvas.org/

plecost:
    WordPress vulnerabilities analyzer, completely rewritten for GoLismero,
    based on the original idea of Plecost (https://code.google.com/p/plecost/)
    and their team: @ffranz and @ggdaniel

sslscan:
    Integration with SSLScan: http://sourceforge.net/projects/sslscan/

zone_transfer:
    Detects and exploits DNS zone transfer vulnerabilities.

#Attack plugins

heartbleed:
    Test for the CVE-2014-0160 vulnerability (aka "heartbleed attack").

sqlmap:
    SQL Injection plugin, using SQLMap.
    Only retrieves the DB banner, does not exploit any vulnerabilities.

xsser:
    Integration with XSSer: http://xsser.sourceforge.net/

#Report plugins

bson:
    BSON (Binary JSON) output for programmatic access.

csv:
    Writes reports in Comma Separated Values format.

html:
    Writes reports as offline web pages.

json:
    JSON output for programmatic access.

latex:
    Writes reports in LaTeX document format (.tex).

log:
    Extracts only the logs.

ltsv:
    Extracts only the logs, in labeled tab-separated values format.

msgpack:
    MessagePack output for programmatic access.
    See: http://msgpack.org/

odt:
    Writes reports in OpenOffice document format (.odt).

rst:
    Writes reports in reStructured Text format.

text:
    Writes plain text reports to a file or on screen.

xml:
    XML output for programmatic access.

yaml:
    YAML output for programmatic access.

#UI plugins

console:
    Console user interface. This is the default.

disabled:
    Empty user interface. Used by some unit tests.

#Examples
#scan a website and show the results on screen:
$./golismero.py scan http://www.example.com

#grab Nmap results, scan all hosts found and write an HTML report:
$./golismero.py scan -i nmap_output.xml -o report.html

#grab results from OpenVAS and show them on screen, but don't scan anything:
$./golismero.py import -i openvas_output.xml

#show information on plugins:
$./golismero.py info [plugin_name]
$./golismero.py info theharvester
$./golismero.py info plecost
$./golismero.py info brute*

#Scan using specific plugins
$./golismero.py scan [domain] -e <plugin>
$./golismero.py scan example.com -e plecost
$./golismero.py scan example.com -e plecost -e theharvester

#Scan using multiple plugins with wildcard
$./golismero scan example.com -e brute*

#Scanning and generating a HTML report
$././golismero.py scan example.com -o example.html

#dump the database from a previous scan:
$./golismero.py dump -db example.db -o dump.sql

#Add Shodan API Key to Golismero
$mkdir ~/.golismero
$nano ~/.golismero/user.conf
[shodan:Configuration]
apikey = <INSERT YOUR SHODAN API KEY HERE>



