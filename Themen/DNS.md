*... setzt menschenlesbare Domänen-Namen (z. B. www.amazon.com) in maschinenlesbare IP-Adressen (z. B. 192.0.2.44) um.*

#### autoritative Antwort
*der Server holt die Daten aus einer lokalen Zonendatei*

Eine autoritative Antwort erfolgt, wenn der angefragte Domainname in einer Zone enthalten ist, für die der angefragte Nameserver zuständig ist. Ob eine Anfrage autoritativ, also aus einer lokalen Zonendatei, beantwortet wurde, wird durch das Flag _Authoritative Answer_ (AA) in der DNS-Antwort definiert

#### rekursive Abfrage #nicht-autoritativ
*der Server holt die Daten von einem anderen Nameserver*



#### iterative Abfrage #nicht-autoritativ
*der Server antwortet mit einem Verweis auf andere Nameserver*