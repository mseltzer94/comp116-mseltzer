require 'packetfu'

def null_scan? (pkt)
       return ( pkt.tcp_flags.rst==0 && 
		pkt.tcp_flags.urg==0 &&
		pkt.tcp_flags.psh==0 &&
	    	pkt.tcp_flags.syn==0 && 
		pkt.tcp_flags.fin==0 &&
		pkt.tcp_flags.ack==0)
end

def xmas_scan? (pkt)
	return (pkt.tcp_flags.rst==0 &&
                pkt.tcp_flags.urg==1 &&
                pkt.tcp_flags.psh==1 &&
                pkt.tcp_flags.syn==0 &&
                pkt.tcp_flags.fin==1 &&
                pkt.tcp_flags.ack==0)

end

def fin_scan? (pkt)
	return (pkt.tcp_flags.rst==0 &&
                pkt.tcp_flags.urg==0 &&
                pkt.tcp_flags.psh==0 &&
                pkt.tcp_flags.syn==0 &&
                pkt.tcp_flags.fin==1 &&
                pkt.tcp_flags.ack==0)
end

def nmap_scan? (pkt)
       return ((pkt.payload)=~(/\x4E\x6D\x61\x70/))
end

def creditcard? (pkt)
	#regex from http://www.sans.org/security-resources/idfaq/snort-detect-credit-card-numbers.php
	#note: this will only detect visa, mastercard, discover, and amex
	return ((/4\d{3}(\s|-)?\d{4}(\s|-)?\d{4}(\s|-)?\d{4}/).match(pkt.payload)||
		(/5\d{3}(\s|-)?\d{4}(\s|-)?\d{4}(\s|-)?\d{4}/).match(pkt.payload)||
		(/6011(\s|-)?\d{4}(\s|-)?\d{4}(\s|-)?\d{4}/).match(pkt.payload)  ||
		(/(3\d{3}(\s|-)?\d{6}(\s|-)?\d{5})/).match(pkt.payload))
end 		

def nikto? (pkt)
       return ((pkt.payload)=~(/\x4E\x69\x6B\x74\x6F/))
end

def alert (desc, pkt, i)
        puts "#{i}. ALERT: #{desc} is detected for #{pkt.ip_saddr} (#{pkt.proto}) (#{pkt.payload})!"
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
       		 end

        end
end


def alert_parse (desc, line, i)
	# split while retaining quotes
	# regex from http://stackoverflow.com/questions/11566094/trying-to-split-string-into-single-words-or-quoted-words-and-want-to-keep-the
	s = line.split(/\s(?=(?:[^"]|"[^"]*")*$)/)
	ip_addr = s[0]
	payload = s[5]
	if line =~ /http/i
		proto = "HTTP"
	else
		proto = "UDP"
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
	return line =~/Nikto/i
end

def shellcode? (line)
	#based on information from http://www.linuxdevcenter.com/pub/a/linux/2006/05/18/how-shellcodes-work.html
	return line =~/\\x/i
end


def read_log (log)
	if (log == nil)
                puts "no log file specified"
                return
        end
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

def read_pcap(pcap)
	if (pcap == nil)
		puts "no pcap file specified"
		return
	end
	p = Pcap.open_offline(pcap)
	p = PacketFu::PcapFile.read(pcap)
	i=0
	p.each do |raw|
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
                 end
	end
end


# command line options
if (ARGV.length == 0)
	live_stream()
else
	case ARGV[0]
	when "-r"
		read_log(ARGV[1]);
	when "-p"
		read_pcap(ARGV[1]);
	end
end	
