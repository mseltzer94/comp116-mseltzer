require 'packetfu'
require 'optparse'

def null_scan? (pkt)
       return ( pkt.tcp_flags.rst==0 && pkt.tcp_flags.syn==0 && pkt.tcp_flags.ack==0)
end

def xmas_scan? (pkt)
       return ( pkt.tcp_flags.fin==1 && pkt.tcp_flags.psh==1 && pkt.tcp_flags.urg==1)
end

def fin_scan? (pkt)
       return ( pkt.tcp_flags.fin==1 && pkt.tcp_flags.psh==0 && pkt.tcp_flags.urg==0)
end

def nmap_scan? (pkt)
       return ((pkt.payload).include? "nmap")
end


stream = PacketFu::Capture.new(:start => true, :iface => 'eth0', :promisc => true)

def alert (desc, pkt, i)
	puts "#{i}. ALERT: #{desc} for #{pkt.ip_saddr} (#{pkt.proto})"
        return i+1
end

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
			
		i = alert("test", pkt, i)
	end
end

