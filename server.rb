require 'socket'

server = TCPServer.open(9999)

loop do
  Thread.start(server.accept) do |client|
    client.puts "Thank you for visiting this fabulous server!"
    client.close
  end
end
