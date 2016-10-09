# Network Programming Basics (Python)

# To use the socket module
import socket

# To create a new socket object
sock = socket.socket()

# To get your local machine's name
host = socket.gethostname() 

# To declare a port for your service
port = 80

# To bind a (hostname, port number) pair to a socket
sock.bind(host, port)

# To set up and start a TCP listener (wait for client connection)
sock.listen()

# To accept a connection
# Note: accept() returns a (conn, address) pair where conn is a new socket object that can be used to send/receive data on the connection. Address refers to the address bound on the other end of the connection.
connection, address = sock.accept()

# To transmit a TCP message (continuing from previous example)
connection.send('Message goes here')

# To transmit a UDP message 
# Note: the socket should not be connected to a remote socket because we are specifying the destination address
connection.sendto('Message goes here', destination_address)

# To close the connection
connection.close()

# To receive TCP data from a socket (assuming s is the socket on the client side). 1024 is the buffer size and data is a string.
data = s.recv(1024)

# To receive UDP data from a socket
# Note: recvfrom() returns a (string, address) pair, where string is the data received and address represents the address of the socket from which the message was sent. 
data, addr = s.recvfrom()

# To get a remote address that a socket is connected to
sock.getpeername()



