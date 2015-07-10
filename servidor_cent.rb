require 'socket'


  server = UDPSocket.new
  porta = 2100
  server.bind("localhost",porta)
    puts "Servidor conectado na porta #{porta}. Aguardando conexao  ..."
 
  loop do

     mensagem, sender = server.recvfrom(1024)
     host = sender [3]
     port = sender [1]
     msg = mensagem.split
     server.send(mensagem, 0,host,port)
        if msg[0] == "REG"
         if msg[1] != nil && msg[2] != nil
        end
         end

           begin
     		puts "Solicitacao de registro sendo recebida pelo dominio!"
    	        #dbh.execute("insert into servidores (dominio, ip) values ( \"#{solicitacao[1]}\", \"#{solicitacao[2]}\")")
     		puts "Registro efetuado com sucesso!"
    		 server.send "REGOK", 0 , host, port
    	 rescue
    	 	puts "registro de dominio realizado."
    	 	server.send "REGFALHA", 0 ,host, port 
    	 else
               # puts " Falha Inesperada "
                   server.send "FALHA", 0, host, port

   
  
    		 puts "Host #{host}:#{port} enviou um pacote UDP: #{mensagem}"
    			 break unless mensagem.chomp != "exit"
	end
	   end
	puts "exit recebido, servidor deconectado."
	server.close


