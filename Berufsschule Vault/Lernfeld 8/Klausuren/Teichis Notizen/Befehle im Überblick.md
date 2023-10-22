###### nach Reihenfolge sortieren lassen

```sql
SELECT *
FROM 'kunden'
ORDER BY 'Land' ASC / DESC
```
`ASC` : von a nach z                                                                            
`DESC` : von z nach a

---
###### Aggregation von Datensätze

`COUNT()` zählt den Wert eines Attributs
```sql
SELECT * 
SUM(Preis) AS Preisvorhanden
FROM PKW
```
<br>

`SUM()` addiert die nummerierten Werte
```sql
SELECT *
SUM(Preis) AS GesPreis
FROM PKW
GROUP BY Modell
```
<br>

`ROUND()` rundet die Werte <u>ab</u>
```sql
SELECT *
ROUND(Wert, Kommastellen)
FROM PKw
```