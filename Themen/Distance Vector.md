*... ein Routing-Algorithmus welcher den besten Weg für ein Paket im Netzwerk berechnet*

#### Funktionsweise
1. Erzeuge eine Kostenmatrix, welche Router über welche Nachbarn und zu welchen Kosten erreichbar sind und anfangs nur die (bekannten) Kosten zu direkten Nachbarn enthält.
2. Erzeuge eine Aufstellung mit Informationen, welche Router wir zu welchen Kosten am besten erreichen können und schicke sie an alle Nachbarn.
3. Warte auf Aufstellungen dieser Art von anderen Routern, rechne diese dann in die eigene Kostenmatrix ein.
4. Ändern sich dadurch die minimalen Kosten, zu denen wir einen Router erreichen können: fahre mit Schritt 2 fort, sonst mit Schritt 3.

_Kosten_ sind gleichzusetzen mit Metrik . Jedes Routing-Protokoll nutzt eine andere Betrachtung für die Kosten einer Route. Bei RIP wird beispielsweise die Anzahl der Router zum Ziel („Hop-Count“) als einziger Kostenwert genutzt, d. h. die Bandbreite bleibt hier bei der Betrachtung unberücksichtigt.