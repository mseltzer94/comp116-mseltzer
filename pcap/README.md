set1.pcap

1. How many packets are there in this set?
  - 861
2. What protocol was used to transfer files from PC to server?
  - FTP
3. Briefly describe why the protocol used to transfer the files is insecure?
  - The password and username are sent in plaintext
4. What is the secure alternative to the protocol used to transfer files?
  - SFTP
5. What is the IP address of the server?
  - 192.168.1.8
6. What was username and password used to access the server?
  - User: defcon
    PW: m1ngisablowhard
7. How many files were transferred from PC to server?
  - 3
8. What are the names of the files transferred from PC to server?
  - CDkv69qUsAAq8zN.jpg  
  - CKBXgmOWcAAtc4u.jpg  
  - CNsAEaYUYAARuaj.jpg
  - CJoWmoOUkAAAYpx.jpg  
  - CLu-m0MWoAAgjkr.jpg  
  - COaqQWnU8AAwX3K.jpg

9. Extract all the files that were transferred from PC to server. These files must be part of your submission!

set2.pcap

10. How many packets are there in this set?
  - 77982

11. How many plaintext username-password pairs are there in this packet set? Please count any anonymous or generic accounts.
  -

12. Briefly describe how you found the username-password pairs.

13. For each of the plaintext username-password pair that you found, identify the protocol used, server IP, the corresponding domain name (e.g., google.com), and port number.

IMPORTANT NOTE: PLEASE DO NOT LOG ON TO THE WEBSITE OR SERVICE ASSOCIATED WITH THE USERNAME-PASSWORD THAT YOU FOUND!

14. Of all the plaintext username-password pairs that you found, how many of them are legitimate? That is, the username-password was valid, access successfully granted? Please do not count any anonymous or generic accounts.

set3.pcap

15. How many plaintext username-password pairs are there in this packet set? Please count any anonymous or generic accounts.

16. For each of the plaintext username-password pair that you found, identify the protocol used, server IP, the corresponding domain name (e.g., google.com), and port number.

IMPORTANT NOTE: PLEASE DO NOT LOG ON TO THE WEBSITE OR SERVICE ASSOCIATED WITH THE USERNAME-PASSWORD THAT YOU FOUND!

17. Of all the plaintext username-password pairs that you found, how many of them are legitimate? That is, the username-password was valid, access successfully granted? Please do not count any anonymous or generic accounts.

18. Provide a listing of all IP addresses with corresponding hosts (hostname + domain name) that are in this PCAP set. Describe your methodology.

General Questions

19. How did you verify the successful username-password pairs?
  - View the TCP Stream and verify that a logon success message was sent in response to a logon request.
20. What advice would you give to the owners of the username-password pairs that you found so their account information would not be revealed "in-the-clear" in the future?
  - Use HTTPS (secured) so that the info is encrypted and use OAUTH and SAML to ensure that static usernames and passwords won't compromise
accounts.  
