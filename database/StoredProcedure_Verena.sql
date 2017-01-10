--------------------------------------------------------------------------------
--Zoo Tycoon Create Database
--Tobias Nemecek, Verena Pötzl, Katharina Schallerl, Matthias Wögerbauer
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--STORED PROCEDUREs Tiere hinzufügen und löschen
-- Autor: Verena Pötzl
--------------------------------------------------------------------------------
--USAGE:
/*
USE ZooTycoon;
GO
EXECUTE InsertAnimal @Gehege_Name = 'Eisbärenwelt', @Tier_Name = 'Teddy', @Tier_Geschlecht = 'm', @Tier_Spezies = 'Eisbär', 
@Tierpfleger_Vorname = 'Eva', @Tierpfleger_Nachname = 'Rosenberger', @Futter_Name = 'Eisbärenmischung (Gras, Fische)', @Futterbedarf_pro_Tag = 50;
GO

USE ZooTycoon;
GO
EXECUTE DeleteAnimal @Tier_Name = 'Teddy';
Go
*/

--------------------------------------------------------------------------------
--1. Neues Tier hinzufügen
--------------------------------------------------------------------------------
--GUI: 

---Gehege_Name (daraus wird @FK_Gehege_GehegeID berechnet); Fehlermeldung, wenn Gehege nicht vorhanden 
---Tier_Name: Fehlermeldung, wenn Tiername bereits vergeben
---Tier_Geschlecht
---Tier_Spezies 
---Tierpfleger_Vorname
---Tierpfleger_Nachname (Fehlermeldung wenn Tierpfleger nicht vorhanden)
---Futter_Name (Fehlermeldung wenn Futter nicht vorhanden)
---Futterbedarf pro Tag


use ZooTycoon

if object_id ('InsertAnimal', 'P') is not null
	drop procedure InsertAnimal;
go

CREATE PROCEDURE InsertAnimal 

	@Gehege_Name varchar(50) = NULL,
	@Tier_Name varchar(50) = NULL,
	@Tier_Geschlecht char(1) = NULL,
	@Tier_Spezies varchar(50) = NULL,
	@Tierpfleger_Vorname varchar(50) = NULL,
	@Tierpfleger_Nachname varchar(50) = NULL,
	@Futter_Name varchar(50) = NULL,
	@Futterbedarf_pro_Tag float = NULL
AS
BEGIN

	BEGIN TRANSACTION
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

	IF ((SELECT TierID FROM Tier WHERE Name = @Tier_Name) IS NOT NULL)
		BEGIN
			RAISERROR ('Name existiert bereits!',10, 1)
			ROLLBACK TRANSACTION
		END
	ELSE IF ((SELECT GehegeID FROM Gehege WHERE Name = @Gehege_Name) IS NULL)
		BEGIN
			RAISERROR ('Gehege existiert nicht!',10, 1)
			ROLLBACK TRANSACTION
		END
	ELSE IF ((SELECT TierpflegerID FROM Tierpfleger WHERE Vorname = @Tierpfleger_Vorname AND Nachname = @Tierpfleger_Nachname) IS NULL)
		BEGIN
			RAISERROR ('Tierpfleger existiert nicht!',10, 1)
			ROLLBACK TRANSACTION
		END
	ELSE IF ((SELECT FutterID FROM Futter WHERE Name = @Futter_Name) IS NULL)
		BEGIN
			RAISERROR ('Futter existiert nicht!',10, 1)
			ROLLBACK TRANSACTION
		END

	ELSE
		BEGIN
			BEGIN TRY
				INSERT INTO Tier (FK_Gehege_GehegeID, Name, Geschlecht, Spezies)
				VALUES ((SELECT GehegeID FROM Gehege WHERE Name = @Gehege_Name), @Tier_Name, @Tier_Geschlecht, @Tier_Spezies);

				INSERT INTO Tier_Tierpfleger (FK_Tier_TierID, FK_Tierpfleger_TierpflegerID)
				VALUES ((SELECT TierID FROM Tier WHERE Name = @Tier_Name), (SELECT TierpflegerID FROM Tierpfleger WHERE Vorname = @Tierpfleger_Vorname AND Nachname = @Tierpfleger_Nachname));

				INSERT INTO Tier_Futter (FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag)
				VALUES ((SELECT TierID FROM Tier WHERE Name = @Tier_Name), (SELECT FutterID FROM Futter WHERE Name = @Futter_Name), @Futterbedarf_pro_Tag);
			
				COMMIT TRANSACTION
			END TRY
			BEGIN CATCH
				EXECUTE usp_GetErrorInfo
				ROLLBACK TRANSACTION
			END CATCH
		END

END
GO



--------------------------------------------------------------------------------
--1. Tier löschen
--------------------------------------------------------------------------------
--GUI: Tier_Name


use ZooTycoon

if object_id ('DeleteAnimal', 'P') is not null
	drop procedure DeleteAnimal;
go

CREATE PROCEDURE DeleteAnimal 

	@Tier_Name varchar(50) = NULL

AS
BEGIN

	BEGIN TRANSACTION
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

	BEGIN TRY
		DELETE FROM Tier_Tierpfleger WHERE FK_Tier_TierID = (SELECT TierID FROM Tier WHERE Name = @Tier_Name);
		DELETE FROM Tier_Futter WHERE FK_Tier_TierID = (SELECT TierID FROM Tier WHERE Name = @Tier_Name);
		DELETE FROM Tier WHERE Name = @Tier_Name;

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		EXECUTE usp_GetErrorInfo
		ROLLBACK TRANSACTION
	END CATCH

END
GO

