require 'socket'

server = TCPServer.open(9999)

loop do
  client = server.accept
  client.puts "Thank you for visiting this fabulous server!"
  client.close
end
