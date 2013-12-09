# andrew <andrewjkerr>
# currently learning ruby - a few things that I keep forgetting
# sockets
require 'socket'
hostname = localhost
port = 1337
s = TCPSocket.open(hostname, port)
s.close

# for loops
5.times do |i|
	#do something
end
array.each { |n| #do something }

# files
file = File.open("filename", "rb")
contents = file.read
file.close

# sending emails
require 'net/smtp'
message = <<MESSAGE_END
From: <from>
To: <to>
Subject: <subject>

Message!
MESSAGE_END

smtp = Net::SMTP.new 'smtp.gmail.com', 587
smtp.enable_starttls
smtp.start('gmail.com', '<gmail.com email>', '<gmail.com password>', :login)
smtp.send_message message, '<from>', '<to>'
smtp.finish

# delays
sleep n		#number of seconds

# interact with webpages
require 'net/http'
source = Net::HTTP.get('www.example.com', '/dir/index.html')
