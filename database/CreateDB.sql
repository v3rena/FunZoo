--------------------------------------------------------------------------------
--Zoo Tycoon Create Database
--Tobias Nemecek, Verena Pötzl, Katharina Schallerl, Matthias Wögerbauer
--------------------------------------------------------------------------------

USE ZooTycoon
GO


----------------------------------------------
--Tabelle Gehege
----------------------------------------------

CREATE TABLE Gehege
(
GehegeID numeric(38,0) identity(1,1) PRIMARY KEY,
Name varchar(50) not null,
Klimazone varchar(50) not null
);



----------------------------------------------
--Tabelle Tier
----------------------------------------------

CREATE TABLE Tier
(
TierID numeric(38,0) IDENTITY(1,1) PRIMARY KEY,
FK_Gehege_GehegeID numeric(38,0) not null,
Name varchar(50) not null,
Geschlecht char(1) not null,
Spezies varchar(50) not null
);


ALTER TABLE Tier  WITH CHECK ADD  CONSTRAINT Tier_Gehege_FK FOREIGN KEY(FK_Gehege_GehegeID)
REFERENCES Gehege (GehegeID)
GO

ALTER TABLE Tier  WITH CHECK ADD  CONSTRAINT Geschlecht CHECK  ((Geschlecht='m' OR Geschlecht='w'))
GO


----------------------------------------------
--Tabelle Abteilung
----------------------------------------------

CREATE TABLE Abteilung
(
AbteilungID numeric(38,0) IDENTITY(1,1) PRIMARY KEY,
--Abteilungsleiter numeric(38,0) null,
Name varchar(50) not null
);


--ALTER TABLE Abteilung  WITH CHECK ADD  CONSTRAINT Abteilung_Tierpleger_FK FOREIGN KEY(Abteilungsleiter)
--REFERENCES Tierpfleger (TierpflegerID)
--GO


----------------------------------------------
--Tabelle Tierpfleger
----------------------------------------------

CREATE TABLE Tierpfleger
(
TierpflegerID numeric(38,0) IDENTITY(1,1) PRIMARY KEY,
FK_Abteilung_AbteilungID numeric(38,0) not null,
Vorname varchar(50) not null,
Nachname varchar(50) not null
);



ALTER TABLE Tierpfleger  WITH CHECK ADD  CONSTRAINT Tierpfleger_Abteilung_FK FOREIGN KEY(FK_Abteilung_AbteilungID)
REFERENCES Abteilung (AbteilungID)
GO


----------------------------------------------
--Tabelle Tier_Tierpfleger
----------------------------------------------

CREATE TABLE Tier_Tierpfleger
(
FK_Tier_TierID numeric(38,0) not null,
FK_Tierpfleger_TierpflegerID numeric(38,0) not null
);

ALTER TABLE Tier_Tierpfleger  WITH CHECK ADD  CONSTRAINT Tier_Tierpfleger_Tier_FK FOREIGN KEY(FK_Tier_TierID)
REFERENCES Tier (TierID)
GO

ALTER TABLE Tier_Tierpfleger  WITH CHECK ADD  CONSTRAINT Tier_Tierpfleger_Tierpfleger_FK FOREIGN KEY(FK_Tierpfleger_TierpflegerID)
REFERENCES Tierpfleger (TierpflegerID)
GO


----------------------------------------------
--Tabelle Lieferant
----------------------------------------------

CREATE TABLE Lieferant
(
LieferantID numeric(38,0) IDENTITY(1,1) PRIMARY KEY,
Name varchar(50) not null,
Ort varchar(50) not null,
Straße varchar(50) not null,
Telefonnummer varchar(50) not null
);



----------------------------------------------
--Tabelle Futter
----------------------------------------------

CREATE TABLE Futter
(
FutterID numeric(38,0) IDENTITY(1,1) PRIMARY KEY,
Name varchar(50) not null,
Bestand float null
);



----------------------------------------------
--Tabelle Tier_Futter
----------------------------------------------

CREATE TABLE Tier_Futter
(
FK_Tier_TierID numeric(38,0) not null,
FK_Futter_FutterID numeric(38,0) not null,
Futterbedarf_pro_Tag float null
);

ALTER TABLE Tier_Futter  WITH CHECK ADD  CONSTRAINT Tier_Futter_Tier_FK FOREIGN KEY(FK_Tier_TierID)
REFERENCES Tier (TierID)
GO

ALTER TABLE Tier_Futter  WITH CHECK ADD  CONSTRAINT Tier_Futter_Futter_FK FOREIGN KEY(FK_Futter_FutterID)
REFERENCES Futter (FutterID)
GO


----------------------------------------------
--Tabelle Lieferant_Futter
----------------------------------------------

CREATE TABLE Lieferant_Futter
(
FK_Lieferant_LieferantID numeric(38,0) not null,
FK_Futter_FutterID numeric(38,0) not null,
Preis float null
);

ALTER TABLE Lieferant_Futter  WITH CHECK ADD  CONSTRAINT Lieferant_Futter_Lieferant_FK FOREIGN KEY(FK_Lieferant_LieferantID)
REFERENCES Lieferant (LieferantID)
GO

ALTER TABLE Lieferant_Futter  WITH CHECK ADD  CONSTRAINT Lieferant_Futter_Futter_FK FOREIGN KEY(FK_Futter_FutterID)
REFERENCES Futter (FutterID)
GO


----------------------------------------------
--Tabelle Bestellung
----------------------------------------------

CREATE TABLE Bestellung
(
BestellungID numeric(38,0) IDENTITY(1,1) PRIMARY KEY,
FK_Lieferant_LieferantID numeric(38,0) not null,
Datum datetime2(0) null
);


ALTER TABLE Bestellung  WITH CHECK ADD  CONSTRAINT Bestellung_Lieferant_FK FOREIGN KEY(FK_Lieferant_LieferantID)
REFERENCES Lieferant (LieferantID)
GO


----------------------------------------------
--Tabelle Bestellungsposten
----------------------------------------------

CREATE TABLE Bestellungsposten
(
FK_Bestellung_BestellungID numeric(38,0) not null,
FK_Futter_FutterID numeric(38,0) not null,
Menge float null
);



ALTER TABLE Bestellungsposten  WITH CHECK ADD  CONSTRAINT Bestellungsposten_Bestellung_FK FOREIGN KEY(FK_Bestellung_BestellungID)
REFERENCES Bestellung (BestellungID)
GO

ALTER TABLE Bestellungsposten  WITH CHECK ADD  CONSTRAINT Bestellungsposten_Futter_FK FOREIGN KEY(FK_Futter_FutterID)
REFERENCES Futter (FutterID)
GO

ALTER TABLE Bestellungsposten ADD CONSTRAINT Bestellungsposten_PK PRIMARY KEY (FK_Bestellung_BestellungID, FK_Futter_FutterID);