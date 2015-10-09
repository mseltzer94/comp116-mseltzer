require 'packetfu'

stream = PacketFu::Capture.new(:start => true, :iface => 'eth0', :promisc => true)
i=0
stream.stream.each do |raw|	
	pkt = PacketFu::Packet.parse raw
	if pkt.is_ip?
		puts "#{i}. alert for #{pkt.ip_daddr}"
		i=i+1
	end
end
