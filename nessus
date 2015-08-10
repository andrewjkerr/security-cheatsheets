# Jose Moruno Cadima <@sniferl4bs>
#Nessus 
#SERVER
nessusd [–c config-file] [-a address] [-p port-number] [-D] [-d]
-c <config-file> -a <listen_on_address>
-p <port number> -D (daemon mode)
-v (version info) -h (help)
-d (dumps compilation options)

#CLIENT
nessus [-v][-h][-n][-T <type>][-q [-pPS] host port user password targets results
-c <nessusrc-file> -q (quiet/batch mode)
-p (obtain plugin-list) -P (obtain plugin preferences)
-S (SQL output for -p and -P) -V (verbose)
-x (don’t check SSL certs) -v (version)
-h (help) -n (no-pixmaps)

#Server connection parameters
Host: IP of nessusd server
Port: Port on which nessusd server is running (default 1241)
User: User name to use for connecting to nessusd.
Password: Login credentials

#Output format
-T nbe -T html -T html
_graph
-T text -T xml -T old-xml
-T tex -T nsr

#Example
nessus –qa –T nbe 127.0.0.1 1241 john d03 targets.txt results.nbe

#Report Conversion
nessus -i in.[nsr|nbe] -o out.[html|xml|nsr|nbe]
