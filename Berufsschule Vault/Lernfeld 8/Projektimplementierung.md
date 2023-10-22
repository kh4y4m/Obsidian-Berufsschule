
```c#
//Hinweis: Normalerweise ist es üblich, Eigenschaften einer Klasse auf Private zu setzen. In diesem Code haben wir, um das entwickeln des rechtlichen Codes zu vereinfachen
//alle Eigenschaften auf public gesetzt. Im Klassendiagramm haben wir jedoch wie gewohnt die Eigenschaften auf private gesetzt

using System;
using System.Collections.Generic;

class Mitarbeiter
{
    public string Name { get; set; }
    public string Anschrift { get; set; }
    public string Telefonnummer { get; set; }
    public string Geschlecht { get; set; }
    public string Einstellungsdatum { get; set; }
    public string MitarbeiterID { get; set; }
    public bool istProjektleiter { get; set; }
    public bool istAbteilungsleiter { get; set; }
    public List<string> writeDB() { return null; }				//Pseudo-Methode, um Datenbankzugriff zu visualisieren
    public List<string> readDB() { return null; }
}

class Abteilung
{
    public string Bezeichnung { get; set; }
    public string AbteilungsID { get; set; }
    public string Abteilungsleiter { get; set; }
}

class Projekt
{
    public string projektBezeichnung { get; set; }
    public string Projektleiter { get; set; }
    public string projektID { get; set; }
    public float projektWert { get; set; }
    public float gezahlterBetrag { get; set; }
    public string projektBeginn { get; set; }
    public string projektEnde { get; set; }
    public bool istStorniert { get; set; }
}

public class Program
{
    public static void Main(string[] args)
    {
        List<Projekt> Projektliste = new List<Projekt>();

        Mitarbeiter M1 = new Mitarbeiter();
        M1.Name = "Klaus Klunker";
        M1.Anschrift = "Blastraße 1, 11111 Stadtstadt";
        M1.Telefonnummer = "123456789";
        M1.Geschlecht = "M";
        M1.Einstellungsdatum = "01.01.2000";
        M1.MitarbeiterID = "KK01";
        M1.istAbteilungsleiter = true;
        M1.istProjektleiter = false;

        Mitarbeiter M2 = new Mitarbeiter();
        M2.Name = "Blaus Blunker";
        M2.Anschrift = "Flastraße 2, 11111 Stadtstadt";
        M2.Telefonnummer = "1234561189";
        M2.Geschlecht = "M";
        M2.Einstellungsdatum = "01.01.2010";
        M2.MitarbeiterID = "BB02";
        M2.istAbteilungsleiter = false;
        M2.istProjektleiter = true;

        Abteilung A1 = new Abteilung();
        A1.Bezeichnung = "Informationstechnik";
        A1.AbteilungsID = "IT";
        A1.Abteilungsleiter = "KK01";

        bool loopVar = true;                 //Variable um zu gewährleisten, dass erst beim Verlassen des Programms mit Eingabe '5' das Programm geschlossen wird um Datenverlust zu verhindern.
        do
        {
            Console.WriteLine("Willkommen bei ProBot, dem besten Projektverwaltungstool der WVS. Was möchten Sie tun?");
            Console.WriteLine("Drücken Sie '1', um ein neues Projekt zu erstellen");
            Console.WriteLine("Drücken Sie '2', um die Projektliste anzuzeigen");
            Console.WriteLine("Drücken Sie '3', um ein bestehendes Projekt zu verwalten");
            Console.WriteLine("Drücken Sie '4', um ProBot zu verlassen");
            var Antwort = Console.ReadLine();
            switch (Antwort)
            {
                case "1":
                    Console.WriteLine("Geben Sie eine Projektbezeichnung an");
                    string Bez = Console.ReadLine();
                    Console.WriteLine("Geben Sie die Mitarbeiter ID des Projektleiters an");
                    string pLID = Console.ReadLine();
                    Console.WriteLine("Geben Sie eine ProjektID an");
                    string pID = Console.ReadLine();
                    Console.WriteLine("Geben Sie den geschätzten Projektwert an");
                    float pWert = float.Parse(Console.ReadLine());
                    Console.WriteLine("Geben Sie den (an)gezahlten Betrag an");
                    float pBet = float.Parse(Console.ReadLine());
                    Console.WriteLine("Geben Sie das Startdatum an");
                    string pStart = Console.ReadLine();
                    Console.WriteLine("Geben Sie das Enddatum an");
                    string pEnde = Console.ReadLine();

                    Projekt projekt = new Projekt
                    {
                        projektBezeichnung = Bez,
                        Projektleiter = pLID,
                        projektID = pID,
                        projektWert = pWert,
                        gezahlterBetrag = pBet,
                        projektBeginn = pStart,
                        projektEnde = pEnde,
                        istStorniert = false
                    };
                    
                    Projektliste.Add(projekt);

                    Console.WriteLine("Projekt " + projekt.projektBezeichnung + " wurde angelegt.");
                    break;

                case "2":
                    foreach (Projekt p in Projektliste)
                    {
                        Console.WriteLine("Projektbezeichnung: " + p.projektBezeichnung);
                        Console.WriteLine("Projektleiter: " + p.Projektleiter);
                        Console.WriteLine("ProjektID: " + p.projektID);
                        Console.WriteLine("Geschätzter Projektwert: " + p.projektWert);
                        Console.WriteLine("Gezahlter Betrag: " + p.gezahlterBetrag);
                        Console.WriteLine("Startdatum: " + p.projektBeginn);
                        Console.WriteLine("Enddatum: " + p.projektEnde);
                        Console.WriteLine("Storniert: " + p.istStorniert);
                        Console.WriteLine("--------------------------------");
                    }
                    break;
					
				case "3":
    				Console.WriteLine("Welches Projekt wollen Sie bearbeiten?");
					var i = 1;
					foreach (Projekt p in Projektliste)
					{
						Console.WriteLine(i + ". " + p.projektBezeichnung);
						i++;
					}
					var Antwort2 = Console.ReadLine();
					int selectedIndex = int.Parse(Antwort2) - 1; //Index der Auswahl beginnend mit 1 muss auf 0-er Listenindex angepasst werden
					Projekt selectedProject = Projektliste[selectedIndex];

					bool editLoopVar = true;
					do
					{
						Console.WriteLine("Welchen Eintrag möchten Sie ändern?");
						Console.WriteLine("1. Projektbezeichnung");
						Console.WriteLine("2. Projektleiter");
						Console.WriteLine("3. ProjektID");
						Console.WriteLine("4. Geschätzter Projektwert");
						Console.WriteLine("5. Gezahlter Betrag");
						Console.WriteLine("6. Startdatum");
						Console.WriteLine("7. Enddatum");
						Console.WriteLine("8. Storniert");
						Console.WriteLine("9. Zurück zum Hauptmenü");

						var editChoice = Console.ReadLine();
						switch (editChoice)
						{
							case "1":
								Console.WriteLine("Geben Sie die neue Projektbezeichnung an:");
								selectedProject.projektBezeichnung = Console.ReadLine();
								Console.WriteLine("Projektbezeichnung wurde geändert.");
								break;

							case "2":
								Console.WriteLine("Geben Sie die Mitarbeiter ID des neuen Projektleiters an:");
								selectedProject.Projektleiter = Console.ReadLine();
								Console.WriteLine("Projektleiter wurde geändert.");
								break;

							case "3":
								Console.WriteLine("Geben Sie die neue ProjektID an:");
								selectedProject.projektID = Console.ReadLine();
								Console.WriteLine("ProjektID wurde geändert.");
								break;

							case "4":
								Console.WriteLine("Geben Sie den neuen geschätzten Projektwert an:");
								selectedProject.projektWert = float.Parse(Console.ReadLine());
								Console.WriteLine("Geschätzter Projektwert wurde geändert.");
								break;

							case "5":
								Console.WriteLine("Geben Sie den neuen (an)gezahlten Betrag an:");
								selectedProject.gezahlterBetrag = float.Parse(Console.ReadLine());
								Console.WriteLine("Gezahlter Betrag wurde geändert.");
								break;

							case "6":
								Console.WriteLine("Geben Sie das neue Startdatum an:");
								selectedProject.projektBeginn = Console.ReadLine();
								Console.WriteLine("Startdatum wurde geändert.");
								break;

							case "7":
								Console.WriteLine("Geben Sie das neue Enddatum an:");
								selectedProject.projektEnde = Console.ReadLine();
								Console.WriteLine("Enddatum wurde geändert.");
								break;

							case "8":
								Console.WriteLine("Geben Sie an, ob das Projekt storniert ist (true/false):");
								selectedProject.istStorniert = bool.Parse(Console.ReadLine());
								Console.WriteLine("Storniert wurde geändert.");
								break;

							case "9":
								editLoopVar = false;
								break;

							default:
								Console.WriteLine("Ungültige Eingabe. Bitte wählen Sie eine der angegebenen Optionen.");
								break;
						}
					} while (editLoopVar);
					break;


					case "4":
						loopVar = false;
						break;
					default:
								Console.WriteLine("Ungültige Eingabe. Bitte wählen Sie eine der angegebenen Optionen.");
								break;
            }
        } while (loopVar == true);
    }
}
```
