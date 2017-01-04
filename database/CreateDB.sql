--------------------------------------------------------------------------------
--Zoo Tycoon Create Database
--Tobias Nemecek, Verena Pötzl, Katharina Schallerl, Matthias Wögerbauer
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--DROP TABLES
--------------------------------------------------------------------------------

USE [ZooTycoon]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Tier] DROP CONSTRAINT [Tier_Gehege_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier_Futter]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Tier_Futter] DROP CONSTRAINT [Tier_Futter_Tier_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier_Futter]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Tier_Futter] DROP CONSTRAINT [Tier_Futter_Futter_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier_Tierpfleger]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Tier_Tierpfleger] DROP CONSTRAINT [Tier_Tierpfleger_Tierpfleger_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier_Tierpfleger]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Tier_Tierpfleger] DROP CONSTRAINT [Tier_Tierpfleger_Tier_FK]
GO

/****** Object:  Table [dbo].[Gehege]    Script Date: 20.12.2016 13:09:05 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Gehege]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Gehege]
GO

/****** Object:  Table [dbo].[Tier]    Script Date: 20.12.2016 13:09:05 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Tier]
GO

/****** Object:  Table [dbo].[Tier_Futter]    Script Date: 20.12.2016 13:09:05 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier_Futter]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Tier_Futter]
GO

/****** Object:  Table [dbo].[Tier_Tierpfleger]    Script Date: 20.12.2016 13:09:05 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tier_Tierpfleger]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Tier_Tierpfleger]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tierpfleger]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Tierpfleger] DROP CONSTRAINT [Tierpfleger_Abteilung_FK]
GO

/****** Object:  Table [dbo].[Abteilung]    Script Date: 20.12.2016 13:11:19 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Abteilung]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Abteilung]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Abteilung]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Abteilung] DROP CONSTRAINT [Abteilung_Tierpfleger_FK]
GO

/****** Object:  Table [dbo].[Tierpfleger]    Script Date: 20.12.2016 13:11:19 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tierpfleger]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Tierpfleger]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bestellung]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Bestellung] DROP CONSTRAINT [Bestellung_Lieferant_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bestellungsposten]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Bestellungsposten] DROP CONSTRAINT [Bestellungsposten_Futter_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bestellungsposten]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Bestellungsposten] DROP CONSTRAINT [Bestellungsposten_Bestellung_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lieferant_Futter]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Lieferant_Futter] DROP CONSTRAINT [Lieferant_Futter_Lieferant_FK]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lieferant_Futter]') AND TYPE IN (N'U'))
ALTER TABLE [dbo].[Lieferant_Futter] DROP CONSTRAINT [Lieferant_Futter_Futter_FK]
GO

/****** Object:  Table [dbo].[Lieferant]    Script Date: 20.12.2016 13:13:48 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lieferant]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Lieferant]
GO

/****** Object:  Table [dbo].[Bestellung]    Script Date: 20.12.2016 13:13:48 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bestellung]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Bestellung]
GO

/****** Object:  Table [dbo].[Bestellungsposten]    Script Date: 20.12.2016 13:13:48 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bestellungsposten]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Bestellungsposten]
GO

/****** Object:  Table [dbo].[Lieferant_Futter]    Script Date: 20.12.2016 13:13:48 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lieferant_Futter]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Lieferant_Futter]
GO

/****** Object:  Table [dbo].[Futter]    Script Date: 20.12.2016 13:14:23 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Futter]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[Futter]
GO



--------------------------------------------------------------------------------
--CREATE TABLES
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
Abteilungsleiter numeric(38,0) null,
Name varchar(50) not null
);


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



ALTER TABLE Tierpfleger  WITH CHECK ADD  CONSTRAINT Tierpfleger_Abteilung_FK
FOREIGN KEY(FK_Abteilung_AbteilungID)
REFERENCES Abteilung (AbteilungID)
GO

----------------------------------------------
--Tabelle Abteilung, Fremdschlüssel hinzufügen
----------------------------------------------

ALTER TABLE Abteilung  WITH CHECK ADD CONSTRAINT Abteilung_Tierpfleger_FK 
FOREIGN KEY(Abteilungsleiter)
REFERENCES Tierpfleger (TierpflegerID)
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