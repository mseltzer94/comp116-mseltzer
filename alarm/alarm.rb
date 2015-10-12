require 'packetfu'
require 'optparse'

def null_scan? (pkt)
       return ( pkt.tcp_flags.rst==0 && 
		pkt.tcp_flags.urg==0 &&
		pkt.tcp_flags.psh==0 &&
	    	pkt.tcp_flags.syn==0 && 
		pkt.tcp_flags.fin==0 &&
		pkt.tcp_flags.ack==0)
end

def xmas_scan? (pkt)
	return ( pkt.tcp_flags.rst==1 &&
                pkt.tcp_flags.urg==1 &&
                pkt.tcp_flags.psh==1 &&
                pkt.tcp_flags.syn==1 &&
                pkt.tcp_flags.fin==1 &&
                pkt.tcp_flags.ack==1)

end

def fin_scan? (pkt)
	return ( pkt.tcp_flags.rst==0 &&
                pkt.tcp_flags.urg==0 &&
                pkt.tcp_flags.psh==0 &&
                pkt.tcp_flags.syn==0 &&
                pkt.tcp_flags.fin==1 &&
                pkt.tcp_flags.ack==0)
end

def nmap_scan? (pkt)
       return (((pkt.payload).to_s).include? "nmap")
end

def creditcard? (pkt)
	#todo
	return false
end 	

def nikto? (pkt)
	#todo
        return false
end

def alert (desc, pkt, i)
        puts "#{i}. ALERT: #{desc} for #{pkt.ip_saddr} (#{pkt.proto})"
        return i+1
end

def live_stream ()
        stream = PacketFu::Capture.new(:start => true, :iface => 'eth0', :promisc => true)
        i=0
        stream.stream.each do |raw|
                pkt = PacketFu::Packet.parse raw
                if (pkt.proto).include? 'TCP'
                        if null_scan? pkt
                                i = alert("NULL Scan", pkt, i)
                        end
                        if xmas_scan? pkt
                                i = alert("XMAS Scan", pkt, i)
                        end
                        if fin_scan? pkt
                                 i = alert("FIN Scan", pkt, i)
                        end

                        if nmap_scan? pkt
                                i = alert("NMAP Scan", pkt, i)
                        end
			if creditcard? pkt
                                i = alert("Plaintext credit card", pkt, i)
                        end
			if nikto? pkt
                                i = alert("nikto scan", pkt, i)
                        end
	
			#testing
                        i = alert("test", pkt, i)
                end
        end
end


def alert_parse (desc, line, i)
	# split while retaining quotes
	s = line.split(/\s(?=(?:[^"]|"[^"]*")*$)/)
	ip_addr = s[0]
	payload = s[5]
	if line =~ /http/i
		proto = "HTTP"
	end
		
	puts "#{i}. ALERT: #{desc} is detected from #{ip_addr} (#{proto}) (#{payload})!"
        return i+1
end

def phpMyAdmin? (line)
        return line =~ /phpmyadmin/i
end

def masscan? (line)
        return line =~ /masscan/i
end

def nmap? (line)
        return line =~ /nmap/i
end

def shellshock? (line)
	return line =~/() { :; }/i
end

def nikto? (line)
	#todo
	return false
end

def shellcode? (line)
	#todo
	return false
end


def read_log (log)
	i=0
	f = File.new(log)
	f.each_line do |line|
		if phpMyAdmin? line
			i = alert_parse("phpMyAdmin access", line, i)
		end
		if masscan? line
                        i = alert_parse("masscan", line, i)
                end
		if nmap? line
                        i = alert_parse("nmap scan", line, i)
                end
		if shellshock? line
                        i = alert_parse("shellshock code", line, i)
                end
		if nikto? line
                        i = alert_parse("nikto scan", line, i)
                end
		if shellcode? line
                        i = alert_parse("shell code", line, i)
                end
		
	end
end


# command line options
if (ARGV.length == 0)
	live_stream()
else
	read_log(ARGV[1]);
end
