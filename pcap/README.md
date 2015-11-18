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
  - 6
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
  - 1

12. Briefly describe how you found the username-password pairs.
  - Used ettercap and grep to search for various terms such as
    PASS, password, USER

13. For each of the plaintext username-password pair that you found, identify the protocol used, server IP, the corresponding domain name (e.g., google.com), and port number.
  - USER: "larry@radsot.com"  PASS: "Z3lenzmej"
      - Protocol: IMAP
      - Destination Port: 143
      - Server IP: 87.120.13.118
      - Domain: radsot.com

      IMPORTANT NOTE: PLEASE DO NOT LOG ON TO THE WEBSITE OR SERVICE ASSOCIATED WITH THE USERNAME-PASSWORD THAT YOU FOUND!

14. Of all the plaintext username-password pairs that you found, how many of them are legitimate? That is, the username-password was valid, access successfully granted? Please do not count any anonymous or generic accounts.
  - 1

  set3.pcap

15. How many plaintext username-password pairs are there in this packet set? Please count any anonymous or generic accounts.
  - 2
16. For each of the plaintext username-password pair that you found, identify the protocol used, server IP, the corresponding domain name (e.g., google.com), and port number.
  - USER: "seymore"  PASS: "butts"
    - Protocol: HTTP
    - Destination Port: 80
    - Server IP: 162.222.171.208
    - Domain: forum.defcon.org
  - USER: "nab01620@nifty.com" PASS: "Nifty->takirin1"
    - Protocol: IMAP
    - Destination Port: 143
    - Server IP: 210.131.4.155
    - Domain: nifty.com
  - USER: "jeff" PASS: "asdasdasd"
    - Protocol: HTTP
    - Destination Port: 143
    - Server IP: 10.139.15.225
    - Domain: ec2.intelctf.com

    IMPORTANT NOTE: PLEASE DO NOT LOG ON TO THE WEBSITE OR SERVICE ASSOCIATED WITH THE USERNAME-PASSWORD THAT YOU FOUND!

17. Of all the plaintext username-password pairs that you found, how many of them are legitimate? That is, the username-password was valid, access successfully granted? Please do not count any anonymous or generic accounts.
  - 2

18. Provide a listing of all IP addresses with corresponding hosts (hostname + domain name) that are in this PCAP set. Describe your methodology.
|                 |                                                                          |
|-----------------|--------------------------------------------------------------------------|
| 10.107.15.239   | pipe.prd.skypedata.akadns.net                                            |
|   10.107.15.239 | pipe.prd.skypedata.akadns.net                                            |
|   10.102.15.57  | 6-courier.push.apple.com                                                 |
|   10.117.15.191 | www.microsoft.com                                                        |
|   10.107.15.239 | conn.skype.akadns.net                                                    |
|   10.107.15.239 | conn.skype.akadns.net                                                    |
|   10.107.15.239 | dsn4.d.skype.net                                                         |
|   10.107.15.239 | dsn4.d.skype.net                                                         |
|   10.165.15.179 | tags.tiqcdn.com                                                          |
|   10.107.15.239 | dsn4.skype-dsn.akadns.net                                                |
|   10.165.15.179 | www.googletagmanager.com                                                 |
|   10.104.15.229 | play.google.com                                                          |
|   10.104.15.229 | play.google.com                                                          |
|   10.102.15.57  | local                                                                    |
|   10.104.15.229 | play.google.com                                                          |
|   10.104.15.229 | play.google.com                                                          |
|   10.128.15.181 | dc23-bigglesworth.slack.com                                              |
|   10.128.15.181 | dc23-bigglesworth.slack.com                                              |
|   10.137.15.235 | lh4.googleusercontent.com                                                |
|   10.115.15.203 | o.twimg.com                                                              |
|   10.117.15.191 | m.anycast.adnxs.com                                                      |
|   10.137.15.235 | fonts.gstatic.com                                                        |
|   10.137.15.235 | lh3.googleusercontent.com                                                |
|   10.117.15.191 | ib.anycast.adnxs.com                                                     |
|   10.121.12.117 | time-ios.apple.com                                                       |
|   10.121.12.117 | mesu.apple.com                                                           |
|   10.117.15.191 | flex.msn.com.nsatc.net                                                   |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.137.15.235 | oauth.googleusercontent.com                                              |
|   10.120.15.142 | kwis-opf.amazon.com                                                      |
|   10.121.12.117 | su.itunes.apple.com                                                      |
|   10.107.15.239 | www.isg-apple.com.akadns.net                                             |
|   10.107.15.239 | www.google.com                                                           |
|   10.107.15.239 | api.smoot-apple.com.akadns.net                                           |
|   10.107.15.239 | apple-mobile.query.yahooapis.com                                         |
|   10.107.15.239 | guzzoni.apple.com                                                        |
|   10.102.15.57  | gs-loc.apple.com                                                         |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.125.15.245 | 3.0.0.0.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.2.0.f.f.ip6.arpa |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.166.15.116 | api.twitter.com                                                          |
|   10.120.15.142 | android.clients.google.com                                               |
|   10.134.15.231 | nxmwory.openwifi.defcon.org                                              |
|   10.134.15.231 | bopgwhltjttaxoo.openwifi.defcon.org                                      |
|   10.134.15.231 | wnjtuueoolbxq.openwifi.defcon.org                                        |
|   10.134.15.231 | nxmwory.openwifi.defcon.org                                              |
|   10.134.15.231 | bopgwhltjttaxoo.openwifi.defcon.org                                      |
|   10.134.15.231 | wnjtuueoolbxq.openwifi.defcon.org                                        |
|   10.134.15.231 | nxmwory                                                                  |
|   10.134.15.231 | bopgwhltjttaxoo                                                          |
|   10.134.15.231 | wnjtuueoolbxq                                                            |
|   10.134.15.231 | 0.client-channel.google.com                                              |
|   10.134.15.233 | clients1.google.com                                                      |
|   10.125.15.245 | 3.0.0.0.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.2.0.f.f.ip6.arpa |
|   10.168.15.151 | api.mixpanel.com                                                         |
|   10.168.15.151 | 36-courier.push.apple.com                                                |
|   10.104.15.241 | mighty-app.appspot.com                                                   |
|   10.134.15.233 | gs-loc.ls-apple.com.akadns.net                                           |
|   10.140.15.219 | clients4.google.com                                                      |
|   10.168.15.151 | dsn11.d.skype.net                                                        |
|   10.168.15.151 | dsn11.d.skype.net                                                        |
|   10.168.15.151 | local                                                                    |
|   10.168.15.151 | local                                                                    |
|   10.139.15.225 | aus4.mozilla.org                                                         |
|   10.135.15.236 | 45-55-81-45.microplatform.io                                             |
|   10.168.15.151 | dsn11.skype-dsn.akadns.net                                               |
|   10.134.15.231 | mtalk.google.com                                                         |
|   10.134.15.231 | www.google.com                                                           |
|   10.168.15.151 | 138-trouter-cus-b.drip.trouter.io                                        |
|   10.120.15.190 | login.live.com                                                           |
|   10.115.15.193 | www.guerrillamail.com                                                    |
|   10.115.15.193 | www.guerrillamail.com                                                    |
|   10.134.15.231 | www.googleapis.com                                                       |
|   10.134.15.231 | www.google.com                                                           |
|   10.134.15.231 | wnjtuueoolbxq                                                            |
|   10.125.15.245 | 3.0.0.0.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.2.0.f.f.ip6.arpa |
|   10.129.15.180 | gs-loc.apple.com                                                         |
|   10.129.15.180 | gs-loc.apple.com                                                         |
|   10.168.15.151 | outlook.office365.com                                                    |
|   10.129.15.180 | gs-loc.ls-apple.com.akadns.net                                           |
|   10.124.15.211 | api.smoot-apple.com.akadns.net                                           |
|   10.124.15.211 | www.isg-apple.com.akadns.net                                             |
|   10.124.15.211 | mqtt.c10r.facebook.com                                                   |
|   10.134.15.231 | clients4.google.com                                                      |
|   10.121.12.117 | securemetrics.apple.com                                                  |
|   10.121.12.117 | _aaplcache._tcp                                                          |
|   10.121.12.117 | _aaplcache2._tcp                                                         |
|   10.121.12.117 | _aaplcache1._tcp                                                         |
|   10.121.12.117 | _aaplcache3._tcp                                                         |
|   10.121.12.117 | _aaplcache4._tcp                                                         |
|   10.121.12.117 | _aaplcache._tcp.openwifi.defcon.org                                      |
|   10.125.15.245 | 3.0.0.0.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.2.0.f.f.ip6.arpa |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.168.15.151 | apple.com                                                                |
|   10.168.15.151 | www.apple.com                                                            |
|   10.168.15.151 | ads.flurry.com                                                           |
|   10.168.15.151 | guzzoni.apple.com                                                        |
|   10.168.15.151 | ssl.google-analytics.com                                                 |
|   10.168.15.151 | api.parse.com                                                            |
|   10.168.15.151 | www.google.com                                                           |
|   10.121.12.117 | _aaplcache2._tcp.openwifi.defcon.org                                     |
|   10.121.12.117 | _aaplcache3._tcp.openwifi.defcon.org                                     |
|   10.121.12.117 | _aaplcache1._tcp.openwifi.defcon.org                                     |
|   10.121.12.117 | _aaplcache4._tcp.openwifi.defcon.org                                     |
|   10.121.12.117 | lcdn-locator.apple.com                                                   |
|   10.102.15.57  | static.ess.apple.com                                                     |
|   10.102.15.57  | commnat-main.ess.apple.com                                               |
|   10.102.15.57  | profile.ess.apple.com                                                    |
|   10.168.15.151 | conn.skype.com                                                           |
|   10.168.15.151 | conn.skype.com                                                           |
|   10.168.15.151 | conn.skype.akadns.net                                                    |
|   10.134.15.233 | e2842.e9.akamaiedge.net                                                  |
|   10.102.15.57  | commnat-cohort.ess.apple.com                                             |
|   10.140.15.220 | tanium.corp.ebay.com                                                     |
|   10.140.15.220 | tanium.corp.ebay.com.openwifi.defcon.org                                 |
|   10.129.15.180 | gs-loc.ls-apple.com.akadns.net                                           |
|   10.134.15.231 | apis.google.com                                                          |
|   10.134.15.231 | apis.google.com                                                          |
|   10.125.15.245 | 252.0.0.224.in-addr.arpa                                                 |
|   10.114.15.150 | stats.protonmail.ch                                                      |
|   10.103.15.4   | cloud.freedom.press                                                      |
|   10.103.15.4   | cloud.freedom.press                                                      |
|   10.103.15.13  | gs-loc.ls-apple.com.akadns.net                                           |
|   10.121.12.117 | a769.phobos.apple.com                                                    |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.125.15.245 | 252.0.0.224.in-addr.arpa                                                 |
|   10.120.15.128 | api.parse.com                                                            |
|   10.120.15.128 | api.parse.com                                                            |
|   10.120.15.128 | apptentive.com                                                           |
|   10.120.15.128 | p02-keyvalueservice.icloud.com.akadns.net                                |
|   10.120.15.128 | e3191.dscc.akamaiedge.net                                                |
|   10.120.15.128 | e3191.dscc.akamaiedge.net                                                |
|   10.120.15.128 | api.twitter.com                                                          |
|   10.128.15.179 | api.facebook.com                                                         |
|   10.117.15.191 | vpc.altitude-arena.com                                                   |
|   10.117.15.191 | c2s-openrtb.liverail.com                                                 |
|   10.117.15.191 | c2s-adap.liverail.com                                                    |
|   10.117.15.191 | c2s-run.liverail.com                                                     |
|   10.116.15.231 | www.apple.com                                                            |
|   10.116.15.231 | ssl.google-analytics.com                                                 |
|   10.116.15.231 | apple.com                                                                |
|   10.116.15.231 | local                                                                    |
|   10.168.15.151 | gs-loc.apple.com                                                         |
|   10.104.15.241 | www.google.com                                                           |
|   10.115.15.213 | gs-loc.ls-apple.com.akadns.net                                           |
|   10.124.15.211 | api.smoot-apple.com.akadns.net                                           |
|   10.124.15.211 | www.isg-apple.com.akadns.net                                             |
|   10.124.15.211 | mqtt.c10r.facebook.com                                                   |
|   10.129.15.219 | clients4.google.com                                                      |
|   10.139.15.242 | graph.facebook.com                                                       |
|   10.116.15.231 | 36-courier.push.apple.com                                                |
|   10.139.15.243 | vjatv.iespana.es                                                         |
|   10.139.15.242 | edge-mqtt.facebook.com                                                   |
|   10.139.15.242 | edge-mqtt.facebook.com                                                   |
|   10.139.15.242 | edge-mqtt.facebook.com                                                   |
|   10.120.15.190 | contacts.msn.com                                                         |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.116.15.231 | email.baidu.com                                                          |
|   10.120.15.128 | parse-api-vpc-2122016640.us-east-1.elb.amazonaws.com                     |
|   10.139.15.242 | settings.crashlytics.com                                                 |
|   10.139.15.242 | webmail.kth.se                                                           |
|   10.139.15.242 | webmail.kth.se                                                           |
|   10.125.15.208 | syndication.twitter.com                                                  |
|   10.139.15.225 | fhr.data.mozilla.com                                                     |
|   10.102.15.57  | gsp1.apple.com                                                           |
|   10.116.15.231 | guzzoni.apple.com                                                        |
|   10.134.15.233 | www.google.com                                                           |
|   10.122.15.248 | p05-keyvalueservice.icloud.com.akadns.net                                |
|   10.122.15.248 | p05-keyvalueservice.icloud.com.akadns.net                                |
|   10.134.15.231 | manpages.ubuntu.com                                                      |
|   10.134.15.231 | www.google-analytics.com                                                 |
|   10.134.15.231 | www.google-analytics.com                                                 |
|   10.113.15.139 | askubuntu.com                                                            |
|   10.113.15.139 | askubuntu.com                                                            |
|   10.128.15.183 | a.wikia-beacon.com                                                       |
|   10.134.15.231 | cse.google.com                                                           |
|   10.139.15.243 | vjatv.iespana.es                                                         |
|   10.134.15.231 | xljmgpf.openwifi.defcon.org                                              |
|   10.134.15.231 | nknowcfnsgcf.openwifi.defcon.org                                         |
|   10.134.15.231 | carfjedkemkddq.openwifi.defcon.org                                       |
|   10.134.15.231 | mtalk.google.com                                                         |
|   10.134.15.231 | xljmgpf.openwifi.defcon.org                                              |
|   10.134.15.231 | nknowcfnsgcf.openwifi.defcon.org                                         |
|   10.134.15.231 | carfjedkemkddq.openwifi.defcon.org                                       |
|   10.134.15.231 | xljmgpf                                                                  |
|   10.134.15.231 | nknowcfnsgcf                                                             |
|   10.134.15.231 | carfjedkemkddq                                                           |
|   10.134.15.231 | launchpad.net                                                            |
|   10.134.15.231 | bugs.launchpad.net                                                       |
|   10.134.15.231 | blog.dustinkirkland.com                                                  |
|   10.168.15.151 | cdn.optimizely.com                                                       |
|   10.128.15.183 | 554924358.log.optimizely.com                                             |
|   10.128.15.183 | aax.amazon-adsystem.com                                                  |
|   10.137.15.235 | clients5.google.com                                                      |
|   10.137.15.235 | www.googleadservices.com                                                 |
|   10.137.15.235 | www.gstatic.com                                                          |
|   10.134.15.231 | blog.dustinkirkland.com                                                  |
|   10.128.15.183 | b.scorecardresearch.com                                                  |
|   10.128.15.181 | slack.com                                                                |
|   10.128.15.181 | slack.com                                                                |
|   10.128.15.183 | securepubads.g.doubleclick.net                                           |
|   10.128.15.183 | optimized-by.rubiconproject.com                                          |
|   10.128.15.183 | cm.g.doubleclick.net                                                     |
|   10.128.15.183 | csi.gstatic.com                                                          |
|   10.120.15.128 | s010606.pointtoserver.com                                                |
|   10.120.15.128 | s010606.pointtoserver.com                                                |
|   10.134.15.231 | xljmgpf                                                                  |
|   10.165.15.179 | collector-191.tvsquared.com                                              |
|   10.165.15.179 | s3.amazonaws.com                                                         |
|   10.128.15.183 | apiservices.krxd.net                                                     |
|   10.128.15.183 | beacon.krxd.net                                                          |
|   10.128.15.183 | ev.visualdna.com                                                         |
|   10.128.15.183 | w.visualdna.com                                                          |
|   10.165.15.179 | login.dotomi.com                                                         |
|   10.165.15.179 | dx.steelhousemedia.com                                                   |
|   10.165.15.179 | platform.twitter.com                                                     |
|   10.135.15.236 | 45-55-81-45.microplatform.io                                             |
|   10.130.15.153 | pacsrv01.maxhealth.com                                                   |
|   10.139.15.243 | vjatv.iespana.es                                                         |
|   10.139.15.243 | vjatv.iespana.es                                                         |
|   10.120.15.190 | device.rooms.windowsphone.com                                            |
|   10.125.15.245 | 3.0.0.0.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.2.0.f.f.ip6.arpa |
|   10.128.15.183 | beacon.rubiconproject.com                                                |
|   10.140.15.220 | talkgadget.google.com                                                    |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.125.15.245 | 3.0.0.0.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.2.0.f.f.ip6.arpa |
|   10.103.15.115 | www.apple.com.edgekey.net                                                |
|   10.103.15.115 | www.apple.com.edgekey.net                                                |
|   10.135.15.236 | 45-55-81-45.microplatform.io                                             |
|   10.125.15.245 | 252.0.0.224.in-addr.arpa                                                 |
|   10.103.15.115 | time-ios.apple.com                                                       |
|   10.168.15.173 | init-cdn.itunes-apple.com.akadns.net                                     |
|   10.134.15.231 | rzxfqum.openwifi.defcon.org                                              |
|   10.134.15.231 | neugynsiojaq.openwifi.defcon.org                                         |
|   10.134.15.231 | kzgmsdil.openwifi.defcon.org                                             |
|   10.134.15.231 | rzxfqum.openwifi.defcon.org                                              |
|   10.134.15.231 | kzgmsdil.openwifi.defcon.org                                             |
|   10.134.15.231 | neugynsiojaq.openwifi.defcon.org                                         |
|   10.134.15.231 | rzxfqum                                                                  |
|   10.134.15.231 | kzgmsdil                                                                 |
|   10.134.15.231 | neugynsiojaq                                                             |
|   10.125.15.245 | 252.0.0.224.in-addr.arpa                                                 |
|   10.134.15.231 | tiles.services.mozilla.com                                               |
|   10.134.15.231 | tiles.services.mozilla.com                                               |
|   10.134.15.231 | tiles.services.mozilla.com                                               |
|   10.134.15.231 | tiles.services.mozilla.com                                               |
|   10.134.15.231 | mtalk.google.com                                                         |
|   10.130.15.153 | www.gstatic.com                                                          |
|   10.130.15.153 | pacsrv01.maxhealth.com                                                   |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.134.15.231 | www.gstatic.com                                                          |
|   10.165.15.179 | t.co                                                                     |
|   10.165.15.179 | canopylabstracking.s3.amazonaws.com                                      |
|   10.165.15.179 | px.steelhousemedia.com                                                   |
|   10.165.15.179 | a248.e.akamai.net                                                        |
|   10.103.15.115 | apple.com                                                                |
|   10.103.15.115 | star.c10r.facebook.com                                                   |
|   10.103.15.115 | star.c10r.facebook.com                                                   |
|   10.103.15.115 | api.boomtrain.com                                                        |
|   10.103.15.115 | api.boomtrain.com                                                        |
|   10.103.15.115 | pv11p02sa.guzzoni-apple.com.akadns.net                                   |
|   10.103.15.115 | api.mixpanel.com                                                         |
|   10.103.15.115 | appleweather-cache.internal.query.g03.yahoodns.net                       |
|   10.103.15.115 | www.isg-apple.com.akadns.net                                             |
|   10.103.15.115 | www.isg-apple.com.akadns.net                                             |
|   10.103.15.115 | nginx-ssl-1224277291.us-east-1.elb.amazonaws.com                         |
|   10.107.15.239 | gs-loc.ls-apple.com.akadns.net                                           |
|   10.134.15.231 | 1.client-channel.google.com                                              |
|   10.117.15.160 | everydayfeminism.com                                                     |
|   10.128.15.221 | e3191.dscc.akamaiedge.net                                                |
|   10.137.15.235 | peerio.com                                                               |
|   10.134.15.231 | ryppukfdoma.openwifi.defcon.org                                          |
|   10.134.15.231 | vegpfpynwlldhx.openwifi.defcon.org                                       |
|   10.134.15.231 | uojcdiy.openwifi.defcon.org                                              |
|   10.134.15.231 | uojcdiy.openwifi.defcon.org                                              |
|   10.134.15.231 | ryppukfdoma.openwifi.defcon.org                                          |
|   10.134.15.231 | vegpfpynwlldhx.openwifi.defcon.org                                       |
|   10.134.15.231 | uojcdiy                                                                  |
|   10.134.15.231 | ryppukfdoma                                                              |
|   10.134.15.231 | vegpfpynwlldhx                                                           |
|   10.128.15.179 | www.google.com                                                           |
|   10.165.15.179 | rto.steelhousemedia.com                                                  |
|   10.165.15.179 | insight.adsrvr.org                                                       |
|   10.165.15.179 | t.cxt.ms                                                                 |
|   10.102.15.55  | api.squareup.com                                                         |
|   10.134.15.231 | mtalk.google.com                                                         |
|   10.134.15.231 | www.google.com                                                           |
|   10.139.15.243 | vjatv.iespana.es                                                         |
|   10.103.15.184 | apple.com                                                                |
|   10.103.15.184 | local                                                                    |

  - This was performed by using tshark and filtering for dns queries
    like this:
      sudo tshark -r set3.pcap -T fields -e ip.src -e dns.qry.name -R -2 "dns.flags.response eq 0"

  General Questions

19. How did you verify the successful username-password pairs?
  - View the TCP Stream and verify that a logon success message was sent in response to a logon request.
20. What advice would you give to the owners of the username-password pairs that you found so their account information would not be revealed "in-the-clear" in the future?
  - Use HTTPS (secured) so that the info is encrypted and use OAUTH and SAML to ensure that static usernames and passwords won't compromise
accounts.  
