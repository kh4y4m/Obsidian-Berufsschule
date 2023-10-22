<br>
<center>CIA</center>

**Aufgabe 1** Zeige von jeder Region den Namen und die Anzahl der Länder an.
```sql
SELECT Region,
COUNT(*) AS AnzahlLaender
FROM `cia_2018`
GROUP BY Region
```

```csvtable
source: Anhang/LF8/A1_ML_cia_2018.csv
```
<br>

**Aufgabe 2** Zeige für alle Regionen den Namen und die Anzahl der Länder mit mehr als 10 Millionen Einwohnern an.
```sql
SELECT Region,
COUNT(*) AS AnzahlLaender
FROM `cia_2018`
WHERE `Einwohner` > 10000000
GROUP BY Region
```
```csvtable
source: Anhang/LF8/A2_ML_cia_2018.csv
```
<br>

**Aufgabe 3** Welche Regionen haben eine Gesamtbevölkerung von mindestens 100 Millionen?
```sql
SELECT Region,
SUM(Einwohner) AS GesamtBevoelkerung
FROM `cia_2018`
GROUP BY Region
HAVING GesamtBevoelkerung >= 100000000
```
```csvtable
source: Anhang/LF8/A3_ML_cia_2018.csv
```
<br>

**Aufgabe 4** Stelle die Regionen der Erde mit Einwohnerzahl und Gesamtfläche dar, geordnet nach der Einwohnerzahl (absteigend).
```sql
SELECT Region,
SUM(Einwohner) AS GesamtBevoelkerung,
SUM(`Fläche`) AS GesamtFlaeche
FROM `cia_2018`
GROUP BY Region
ORDER BY GesamtBevoelkerung DESC
```
```csvtable
source: Anhang/LF8/A4_ML_cia_2018.csv
```
<br>

**Aufgabe 5** Wie Aufgabe 4, aber nur die Regionen von Amerika.
```sql
SELECT Region,
SUM(Einwohner) AS GesamtBevoelkerung,
SUM(`Fläche`) AS GesamtFlaeche
FROM `cia_2018`
WHERE `Region` LIKE ('%amerika%')
GROUP BY Region
ORDER BY GesamtBevoelkerung DESC
```
```csvtable
source: Anhang/LF8/A5_ML_cia_2018.csv
```
<br>

<center>WM</center>

**Aufgabe 6** Ermittle die von jedem Weltmeister erreichte Gesamtzahl von WM-Punkten und stelle das Ergebnis nach WM-Punkten geordnet dar (absteigend).
```sql
SELECT `Fahrerweltmeister`,
SUM(`WM_Punkte`) AS GesamtPunktzahl
FROM `wm_titel`
GROUP BY Fahrerweltmeister
ORDER BY `GesamtPunktzahl` DESC
```
```csvtable
source: Anhang/LF8/A6_ML_wm_titel.csv
```
<br>

**Aufgabe 7** Welche Gesamtpunktzahlen der Konstrukteursweltmeisterschaft haben die Teams in den neunziger Jahren erreicht?
```sql
SELECT `KonstrukteursWM`,
SUM(`Team_Punkte`) AS GesamtPunktzahl
FROM `wm_titel`
WHERE `Saison`BETWEEN 1990 AND 1999
GROUP BY `KonstrukteursWM`
```
```csvtable
source: Anhang/LF8/A7_ML_wm_titel.csv
```
<br>

**Aufgabe 8** Wie vorherige Aufgabe, allerdings sollen nur Teams mit mindestens 200 Punkten ausgegeben werden.
```sql
SELECT `KonstrukteursWM`,
SUM(`Team_Punkte`) AS GesamtPunktzahl
FROM `wm_titel`
WHERE `Saison`BETWEEN 1990 AND 1999
GROUP BY `KonstrukteursWM`
HAVING GesamtPunktzahl >= 200
```
```csvtable
source: Anhang/LF8/A8_ML_wm_titel.csv
```
<br>

**Aufgabe 9** Ermittle für die Jahre, in denen Michael Schumacher Weltmeister wurde, die durchschnittliche Zahl der erreichten Team-Punkte des Konstrukteursweltmeisters und stelle die Liste geordnet dar.
```sql
SELECT `KonstrukteursWM`,
AVG(`Team_Punkte`) AS DurchschnittlichePunktzahl
FROM `wm_titel`
WHERE `Fahrerweltmeister` LIKE '%Schumacher'
GROUP BY `KonstrukteursWM`
ORDER BY DurchschnittlichePunktzahl
```
```csvtable
source: Anhang/LF8/A9_ML_wm_titel.csv
```
<br>

**Aufgabe 10** Ermittle ab 1995 in geordneter Reihenfolge (absteigend)  
die Gesamtzahl der Team-Punkte für Teams mit mindestens 200 Punkten.
```sql
SELECT `KonstrukteursWM`,
SUM(`Team_Punkte`) AS GesamtPunktzahl
FROM `wm_titel`
WHERE `Saison` >= 1995
GROUP BY `KonstrukteursWM`
HAVING Gesamtpunktzahl >= 200
ORDER BY Gesamtpunktzahl DESC
```
```csvtable
source: Anhang/LF8/A10_ML_wm_titel.csv
```