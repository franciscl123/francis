import socket

s= socket.socket()
#port on which to connect

port = 10117

s.connect(('127.0.0.1', port))

#receive data from server
print(s.recv(1024))
#close connection
s.close()
