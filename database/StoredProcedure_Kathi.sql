--------------------------------------------------------------------------------
--Zoo Tycoon
--Tobias Nemecek, Verena Pötzl, Katharina Schallerl, Matthias Wögerbauer
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--STORED PROCEDURE Fuetterung
-- Autor: Katharina Schallerl (und Tobias Nemeczek)

--Vertraue keinem Userinput: stored procedure
--Error Handling
--Warnung, wenn wenig Futter
--Index auf Tier_Futter
--Transaction Level Serializable

--------------------------------------------------------------------------------
--usp_GetErrorInfo
--https://msdn.microsoft.com/en-us/library/ms175976.aspx
--------------------------------------------------------------------------------

Use ZooTycoon

IF OBJECT_ID ( 'usp_GetErrorInfo', 'P' ) IS NOT NULL   
    DROP PROCEDURE usp_GetErrorInfo;  
GO  
  
-- Create procedure to retrieve error information.  
CREATE PROCEDURE usp_GetErrorInfo  
AS  
BEGIN
	SELECT  
		ERROR_NUMBER() AS ErrorNumber  
		,ERROR_SEVERITY() AS ErrorSeverity  
		,ERROR_STATE() AS ErrorState  
		,ERROR_PROCEDURE() AS ErrorProcedure  
		,ERROR_LINE() AS ErrorLine
		,ERROR_MESSAGE() AS ErrorMessage;  
END
GO  
  
--BEGIN TRY  
    -- Generate divide-by-zero error.  
    --SELECT 1/0;  
--END TRY  
--BEGIN CATCH  
    -- Execute error retrieval routine.  
    --EXECUTE usp_GetErrorInfo;  
--END CATCH;

--------------------------------------------------------------------------------
--Stored Procedure fuetterung
--------------------------------------------------------------------------------

IF OBJECT_ID ( 'fuetterung', 'P' ) IS NOT NULL
    DROP PROCEDURE fuetterung;
GO

IF OBJECT_ID ( 'tfIndex', 'I' ) IS NOT NULL
    DROP INDEX tfIndex ON Tier_Futter;
GO
/*DROP INDEX IF EXISTS tfIndex
	ON Tier_Futter;
GO*/

CREATE PROCEDURE fuetterung
	@species varchar(50)
AS
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

CREATE INDEX tfIndex ON Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID);

BEGIN TRY
	BEGIN TRANSACTION

		SET NOCOUNT ON
		DECLARE @Restbestand float(38)
		DECLARE @FutterID numeric(38)

		DECLARE bedarf_cursor CURSOR
		FOR SELECT Futterbedarf_pro_Tag AS fpT FROM Tier_Futter WHERE FK_Tier_TierID in
			(SELECT TierID FROM Tier WHERE Spezies = @species)

		SELECT @FutterID = (
								SELECT FK_Futter_FutterID FROM Tier_Futter WHERE FK_Tier_TierID =
									(SELECT TOP 1 TierID FROM Tier WHERE Spezies = @species)
							)

		DECLARE @Bedarf float
		OPEN bedarf_cursor

		SELECT @Restbestand = Bestand FROM Futter WHERE FutterID = @FutterID

		FETCH NEXT FROM bedarf_cursor INTO @Bedarf
		WHILE @@FETCH_STATUS = 0
			BEGIN
				SET @Restbestand -= @Bedarf
				FETCH NEXT FROM bedarf_cursor INTO @Bedarf
			END

		CLOSE bedarf_cursor
		DEALLOCATE bedarf_cursor

	  /*
		select @Restbestand = (
			(select Bestand from Futter where FutterID = @FutterID)
			- (select sum(Futterbedarf_pro_Tag) as fpT from Tier_Futter where FK_Tier_TierID in
					(select TierID from Tier where Spezies = @species))
		);
	  */
	--PRINT @Restbestand

		IF @Restbestand < 0
			BEGIN
				PRINT 'nicht genug Futter'
			END
		ELSE
			BEGIN
				UPDATE Futter
					SET Bestand=@Restbestand
					WHERE FutterID = @FutterID

				IF @Restbestand < 2
					BEGIN
						PRINT 'Nur noch weniger als 2kg dieses Futtermittels vorhanden.'
					END
			END
	COMMIT TRANSACTION
END TRY
	BEGIN CATCH
		EXECUTE usp_GetErrorInfo
		IF @@trancount > 0 ROLLBACK TRANSACTION
	END CATCH
GO

--EXECUTE fuetterung Grevyzebra;

--Select * from Tier;
--Select * from Tier_Futter;
--Select * from Futter;

--INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Kuegelchen', 'w', 'Braunbaer', '5');
--INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('7','3',0.5);

--------------------------------------------------------------------------------
--Stored Procedure showAll, Verwendung eines Cursors
--------------------------------------------------------------------------------
IF OBJECT_ID ( 'showAll', 'P' ) IS NOT NULL
    DROP PROCEDURE showAll;
GO

CREATE PROCEDURE showAll
AS
BEGIN TRY
	DECLARE showAll_cursor CURSOR FORWARD_ONLY READ_ONLY
		FOR SELECT t.Name, t.Spezies, g.Oekozone
			FROM Tier AS t
			LEFT JOIN Gehege AS g ON g.GehegeID = t.FK_Gehege_GehegeID
			ORDER BY g.Oekozone
	DECLARE @Name varchar(38), @Spezies varchar(38), @Oekozone varchar(38)
	OPEN showAll_cursor
		FETCH NEXT FROM showAll_cursor INTO @Name, @Spezies, @Oekozone
		WHILE @@FETCH_STATUS = 0
			BEGIN
				PRINT @Name + ', ' + @Spezies + ', ' + @Oekozone;
				FETCH NEXT FROM showAll_cursor INTO @Name, @Spezies, @Oekozone
			END
	CLOSE showAll_cursor
	DEALLOCATE showAll_cursor
END TRY
BEGIN CATCH
	EXECUTE usp_GetErrorInfo;
	THROW
END CATCH

EXEC showAll;