![[ISO-OSI-7-Schichten-Modell_(in_Deutsch).svg|650]]
#### Zusammenfassung
7.Schicht / '''Anwendung''': Funktionen für Anwendungen sowie die Dateneingabe und -ausgabe.

6.Schicht / '''Darstellung''': Umwandlung der systemabhängigen Daten in ein unabhängiges Format.

5.Schicht / '''Sitzung''': Steuerung der Verbindungen und des Datenaustauschs.

4.Schicht / '''Transport''': Zuordnung der Datenpakete zu einer Anwendung.

3.Schicht / '''Vermittlung''': Routing der Datenpakete zum nächsten Knoten.

2.Schicht / '''Sicherung''': Segmentierung der Pakete in Frames und Hinzufügen von Prüfsummen.

1.Schicht / '''Bitübertragung''': Umwandlung der Bits in ein zum Medium passendes Signal und physikalische Übertragung


|   |   |
|---|---|
|Anwendung|Telnet, FTP, HTTP, SMTP, NNTP|
|Darstellung|Telnet, FTP, HTTP, SMTP, NNTP, NetBIOS|
|Kommunikation|Telnet, FTP, HTTP, SMTP, NNTP, NetBIOS, TFTP|
|Transport|TCP, UDP, SPX, NetBEUI|
|Vermittlung|IP, IPX, ICMP, T.70, T.90, X.25, NetBEUI|
|Sicherung|LLC/MAC, X.75, V.120, ARP, HDLC, PPP|
|Übertragung|Ethernet, Token Ring, FDDI, V.110, X.25, Frame Relay, V.90, V.34, V.24|


|   |   |   |   |   |   |   |   |
|---|---|---|---|---|---|---|---|
|**OSI-Schicht**|   |**Einordnung**|**[TCP/IP-Referenzmodell](https://de.wikipedia.org/wiki/Internetprotokollfamilie#TCP/IP-Referenzmodell)**|**Einordnung**|**Protokollbeispiele**|**Einheiten**|**Kopplungselemente**|
|7|Anwendung  <br>(Application)|Anwendungs-  <br>orientiert|Anwendung|Ende zu  <br>Ende  <br>([Multihop](https://de.wikipedia.org/wiki/Direktverbindung))|[DHCP](https://de.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol)  <br>[DNS](https://de.wikipedia.org/wiki/Domain_Name_System)  <br>[FTP](https://de.wikipedia.org/wiki/File_Transfer_Protocol)  <br>[HTTP](https://de.wikipedia.org/wiki/Hypertext_Transfer_Protocol)  <br>[HTTPS](https://de.wikipedia.org/wiki/Hypertext_Transfer_Protocol_Secure)  <br>[LDAP](https://de.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol)  <br>[MQTT](https://de.wikipedia.org/wiki/Message_Queuing_Telemetry_Transport)  <br>[NCP](https://de.wikipedia.org/wiki/NetWare_Core_Protocol)  <br>[RTP](https://de.wikipedia.org/wiki/Real-Time_Transport_Protocol)  <br>[SMTP](https://de.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol)  <br>[XMPP](https://de.wikipedia.org/wiki/Extensible_Messaging_and_Presence_Protocol)|Daten|[Gateway](https://de.wikipedia.org/wiki/Gateway_(Informatik)), [Content-Switch](https://de.wikipedia.org/wiki/Content-Switch), [Proxy](https://de.wikipedia.org/wiki/Proxy_(Rechnernetz)), Layer-4-7-Switch|
|6|Darstellung  <br>(Presentation)|
|5|Sitzung  <br>(Session)|
|4|Transport  <br>(Transport)|Transport-  <br>orientiert|Transport|[TCP](https://de.wikipedia.org/wiki/Transmission_Control_Protocol)  <br>[UDP](https://de.wikipedia.org/wiki/User_Datagram_Protocol)  <br>[SCTP](https://de.wikipedia.org/wiki/Stream_Control_Transmission_Protocol)  <br>[SPX](https://de.wikipedia.org/wiki/Sequenced_Packet_Exchange)|[TCP = Segmente](https://de.wikipedia.org/wiki/OSI-Modell#Schicht_4_–_Transportschicht)  <br>[UDP = Datagramme](https://de.wikipedia.org/wiki/Datagramm)|
|3|Vermittlung-/Paket  <br>(Network)|Internet|[ICMP](https://de.wikipedia.org/wiki/Internet_Control_Message_Protocol)  <br>[IGMP](https://de.wikipedia.org/wiki/Internet_Group_Management_Protocol)  <br>[IP](https://de.wikipedia.org/wiki/Internet_Protocol)  <br>[IPsec](https://de.wikipedia.org/wiki/Internet_Protocol_Security)  <br>[IPX](https://de.wikipedia.org/wiki/Internetwork_Packet_Exchange)|[Pakete](https://de.wikipedia.org/wiki/Datenpaket)|[Router](https://de.wikipedia.org/wiki/Router), [Layer-3-Switch](https://de.wikipedia.org/wiki/Layer-3-Switch)|
|2|Sicherung  <br>(Data Link)|Netzzugriff|[Punkt zuPunkt](https://de.wikipedia.org/wiki/Direktverbindung)|IEEE 802.3 [Ethernet](https://de.wikipedia.org/wiki/Ethernet)  <br>[IEEE 802.11](https://de.wikipedia.org/wiki/IEEE_802.11) WLAN  <br>[TLAP](https://de.wikipedia.org/wiki/TokenTalk_Link_Access_Protocol)  <br>[FDDI](https://de.wikipedia.org/wiki/Fiber_Distributed_Data_Interface)  <br>[MAC](https://de.wikipedia.org/wiki/Media_Access_Control)  <br>[Token Ring](https://de.wikipedia.org/wiki/Token_Ring)  <br>[ARCNET](https://de.wikipedia.org/wiki/ARCNET)|Rahmen ([Frames](https://de.wikipedia.org/wiki/Datenframe))|[Bridge](https://de.wikipedia.org/wiki/Bridge_(Netzwerk)), [Layer-2-Switch](https://de.wikipedia.org/wiki/Switch_(Computertechnik)), [Wireless Access Point](https://de.wikipedia.org/wiki/Wireless_Access_Point)|
|1|Bitübertragung  <br>(Physical)|[1000BASE-T](https://de.wikipedia.org/wiki/1000BASE-T)  <br>[Token Ring](https://de.wikipedia.org/wiki/Token_Ring)  <br>[ARCNET](https://de.wikipedia.org/wiki/ARCNET)|[Bits](https://de.wikipedia.org/wiki/Bit), [Symbole](https://de.wikipedia.org/wiki/Symbol_(Nachrichtentechnik))|[Netzwerkkabel](https://de.wikipedia.org/wiki/Netzwerkkabel), [Repeater](https://de.wikipedia.org/wiki/Repeater), [Hub](https://de.wikipedia.org/wiki/Hub_(Netzwerk))|