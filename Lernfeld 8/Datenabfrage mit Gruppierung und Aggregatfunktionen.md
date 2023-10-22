**Aufgabe 1** Lassen Sie sich alle Orte auflisten, in denen Kunden wohnen und die Anzahl der
dort wohnenden Kunden

```sql
SELECT `Ort`, COUNT(`Kunden-Code`) 
FROM `kunden` 
GROUP BY `Ort`
```
<br>

**Aufgabe 2** Lassen Sie sich alle Kategorien (nur die Kategorie-Nr) der Artikel auflisten. Dazu
sind jeweils folgende Angaben zu machen: Die Anzahl der Artikel, der
Durchschnittspreis, sowie der Max und der Min-Preis bzgl. aller einer Kategorie
zugeordneten Artikel.

```sql
SELECT `Kategorie-Nr`, COUNT(`Artikel-Nr`), AVG(`Einzelpreis`), MAX(`Einzelpreis`), MIN(`Einzelpreis`) 
FROM `artikel` 
GROUP BY `Kategorie-Nr`
```
<br>

**Aufgabe 3a** Lassen Sie sich zum Zweck der Erfassung der Personal-Altersstruktur alle
Geburtsjahrgänge mit der jeweiligen Anzahl der Personen dieses Geburtsjahrganges
auflisten.

```sql
SELECT YEAR(`Geburtsdatum`) as "Geburtsjahr", COUNT(*) AS 'Anzahl' 
FROM `personal` 
GROUP BY year(`Geburtsdatum`)
```
<br>

**Aufgabe 3b** Unterteilen Sie die Erfassung nach der Anrede (damit soll in erster Linie die
Trennung in männliche und weibliche Mitarbeiter erreicht werden).

```sql
SELECT YEAR(`Geburtsdatum`) AS 'Geburtsjahr', COUNT(`Personal-Nr`) AS 'Anzahl',`Anrede`
FROM `personal`
WHERE Anrede not like 'DR.'
GROUP BY YEAR(`Geburtsdatum`),`Anrede`
ORDER BY YEAR(Geburtsdatum)
```
<br>

**Aufgabe 4** Lassen Sie sich für alle Monate des Jahres 1997 jeweils die Anzahl der
eingegangenen Bestellungen auflisten.

```sql
SELECT MONTH(`Bestelldatum`) as 'Monat', count(`Bestell-Nr`) as 'AnzahlBestellungen'
FROM `bestellungen`
WHERE YEAR(`Bestelldatum`) = 1997
GROUP BY MONTH(`Bestelldatum`)
```
<br>

**Aufgabe 5** Lassen Sie alle Kunden (nur mit Kundennummer) und die Anzahl ihrer in Auftrag
gegebenen Bestellungen auflisten.

```sql
SELECT `Kunden-Code`, count(`Bestell-Nr`) as 'AnzahlBestellungen' 
FROM `bestellungen`
GROUP BY `Kunden-Code`
```
<br>

**Zusatz  a)** Es sollen nur die Bestellungen erfasst werden, die nach dem 01.10.96 in Auftrag
gegeben worden sind.

```sql
SELECT `Kunden-Code`, count(`Bestell-Nr`) as 'AnzahlBestellungen', Bestelldatum
FROM `bestellungen`
WHERE YEAR(`Bestelldatum`) >= 1996 
AND MONTH(`Bestelldatum`) >=10
AND DAY(`Bestelldatum`) >1
GROUP BY `Kunden-Code`
```

**Zusatz b)** Es sollen nur die Kunden aufgelistet werden, die mindestens 5 Bestellungen in
Auftrag gegeben haben.

```sql
SELECT `Kunden-Code`, count(`Bestell-Nr`) as 'AnzahlBestellungen' 
FROM `bestellungen`
GROUP BY `Kunden-Code`
HAVING count(`Bestell-Nr`) >= 5
```

**Zusatz c)** Es sollen nur die Bestellungen erfasst werden, bei denen zwischen Bestelldatum
und Lieferdatum weniger als 15 Tage vergangen waren.

```sql
SELECT `Kunden-Code`, count(`Bestell-Nr`) as 'AnzahlBestellungen'
FROM `bestellungen`
WHERE DATEDIFF(`Lieferdatum`,`Bestelldatum`) < 15
GROUP BY `Kunden-Code`
```
<br>

**Aufgabe 6** Lassen Sie sich alle Positionen (Funktion in ihrer Firma) der Kunden auflisten mit
der jeweiligen Anzahl der Kunden.

```sql
SELECT `Position`, count(`Kunden-Code`) as 'AnzahlKunden'
FROM `kunden`
GROUP by Position
```