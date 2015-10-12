Michael Seltzer
Assignment 2: Alarm

Description: 
	Alarm that allows for 
	
		- Live Capture (ruby alarm.rb) and 
			Read from PCAP file (ruby.rb -p file.pcap)
		Events:
			- NULL scan
			- FIN scan
			- Xmas scan
			- Other Nmap scans
			- Nikto scan
			- Credit card leak
		- Read from server log (ruby alarm.rb -r server.log)
		Events:
			- NMAP scan
			- Nikto scan
			- Rob Graham's Masscan
			- Shellshock Code
			- phpMyAdmin access
			- Generic shellcode
Worked With:
	- Danielle Zelin
	- Zach Kirsch
Time Spent: 6hrs

Questions:
Are the heuristics used in this assignment to determine incidents "even that good"?

The heuristics in the assignment are reasonable to detect incidents where the person performing the incident believes that their attempts are no being tracked. If however a person were to realize that for example the NMAP scan produces the word nmap within the payload of a scan, then they could easily change the behavior. However, the NULL/FIN/Xmas scan alerting is useful. 

If you have spare time in the future, what would you add to the program or do differently with regards to detecting incidents?

I would work on making the eventing more useful by keeping a log of attempts that a specific ip address tries. Then I would categorize the attempts into general categories. If then I noticied a large influx of attempts from a specific ip it might be useful to block a specific ip or at least alert a user to this behavior. 
