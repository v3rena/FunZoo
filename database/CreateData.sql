USE ZooTycoon
GO

---------------------------------------------
--Daten Gehege
---------------------------------------------

INSERT INTO Gehege (Name, Oekozone) VALUES ('Eisbärenwelt', 'Polare und Subpolare Zone');
INSERT INTO Gehege (Name, Oekozone) VALUES ('Seehundanlage', 'Polare und Subpolare Zone');
INSERT INTO Gehege (Name, Oekozone) VALUES ('Robbenanlage', 'Polare und Subpolare Zone');
INSERT INTO Gehege (Name, Oekozone) VALUES ('Africambo', 'Sommerfeuchte Tropen');
INSERT INTO Gehege (Name, Oekozone) VALUES ('Braunbärenanlage', 'Boreale Zone');

--SELECT * FROM Gehege

---------------------------------------------
--Daten Tier
---------------------------------------------

INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Xenon', 'm', 'Eisbaer', '1');
INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Splash', 'w', 'Seehund', '2');
INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Roberto', 'm', 'Baikalrobbe', '3');
INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Zitha', 'w', 'Grevyzebra ', '4');
INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Kugelschreibär', 'm', 'Braunbaer', '5');
INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Kuegelchen', 'w', 'Braunbaer', '5');

---------------------------------------------
--Daten Abteilung
---------------------------------------------
INSERT INTO Abteilung(Name) VALUES ('Robben und Delfine');
INSERT INTO Abteilung(Name) VALUES ('Raubtiere');
INSERT INTO Abteilung(Name) VALUES ('Wirbellose');
INSERT INTO Abteilung(Name) VALUES ('Unpaarzeher');
INSERT INTO Abteilung(Name) VALUES ('Affen und Halbaffen');

---------------------------------------------
--Daten Tierpfleger
---------------------------------------------
INSERT INTO Tierpfleger(Nachname, Vorname, FK_Abteilung_AbteilungID) VALUES ('Rosenberger', 'Eva', '1');
INSERT INTO Tierpfleger(Nachname, Vorname, FK_Abteilung_AbteilungID) VALUES ('Rosenberger', 'Joachim', '4');
INSERT INTO Tierpfleger(Nachname, Vorname, FK_Abteilung_AbteilungID) VALUES ('Rosenberger', 'Hannes', '2');
INSERT INTO Tierpfleger(Nachname, Vorname, FK_Abteilung_AbteilungID) VALUES ('Grabner', 'Stefanie', '5');
INSERT INTO Tierpfleger(Nachname, Vorname, FK_Abteilung_AbteilungID) VALUES ('Pregartner', 'Andreas', '3');

---------------------------------------------
--Daten Tier_Tierpfleger
---------------------------------------------
INSERT INTO Tier_Tierpfleger(FK_Tier_TierID, FK_Tierpfleger_TierpflegerID) VALUES ('1','1');
INSERT INTO Tier_Tierpfleger(FK_Tier_TierID, FK_Tierpfleger_TierpflegerID) VALUES ('2','2');
INSERT INTO Tier_Tierpfleger(FK_Tier_TierID, FK_Tierpfleger_TierpflegerID) VALUES ('3','3');
INSERT INTO Tier_Tierpfleger(FK_Tier_TierID, FK_Tierpfleger_TierpflegerID) VALUES ('4','4');
INSERT INTO Tier_Tierpfleger(FK_Tier_TierID, FK_Tierpfleger_TierpflegerID) VALUES ('5','5');

---------------------------------------------
--Daten Futter
---------------------------------------------
INSERT INTO Futter(Name, Bestand) VALUES ('Zebra, Muntjaks & Tapire Strukturmsli 15 kg', '10');
INSERT INTO Futter(Name, Bestand) VALUES ('Eisbärenmischung (Gras, Fische)', '5');
INSERT INTO Futter(Name, Bestand) VALUES ('Braunbärenmischung (Gras, Walnüsse, Rehfleisch)', '100');
INSERT INTO Futter(Name, Bestand) VALUES ('Seehundmischung (Fische)', '5');
INSERT INTO Futter(Name, Bestand) VALUES ('Robbenmischung (Fische)', '7');

--DELETE FROM Futter;

---------------------------------------------
--Daten Tier_Futter
---------------------------------------------
INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('1','2',0.5);
INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('2','4',1);
INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('3','5',0.7);
INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('4','1',0.8);
INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('5','3',0.7);

--DELETE FROM Tier_Futter;

---------------------------------------------
--Daten Lieferant
---------------------------------------------
INSERT INTO Lieferant(Name, Strasse, Ort, Telefonnummer) VALUES ('FritzfratzBärenfutter GmbH', 'Bärenstrasse 5', '2121 Bärental', '03662/3416');
INSERT INTO Lieferant(Name, Strasse, Ort, Telefonnummer) VALUES ('Polare Spezialitäten', 'Fischereistrasse 4', '2223 Fischau', '04662/3481');
INSERT INTO Lieferant(Name, Strasse, Ort, Telefonnummer) VALUES ('Afrikawohl', 'Savannengasse 2 ', '1223 Donaustadt', '01234/8264');
INSERT INTO Lieferant(Name, Strasse, Ort, Telefonnummer) VALUES ('BraunbärenProtein', 'Bärenberg 1', '5243 Unterau', '03759/2840');
INSERT INTO Lieferant(Name, Strasse, Ort, Telefonnummer) VALUES ('FleischereiZoo', 'Rehgasse 2', '1423 Reichenau', '01249/9056');

---------------------------------------------
--Daten Lieferant_Futter
---------------------------------------------
INSERT INTO Lieferant_Futter(FK_Lieferant_LieferantID, FK_Futter_FutterID, Preis) VALUES (1, 2, 5.90);
INSERT INTO Lieferant_Futter(FK_Lieferant_LieferantID, FK_Futter_FutterID, Preis) VALUES (2, 4, 3.20);
INSERT INTO Lieferant_Futter(FK_Lieferant_LieferantID, FK_Futter_FutterID, Preis) VALUES (2, 5, 4.20);
INSERT INTO Lieferant_Futter(FK_Lieferant_LieferantID, FK_Futter_FutterID, Preis) VALUES (3, 1, 2.90);
INSERT INTO Lieferant_Futter(FK_Lieferant_LieferantID, FK_Futter_FutterID, Preis) VALUES (4, 3, 7.90);
INSERT INTO Lieferant_Futter(FK_Lieferant_LieferantID, FK_Futter_FutterID, Preis) VALUES (5, 3, 4.90);

---------------------------------------------
--Daten Bestellung
---------------------------------------------
INSERT INTO Bestellung(Datum, FK_Lieferant_LieferantID) VALUES ('2016-12-19', 1);
INSERT INTO Bestellung(Datum, FK_Lieferant_LieferantID) VALUES ('2016-12-03', 2);
INSERT INTO Bestellung(Datum, FK_Lieferant_LieferantID) VALUES ('2016-12-07', 3);
INSERT INTO Bestellung(Datum, FK_Lieferant_LieferantID) VALUES ('2016-12-09', 4);
INSERT INTO Bestellung(Datum, FK_Lieferant_LieferantID) VALUES ('2016-12-10', 5);


---------------------------------------------
--Daten Bestellungsposten
---------------------------------------------
INSERT INTO Bestellungsposten(FK_Bestellung_BestellungID, FK_Futter_FutterID, Menge) VALUES (1, 2, 3.5);
INSERT INTO Bestellungsposten(FK_Bestellung_BestellungID, FK_Futter_FutterID, Menge) VALUES (2, 1, 1.5);
INSERT INTO Bestellungsposten(FK_Bestellung_BestellungID, FK_Futter_FutterID, Menge) VALUES (3, 4, 1.2);
INSERT INTO Bestellungsposten(FK_Bestellung_BestellungID, FK_Futter_FutterID, Menge) VALUES (4, 5, 2.3);
INSERT INTO Bestellungsposten(FK_Bestellung_BestellungID, FK_Futter_FutterID, Menge) VALUES (5, 3, 4.1);
