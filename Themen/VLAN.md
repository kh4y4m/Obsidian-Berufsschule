#### Virtual Local Area Network
<font size=3>*Das Netzwerk im Netzwerk*</font>
#### Überblick
**Definition**
*VLANs (Virtual Local Area Networks) **unterteilen ein bestehendes einzelnes physisches Netzwerk in mehrere logische Netzwerke**. Jedes VLAN bildet dabei eine eigene Broadcast-Domain. Eine Kommunikation zwischen zwei unterschiedlichen VLANs ist nur über einen Router möglich, der an beide VLANs angeschlossen ist.*

**Funktionsweise**
*Die Ethernet Header der Datenpakete werden, von aktiven Netzwerkkomponenten, um das entsprechende
VLAN-Tag erweitert.*

**Nutzen**
* *Effizienteres nutzen der vorhandenen physikalischen Infrastruktur*
* *Verbesserter TCO*
* *Erhöhen der Sicherheit, durch frühe Abgrenzung der Datenpakete*
* *Reduzieren des Broadcast-Traffics*
---
#### Wo?
![[VLAN_Ethernetpaket.svg]]
VLAN-Tag Feld:
>TPID – Tag Protocol Identifier:
>> Fester Wert 8100 (Hex)

TCI – Tag Control Information:
> PCP – Priority Code Point (3 Bit)
> DEI– Drop Eligible Indicator (1 Bit)
> VID– VLAN-Identifier (12 Bit)

#### Funktionsweise
##### **Betriebsarten**
**Untagged**
*Endgeräte benötigen keinerlei Informationen mitzugeben, die Aufgabe übernimmt der Switch
-> pro Port ist lediglich ein (beliebiges) untagged VLAN möglich*

+ Datenpakete ohne Tag werden nicht abgewiesen
+ Sie bekommen das dem Port zugewiesene VLAN-Tag vom Switch hinzugefügt
+ Clients können so zwischen Netzsegmenten wechseln, ohne manuelle Anpassung

**Tagged**
*Endgeräte senden den entsprechenden VLAN-Tag mit
-> Für Switch-Switch oder Server-Switch Kommunikation unerlässlich*

+ Datenpakete ohne entsprechendes Tag werden abgewiesen
+ Reduziert die Last auf dem Switch, weil Pakete nicht angepasst werden müssen
+ Mehrere gleichzeitige Verbindungen zwischen Endgeräten möglich

**Trunk**
*Ein gemischter Betrieb aus tagged und untagged VLANs.
-> Wird häufig im Bereich Edge-Port (Telefon + PC an gleichem Port oder Port für W-LAN Access Point) verwendet*

+ Pakete ohne entsprechendes Tag werden angepasst
+ Pakete mit entsprechendem Tag werden ebenfalls durchgelassen
+ Mehrere gleichzeitige Verbindungen zwischen Endgeräten möglich