Aufgabe 1:
Lassen Sie sich alle Orte auflisten, in denen Kunden wohnen und die Anzahl der dort wohnenden Kunden.
```sql
SELECT `Ort` , COUNT(*) AS `Kundenzahl`
FROM `Kunden`
GROUP BY `Ort`
```
<br>

Aufgabe 2:
Lassen Sie sich alle die Lieferanten (Firma) absteigend geordnet nach der Postleitzahl auflisten bei denen im Attribut Telefax kein Wert eingetragen ist.
```sql
SELECT `Firma`
FROM `Lieferanten`
WHERE `Telefax` IS NULL
ORDER BY `PLZ` DESC
```
<br>

Aufgabe 3:
Lassen Sie sich zum Zweck der Erfassung der Personal-Altersstruktur alle Geburtsjahrgänge (Spaltenüberschrift: Jahrgang) mit der jeweiligen Anzahl der Personen (SÜ: Personenzahl) dieses Geburtsjahrgangs auflisten.
```sql
SELECT YEAR(`Geburtsdatum`) AS `Jahrgang` , COUNT(*) AS `Personenzahl`
FROM `Personal`
GROUP BY `Jahrgang`
```
<br>

Aufgabe 4: 
Lassen Sie sich für alle Monate des Jahres 2012 jeweils die Anzahl der in Auftrag gegebenen Bestellungen (SÜ: Bestellanzahl) auflisten.
```sql
SELECT MONTH(`Bestelldatum`) AS `Monat` , COUNT(*) AS `Bestellungen`
WHERE YEAR(`Bestelldatum`) = '2012'
GROUP BY `Monat`
```
<br>

Aufgabe 5:
Lassen Sie sich alle Kunden (nur mit Kunden-Code) und die Anzahl ihrer in Auftrag gegebenen Bestellungen (SÜ: Bestellanzahl) auflisten. Es sollen nur die Kunden aufgelistet werden, die weniger als 10 Bestellungen in Auftrag gegeben haben.
```sql
SELECT `Kunden-Code` , COUNT(*) AS `Bestellanzahl`
FROM `Bestellungen`
GROUP BY `Kunden-Code`
HAVING `Bestellanzahl` < 10
```
