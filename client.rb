require 'socket'

s = TCPSocket.open('localhost', 9999)
puts s.gets
s.close
