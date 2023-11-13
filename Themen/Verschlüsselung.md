#### Symmetrische Verschlüsselung[^1]%%^f55261%%

*Die symmetrische Verschlüsselung ist ein Begriff der Kryptografie. Damit ist ein Verschlüsselungsverfahren  gemeint, bei dem für die Ver- und Entschlüsselung einer Nachricht **derselbe Schlüssel** benötigt wird. Dazu muss vorher der gemeinsame Austausch des Schlüssels vorgenommen werden*

![[Encryption_Symetrical.drawio.svg]]
Bob hat eine wichtige Information die er Alice, über einen unsicheren Kanal (zum Beispiel das Web), zusenden möchte. Um sicher zu gehen, dass die Information nicht von einem dritten gelesen wird (Eve), muss er die Nachricht zuerst verschlüsseln. Dazu müssen Bob und Alice sich zuerst auf einen gemeinsamen Schlüssel K1 geeinigt haben. Mit dem Schlüssel K1 verschlüsselt Bob nun die Information und sendet diese über den unsicheren Kanal an Alice. Auch wenn ein Eve die verschlüsselte Information mit lauscht, kann er mit der Information nichts mehr anfangen, da diese durch die Verschlüsselung keinen Sin mehr ergibt. Um die Information wieder zu entschlüsseln, wird wieder derselbe Schlüssel K1 benötigt der auch für die für die Verschlüsslung benutzt wurde. Da nur Alice und Bob zuvor den Schlüssel ausgetauscht haben, können nur sie den Originaltext lesen.

</br>

**Vor- und Nachteile**

![[Encryption_Symetrical-Vor-nach.svg|700]]
****
#### Asymmetrische Verschlüsselung[^2]  %%^faa9ae%%

*Die asymmetrische Verschlüsselung ist ein Begriff der Kryptografie. Dieses Verschlüsselungsverfahren arbeitet mit Schlüsselpaaren. Ein Schlüssel ist der öffentliche (Public Key) und der andere der private Schlüssel (Private Key). Daten, die mit dem öffentlichen Schlüssel verschlüsselt wurden, können nur noch mit dem privaten Schlüssel entschlüsselt werden. Will der Sender eine Information verschlüsselt an den Empfänger senden, benötigt er den öffentlichen Schlüssel des Empfängers*

![[Encryption_asymetrical.drawio.svg]]

Bob und Alice möchten über einen unsicheren Kanal (zum Beispiel das Web) Nachrichten austauschen. Um sicher zu stellen, dass kein dritter (Eve) die Nachrichten mit horcht, entscheiden sich Bob und Alice die Nachrichten mit der asymmetrischen Verschlüsslung zu Chiffrieren. Dazu benötigt Bob den öffentlichen Schlüssel von Alice. Der öffentliche Schlüssel ist für alle sichtbar (auch für Eve). Die Veröffentlichung kann zum Beispiel über E-Mail oder einen öffentlichen Server passieren. Mit dem öffentlichen Schlüssel von Alice kann jeder seine Nachricht verschlüsseln und das Ergebnis an Alice senden. Jedoch kann nur Alice die Nachricht, mit dem privaten Schlüssel, wieder entschlüsseln.

</br>

**Vor- und Nachteile**

![[Encryption_asymetrical-Vor-nach.svg]]



[^1]: https://www.electrodummies.net/de/symmetrische-verschlusselung/
[^2]: https://www.electrodummies.net/de/asymmetrische-verschlusselung/