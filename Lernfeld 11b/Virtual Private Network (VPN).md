*Ein virtuelles Netzwerk, das über ein bestehendes Netzwerk aufgespannt wird, um auf dem virtuellen Netzwerk Schutzziele umsetzen*
	 -> *Vertraulichkeit*
	 -> *Integrität*
	 -> *Authentizität*

</br>

### <p style="text-align: center;">VPN-Szenarien</p>

**1. site-to-site**
![[site-to-site-vpn.svg]]
Verbindung von mehreren Firmenstandorten

</br>


**2. site-to-end**
![[site-to-end-vpn.svg]]
Verbindung eines Clients zu einem Firmennetzwerk

</br>

**3. end-to-end**
![[end-to-end-vpn.svg]]
Client verbindet sich mit weiteren Client (Remote-Desktop-Verbindung)

</br>


### <p style="text-align: center;">Transport- und Tunnelmodus (HA)</p>
![[Transport-undTunnelmodus.drawio.svg]]

</br>

### <p style="text-align: center;">Security Association (SA)</p>

**Satz von Sicherheitsparametern**
+ IP-Adressen der Endpunkte
+ Verschlüsselungsverfahren
+ Auth - Verfahren
+ Schlüssellänge
+ Schlüsselslebensdauer

Für jede Verbindung wird eine SA angelegt. Die SAs werden in die Security Association Data Base (SADB) abgelegt