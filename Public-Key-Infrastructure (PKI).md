*... bezeichnet man in der Kryptologie ein System, das digitale Zertifikate ausstellen, verteilen und prüfen kann. Die innerhalb einer PKI ausgestellten Zertifikate werden zur Absicherung rechnergestützter Kommunikation verwendet.*

![[Public-Key-Infrastructure.svg]]
<small>**CA**: certification authority   **RA**: registration authority  **VA**: validation authority<small>

#### Konzept

#### Bestandteil
**Digitale Zertifikate** : Digital signierte elektronische Daten, die sich zum Nachweis der Echtheit von Objekten verwenden lassen.

**Zertifizierungsstelle (Certificate Authority, CA)**: Organisation, die das CA-Zertifikat bereitstellt und die Signatur von Zertifikatsanträgen übernimmt.

**Registrierungsstelle (Registration Authority, RA)**: Organisation, bei der Personen, Maschinen oder auch untergeordnete Zertifizierungsstellen Zertifikate beantragen können. Diese prüft die Richtigkeit der Daten im Zertifikatsantrag und genehmigt diesen gegebenenfalls. Bei einer manuellen Prüfung wird diese durch den Registration Authority Officer durchgeführt. Die Informationen aus dem genehmigten Antrag können dann durch die Zertifizierungsstelle signiert werden, wobei das gewünschte Zertifikat entsteht.

**Zertifikatsperrliste (Certificate Revocation List, CRL)**: Eine Liste mit Zertifikaten, die vor Ablauf der Gültigkeit zurückgezogen wurden. Gründe sind die Kompromittierung des Schlüsselmaterials, aber auch Ungültigkeit der Zertifikatsdaten (z. B. E-Mail) oder Verlassen der Organisation. Eine Zertifikatsperrliste hat eine definierte Laufzeit, nach deren Ablauf sie erneut aktualisiert erzeugt wird. Anstatt der CRL kann auch eine Positivliste, die sogenannte White-List verwendet werden, in die nur alle zum aktuellen Zeitpunkt gültigen Zertifikate eingetragen werden. Prinzipiell muss eine PKI immer eine Zertifikatsstatusprüfung anbieten. Hierbei können jedoch neben der CRL (oder der White-List) als Offline-Statusprüfung auch sogenannte Online-Statusprüfungen wie OCSP oder SCVP zum Einsatz kommen (siehe Validierungsdienst). Online-Statusprüfungen werden üblicherweise dort eingesetzt, wo die zeitgenaue Prüfung des Zertifikates wichtig ist z. B. bei finanziellen Transfers etc.

**Verzeichnisdienst (Directory Service)**: ein durchsuchbares Verzeichnis, das ausgestellte Zertifikate enthält, meist ein LDAP-Server, seltener ein X.500-Server.

**Validierungsdienst (Validation Authority, VA)**: Ein Dienst, der die Überprüfung von Zertifikaten in Echtzeit ermöglicht wie OCSP oder SCVP.

**Dokumentationen**: Eine PKI führt eines oder mehrere Dokumente, in denen die Arbeitsprinzipien der PKI beschrieben sind. Kernpunkte sind der Registrierungsprozess, Handhabung des privaten Schlüssels, zentrale oder dezentrale Schlüsselerzeugung, technischer Schutz der PKI-Systeme sowie eventuell rechtliche Zusicherungen. In X.509-Zertifikaten kann das CPS in den Extensions eines Zertifikates verlinkt werden. Die nachfolgend aufgeführten Dokumente sind teilweise üblich.
>**CP (Certificate Policy):** In diesem Dokument beschreibt die PKI ihr Anforderungsprofil an ihre eigene Arbeitsweise. Es dient Dritten zur Analyse der Vertrauenswürdigkeit und damit zur Aufnahme in den Browser.
> **CPS (Certification Practice Statement)**: Hier wird die konkrete Umsetzung der Anforderungen an die PKI beschrieben. Dieses Dokument beschreibt die Umsetzung der CP.
>**PDS (Policy Disclosure Statement)**: Dieses Dokument ist ein Auszug aus dem CPS, falls das CPS nicht veröffentlicht werden soll.