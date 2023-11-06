*... ist ein Computerprogramm, das ermittelt, über welche Router und Internet-Knoten IP-Datenpakete bis zum angefragten Rechner gelangen*

Traceroute sendet mehrfach **ICMP echo request** an den Zielhost, jeder Route der an der Übertragung beteiligt ist erhält diese Pakete.
![[tracert.drawio.svg]]

```
traceroute to wikipedia.de (130.94.122.197), 30 hops max, 40 byte packets
 1  fli4l.Netz1 (192.168.0.1)  0.765 ms 0.651 ms 0.497 ms
 2  217.5.98.7 (217.5.98.7)  14.499 ms 14.648 ms 21.394 ms
 3  217.237.152.46 (217.237.152.46)  14.831 ms 13.655 ms 13.403 ms
 4  62.154.14.134 (62.154.14.134)  118.090 ms 119.522 ms 119.665 ms
 5  p16-1-0-3.r20.asbnva01.us.bb.verio.net (129.250.9.141)  117.004 ms 117.370 ms 117.073 ms
 6  p64-0-0-0.r21.asbnva01.us.bb.verio.net (129.250.2.35)  119.105 ms 119.284 ms 119.206 ms
 7  p16-0-1-2.r20.plalca01.us.bb.verio.net (129.250.2.192)  180.035 ms 195.498 ms 178.704 ms
 8  p16-1-0-0.r06.plalca01.us.bb.verio.net (129.250.3.81)  177.280 ms 177.263 ms 176.692 ms
 9  p4-0-3-0.r00.sndgca01.us.bb.verio.net (129.250.3.10)  194.322 ms 193.477 ms 193.743 ms
10  ge-1-1.a03.sndgca01.us.da.verio.net (129.250.27.84)  192.527 ms 193.003 ms 192.464 ms
11  Pliny.wikipedia.org (130.94.122.197)  192.604 ms 193.875 ms 194.254 ms
```