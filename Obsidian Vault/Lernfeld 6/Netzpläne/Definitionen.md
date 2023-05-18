**Legende**

| BEZ | FAZ | FEZ |
|-----|-----|-----|
| **D**   | **SAZ** | **SEZ** |
| **GP**  | **FP**  | **UP**  |

**BEZ**
	BEZ ist die Bezeichnung des Vorgangs (z. Bsp. A)

**FAZ**
	FAZ beschreibt den frühsten Anfangszeitpunkt, an dem ein Vorgang starten kann
	*FAZ<sub>(j)</sub> = max(FEZ<sub>(i)</sub>)*

**FEZ**
	FEZ beschreibt den frühsten Endzeitpunkt, an dem ein Vorgang enden kann
	*FEZ<sub>(i)</sub> = FAZ<sub>(i)</sub> + D<sub>(i)</sub>*

**Dauer**
	Dauer beschreibt die Zeit, die ein Vorgang benötigt, um abgeschlossen zu werden

**SAZ**
	SAZ beschreibt den spätesten Anfangszeitpunkt, an dem ein Vorgang starten kann, ohne das Projekt zu verzögern
		*SAZ<sub>(k)</sub> = SEZ<sub>(k)</sub> - D<sub>(k)</sub>*

**SEZ**
	SEZ beschreibt den spätesten Endzeitpunkt, an dem ein Vorgang enden kann, ohne das restliche Projekt zu verzögern
	*SEZ<sub>(j)</sub> = min(SAZ<sub>(k)</sub>)*

**GP**
	der Gesamtpuffer beschreibt die Pufferzeit, die dem Projekt zur Verfügung steht, ohne das Projektende zu verzögern
	*GP<sub>(j)</sub> = SAZ<sub>(j)</sub> - FAZ<sub>(j)</sub>*
	*GP<sub>(j)</sub> = SEZ<sub>(j)</sub> - FEZ<sub>(j)</sub>*

**FP**
	der freie Puffer beschreibt die Pufferzeit, dem den Vorgang zur Verfügung steht, ohne den nachfolgenden Vorgang zu gefährden
	*FP<sub>(j)</sub> = min(FAZ<sub>(k)</sub> - FEZ<sub>(j)</sub>)*

**UP**
	der unabhängige Puffer, beschreibt die Pufferzeit, die dem Vorgang zur Verfügung steht, wenn die Vorgänger zum spätesten Endzeitpunkt (SEZ) enden und der Nachfolger zu frühsten Startzeitpunkt anfängt
	*UP<sub>(j)</sub> = min(FAZ)<sub>(k)</sub> - max(SEZ)<sub>(i)</sub> - D<sub>(j)</sub> ≥ 0 = 0*