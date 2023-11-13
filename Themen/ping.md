*... ist ein Diagnose-Werkzeug, mit dem überprüft werden kann, 
ob ein bestimmter Host erreichbar ist.*

Ping nutzt ICMP (Internet Control Message Protocol). Es wird ein **ICMP echo request** an den Zielhost gesendet und es wird ein **ICMP echo reply** vom Zielhost als Antwort gesendet.

![[ping.drawio.svg]]

input: 
`ping 8.8.8.8`
output:
```powershell
Pinging 8.8.8.8 with 32 bytes of data:
Reply from 8.8.8.8: bytes=32 time=7ms TTL=119
Reply from 8.8.8.8: bytes=32 time=7ms TTL=119
Reply from 8.8.8.8: bytes=32 time=7ms TTL=119
Reply from 8.8.8.8: bytes=32 time=6ms TTL=119

Ping statistics for 8.8.8.8:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 6ms, Maximum = 7ms, Average = 6ms
```
