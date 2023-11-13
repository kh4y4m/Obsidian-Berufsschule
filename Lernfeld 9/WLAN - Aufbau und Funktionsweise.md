**WLAN-Varianten**	
	**WLAN**
		WLAN ermöglicht den Internetzugang innerhalb eines Gebäudes oder eines begrenzten Außenbereiche.
		Kabel/Glasfaser > Modem > WLAN-Router
	<br>**WMAN**
		Wireless Metropolitan Area Network ermöglicht den **Internetzugang in Städten**. Diese Netzwerke decken eine größere Fläche ab.
		APs sind über ein kabelgebundenes Netzwerk mit dem Internet verbunden
		kabelgebundes Netzwerk > AP > Client
	<br>**WWAN**
		Wireless Wide Area Network nutzen die Mobilfunktechnologie, um den Zugang außerhalb der Reichweite eines WLAN oder WMAN Netzwerken 
<br>

**Zugriffsverfahren zur Benutzung der Luftschnittstelle**
<br>

**Problematik der "Hidden Station"**
	Das "Hidden Station  Problem (HSP)" tritt auf wenn >2 Knoten welche nicht in der Reichweite von einander sind, Daten übertragen auf einen gemeinsamen Knoten. <br>
	Knoten **A** und **C** sind nicht in Reichweite von einander und Übertragen Daten an nahegelegenen Knoten, inklusive **B**. Knoten **B** erhält gleichzeitig Daten von **A** und **C**, was zu einer **Datenkollision und zum Verwurf der Daten führt**.
	   
	![[Hidden Station Problem.svg]] ![[Hidden Station ProblemBlack.svg]]
<br>
**Sicherheitseinstellungen und Verschlüsselungsverfahren**
	MAC-Filter gegen unberechtigte Nutzung, Verschlüsselung einrichten, Sicheres WLAN- und Gerätepasswort wählen, Empfangleistung an die notwendige Fläche anpassen (Schutz vor Wardriving), außerhalb des Betriebs WLAN ausschalten, WPS funktion abschalten.
	Verschlüsselung durch Wi-Fi Protected Access (WPA)
<br>

**Rechtliche Vorschriften (Datensicherheit, Datenschutz)**
	[Drittes Gesetz zur Änderung des Telemediengesetzes (3. TMGÄndG)](https://www.bmwk.de/Redaktion/DE/Artikel/Service/entwurf-telemediengesetz-drei.html) förder die Verbreitung von WLAN und schafft Sicherheit für die Betreiber, z. Bsp. Café-Betreiber. Es ist nun erlaubt, den Kunden unverschlüsselte WLAN-Hotspots anzubieten, ohne dass der Betreiber rechtlich belangt werden kann für die Aktivitäten, die über dieses Netzwerk stattfinden. Betreiber dürfen nicht von Behörden verpflichtet werden, dass sie ihre Kunden zum Registrieren zwingen.
<br>
**Elektromagnetische Verträglichkeit**
	Die sogenannte elektromagnetische Verträglichkeit stellt sicher, dass in einer elektromagnetischen Umgebung alle Geräte zufriedenstellend funktionieren (EMV-Richtlinie 2014/30/EU). <br>
	Geräte, die mittels EMVG in der EU käuflich zu erwerben sind, müssen mit dem CE-Siegel gekennzeichnet sein.<br> 
	WLAN und Bluetooth nutzen die gleiche Frequenz (2,4-GHz), was zu Problemen führen kann, die Lösung wäre es eine andere Frequenz für das WLAN zu nutzen.
<br>
**Aufbau eines WLAN-Frames**
	
	![[802.11_frame.png]]
<br><br>
**Sicherungsmaßnahmen**


---
Quellen: [WLAN-Varianten](https://www.computerweekly.com/de/feature/Die-vier-verschiedenen-Arten-von-drahtlosen-Netzwerken),  [Problematik der "Hidden Station"](https://www.educative.io/answers/what-is-the-hidden-terminal-problem), [Sicherheitseinstellungen und Verschlüsselungsverfahren](https://www.telekom.de/hilfe/festnetz-internet-tv/sicherheit/wlan-sicherheit?samChecked=true), [rechtliche Vorschriften (Datensicherheit, Datenschutz)](https://www.bmwk.de/Redaktion/DE/Artikel/Digitale-Welt/wlan.html)[
Elektromagnetische Verträglichkeit](https://logistikknowhow.com/energie-und-umwelt/elektromagnetische-vertraeglichkeit-nach-emv-richtlinie-und-emvg/)

