**Aufgabe:** Eine Firewall verbietet oder erlaubt eingehende und ausgehende Verbindungen auf Grund ausgehenden Verbindungen auf Grund von Regeln 

#### **Regelwerk**
- Die Regeln einer FW werden in Regelwerken sortiert
- Ein Regelwerk wird von oben nach unten abgearbeitet, sobald eine Regel auf das zu prüfende Paket passt (MATCH!), wird die Regel angewendet und das Regelwerk verlassen
- Die Reihenfolge der Regeln im Regelwerk ist wichtig

#### Allow-List 
Alles was nicht explizit erlaubt, ist verboten.
#### Blocklist
Alles was nicht explizit verboten ist, ist erlaubt
</br>

Firewall-Arten

**1) Paketfilter**
- Filterkriterium: IP-Adressen und Ports
- Layer 3 (4)

![[IP-Frame_Paketfilter.drawio.svg|300]]
</br>
**2) Paketfilter mit Stateful Paket Inspection (SPI)**
- Pakte werden einer Verbindung zugeordnet
- Wenn eine Verbindung erlaubt ist, sind auch alle zugehörigen Pakete erlaubt. 
- Es ist keine separate Regel für die Antwort nötig
- FW kennt den Verbindungszustand


</br>

**3) Circuit Level Gateway** (vgl. L4 Proxy)
- die TCP-Verbindung wird gespiegelt
	**A ⇆ FW ⇆ B** 
</br>

**4) Application Layer/Gateway Level**
- Filterkriterium: IP-Adressen, Port, L7-Protokolle (Content)


![[IP-Frame_App.drawio.svg]]


Der Aufbau und der Nachrichtenverlauf der zu filternden Protokolle muss klar sein
</br>

**5) Next Generation Firewall (NGFW)**
- Application Layer Gateway 
  + NAT-Router
  + IDS/IPS
  + VPN-GW
  + ....

#### DMZ
![[DMZ.drawio.svg]]
- Alle Dienste, die aus dem öffentlichem Bereich erreichbar sein müssen, werden in die DMZ platziert
- die direkte Kommunikation zwischen öffentlichen Netzwerk und privaten Netzwerk ist verboten.
- die Firewalls sind idealerwiese von unterschiedlichen Herstellern
- das BSI empfiehlt den Einsatz unterschiedlicher FW-Arten

