import socket
import sys

s = socket.socket()
print("Socket is successfully created")

# Reserve a port for the TCP stream socket
port = 10117

s.bind(('', port))
print("socket binded to %s" %(port))

# set the socket into listening mode
s.listen(5)
print("socket is listening")

# An infinite loop until we interrupt or an error occurs

while True:
	# Establish connection with client.
	c, addr = s.accept()
	print("Got connection from", addr)
	# send a thank you message to the client.
	output = "Thank you for connecting"
	c.sendall(output.encode('utf-8'))
	#close the connection with client
	c.close()


	# 

