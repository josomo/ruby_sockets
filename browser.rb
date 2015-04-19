require 'socket'

request = "GET index.html HTTP/1.1\r\n\r\n"

socket = TCPSocket.open('www.example.com', 80)
socket.print(request)
response = socket.read
headers,body = response.split("\r\n\r\n", 2)
puts "Headers: \n #{headers}"
puts
puts "Body: \n #{body}"
