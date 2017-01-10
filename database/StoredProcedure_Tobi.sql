-------------------------------------
-- 1. Bestellung erstellen
-------------------------------------

-- GUI:
-- Textfeld in dem Lieferantenname eingegben wird
-- Datum und ID müssen nicht eingegeben werden

-- Usage:
/*
USE ZooTycoon;
GO
EXECUTE CreateOrder @Lieferantenname = 'TestLieferant';
Go
*/

use ZooTycoon

if object_id ('CreateOrder', 'P') is not null
	drop procedure CreateOrder;
go

CREATE PROCEDURE CreateOrder

	@Lieferantenname varchar(50) = NULL

AS
BEGIN

	BEGIN TRANSACTION
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

  IF ((SELECT LieferantID FROM Lieferant WHERE Name = @Lieferantenname) IS NULL)
		BEGIN
			RAISERROR ('Lieferant existiert nicht!',10, 1)
			ROLLBACK TRANSACTION
		END

  ELSE
    BEGIN
      INSERT INTO Bestellung (FK_Lieferant_LieferantID, Datum)
      VALUES ((SELECT LieferantID FROM Lieferant WHERE Name = @Lieferantenname), CURRENT_TIMESTAMP);

      COMMIT TRANSACTION
    END

END
GO

-------------------------------------
-- 2. Bestellungsposten erstellen
-------------------------------------

-- GUI:
-- Textfeld für Eingabe der Bestellungsnummer (Fehlermeldung falls Bestellung nicht existiert)
-- Textfeld für Eingabe der Futterart (Fehlermeldung falls der Lieferant diese Futterart nicht anbietet)
-- Textfeld für Eingabe der Menge

-- Usage:
/*
USE ZooTycoon;
GO
EXECUTE CreateOrderItem @Bestellungsnummer = 1, @Futterart = 'Fleisch', @Menge = 100;
Go
*/

use ZooTycoon

if object_id ('CreateOrderItem', 'P') is not null
	drop procedure CreateOrderItem;
go

CREATE PROCEDURE CreateOrderItem

	@Bestellungsnummer numeric(38,0) = NULL,
  @Futterart varchar(50) = NULL,
  @Menge float = NULL

AS
BEGIN

	BEGIN TRANSACTION
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

  IF ((SELECT BestellungID FROM Bestellung WHERE BestellungID = @Bestellungsnummer) IS NULL)
		BEGIN
			RAISERROR ('Bestellung existiert nicht!',10, 1)
			ROLLBACK TRANSACTION
		END
  ELSE IF ((SELECT Preis FROM Lieferant_Futter INNER JOIN Futter ON Lieferant_Futter.FK_Futter_FutterID = Futter.FutterID WHERE Futter.Name = @Futterart) IS NULL)
		BEGIN
			RAISERROR ('Dieser Lieferant liefert die angegebene Futterart nicht!',10, 1)
			ROLLBACK TRANSACTION
		END

  ELSE
    BEGIN
      INSERT INTO Bestellungsposten (FK_Bestellung_BestellungID, FK_Futter_FutterID, Menge)
      VALUES (@Bestellungsnummer, (SELECT FutterID FROM Futter WHERE Name = @Futterart), @Menge);

      COMMIT TRANSACTION
    END

END
GO

-------------------------------------
-- 3. Futter hinzufuegen
-------------------------------------

-- GUI:
-- Textfeld für Eingabe des Lieferantennamens (Fehlermeldung falls Lieferant nicht existiert)
-- Textfeld für Eingabe des Futternamens (Fehlermeldung falls die Futterart bereits in der DB ist)
-- Textfeld für Eingabe des Preises

-- Usage:
/*
USE ZooTycoon;
GO
EXECUTE AddFood @Lieferantenname = TestLieferant, @FutterName = 'Fleisch', @Preis = 10,00;
Go
*/

use ZooTycoon

if object_id ('AddFood', 'P') is not null
	drop procedure AddFood;
go

CREATE PROCEDURE AddFood

	@Lieferantenname varchar(50) = NULL,
	@FutterName varchar(50) = NULL,
	@Preis float = NULL

AS
BEGIN

	BEGIN TRANSACTION
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

  IF ((SELECT LieferantID FROM Lieferant WHERE Name = @Lieferantenname) IS NULL)
		BEGIN
			RAISERROR ('Lieferant existiert nicht!',10, 1)
			ROLLBACK TRANSACTION
		END
	ELSE IF ((SELECT FutterID FROM Futter WHERE Name = @FutterName) IS NOT NULL)
		BEGIN
			RAISERROR ('Futterart existiert bereits!',10, 1)
			ROLLBACK TRANSACTION
		END

  ELSE
    BEGIN
			INSERT INTO Futter (Name, Bestand)
			VALUES (@FutterName, 0);

      INSERT INTO Lieferant_Futter (FK_Lieferant_LieferantID, FK_Futter_FutterID, Preis)
      VALUES ((SELECT LieferantID FROM Lieferant WHERE Name = @Lieferantenname), (SELECT FutterID FROM Futter WHERE Name = @FutterName), @Preis);

      COMMIT TRANSACTION
    END

END
GO
