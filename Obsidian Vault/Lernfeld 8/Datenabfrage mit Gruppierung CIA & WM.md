<br>
<center>CIA</center>

**Aufgabe 1** Zeige von jeder Region den Namen und die Anzahl der Länder an.
```sql
SELECT `Region`, Count(`Name`) as 'Anzahl der Länder'
FROM `cia_2018`
GROUP BY Region
```
<br>

**Aufgabe 2** Zeige für alle Regionen den Namen und die Anzahl der Länder mit mehr als 10 Millionen Einwohnern an.
```sql
SELECT `Region`, Count(`Name`) as 'Anzahl der Länder', `Einwohner`
FROM `cia_2018`
WHERE Einwohner > 10E06
GROUP BY Region
```
<br>

**Aufgabe 3** Welche Regionen haben eine Gesamtbevölkerung von mindestens 100 Millionen?
```sql
SELECT `Region`, SUM(Einwohner) as Gesamtbevölkerung
FROM `cia_2018`
GROUP BY Region
HAVING Gesamtbevölkerung > 10E06
```
<br>

**Aufgabe 4** Stelle die Regionen der Erde mit Einwohnerzahl und Gesamtfläche dar, geordnet nach der Einwohnerzahl (absteigend).
```sql
SELECT `Region`, `Einwohner`, SUM(`Fläche`) as Gesamtfläche
FROM `cia_2018`
GROUP BY `Region`
ORDER BY `Einwohner` DESC
```
<br>

**Aufgabe 5** Wie Aufgabe 4, aber nur die Regionen von Amerika.
```sql
SELECT `Region`, `Einwohner`, SUM(`Fläche`) as Gesamtfläche
FROM `cia_2018`
WHERE `Region` LIKE '%amerika'
GROUP BY `Region`
ORDER BY `Einwohner` DESC
```
<br>

<center>WM</center>

**Aufgabe 6** Ermittle die von jedem Weltmeister erreichte Gesamtzahl von WM-Punkten und stelle das Ergebnis nach WM-Punkten geordnet dar (absteigend).
```sql
SELECT `Fahrerweltmeister`, SUM(`WM_Punkte`) as 'Gesamtanzahl von WM-Punkten'
FROM `wm_titel`
GROUP BY `Fahrerweltmeister`
ORDER BY SUM(`WM_Punkte`) DESC
```
<br>

**Aufgabe 7** Welche Gesamtpunktzahlen der Konstrukteursweltmeisterschaft haben die Teams in den neunziger Jahren erreicht?
```sql
SELECT `KonstrukteursWM`, SUM(`Team_Punkte`) as 'Teampunkte', `Saison`
FROM `wm_titel`
WHERE `Saison` BETWEEN 1990 AND 1999
GROUP BY `KonstrukteursWM`
```
<br>

**Aufgabe 8** Wie vorherige Aufgabe, allerdings sollen nur Teams mit mindestens 200 Punkten ausgegeben werden.
```sql
SELECT `KonstrukteursWM`, SUM(`Team_Punkte`) as 'Teampunkte', `Saison`
FROM `wm_titel`
WHERE `Saison` BETWEEN 1990 AND 1999
GROUP BY `KonstrukteursWM`
HAVING Teampunkte > 200
```
<br>

**Aufgabe 9** Ermittle für die Jahre, in denen Michael Schumacher Weltmeister wurde, die durchschnittliche Zahl der erreichten Team-Punkte des Konstrukteursweltmeisters und stelle die Liste geordnet dar.
```sql
SELECT `Fahrerweltmeister`, `KonstrukteursWM`, AVG(`Team_Punkte`) as 'durchschnittliche Teampunkte'
FROM `wm_titel`
WHERE `Fahrerweltmeister` = 'Michael Schumacher'
GROUP BY `Fahrerweltmeister`
```
<br>

**Aufgabe 10** Ermittle ab 1995 in geordneter Reihenfolge (absteigend)  
die Gesamtzahl der Team-Punkte für Teams mit mindestens 200 Punkten.
```sql
SELECT `Saison`,`KonstrukteursWM`, SUM(`Team_Punkte`) as 'Gesamtzahl der Team Punkte' 
FROM `wm_titel`
WHERE `Saison` > 1994
GROUP BY `Saison`
HAVING SUM(`Team_Punkte`) > 200
ORDER BY `Saison` ASC
```