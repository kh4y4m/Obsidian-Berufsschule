### 169.254.X.X
### IPv4
32 bit -> 4,4 Mrd. Adressen
Schreibweise Dezimalschreibweise vier Oktetts (8 bit)


##### Private IPv4-Adressen
*bestimmte IPv4-Adressbereiche stehen zur freien Verfügung und können ohne vorherige Registrierung für **private Netze** verwendet werden.
Diese Adressen werden im Internet nicht geroutet *

![[Private_IPv4.svg|710]]

##### Anzahl von IP-Adressen 
$$
\begin{align} 
\text{n = Subnetz in CIDR}\\
2^{32-n}-2
\end{align}
$$

$$
\begin{align} 
10.0.0.0/24\\
2^{32-24} -2= 2^8-2 = 256-2 = 254
\end{align} 
$$



##### Dualstack

---
### IPv6
##### Besondere Adressen
**Adressraum von IPv4 vs IPv6**
IPv4 2<sup>32</sup> zu IPv6 2<sup>128</sup> = eine Vergrößerung um den Faktor 2<sup>96</sup>


![[IPv6_ImportantIP.svg|680]]