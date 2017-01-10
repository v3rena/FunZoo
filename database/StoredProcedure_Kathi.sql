--TODO: error handling
--vertraue keinem userInput
--ev. Warnung anpassen, f�r welche Tierart wenig Futter tats�chlich wenig ist.
--Index auf Tier_Futter, beide Foreign Keys
--transaction level: alle selektierten

IF OBJECT_ID ( 'fuetterung', 'P' ) IS NOT NULL
    DROP PROCEDURE fuetterung;
GO

create procedure fuetterung
	@species varchar(38)
as
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;

	--set nocount on
	declare @Restbestand float(38)
	declare @FutterID numeric(38)
	
	select @FutterID = (
							select FK_Futter_FutterID from Tier_Futter where FK_Tier_TierID =
								(select TOP 1 TierID from Tier where Spezies = @species)
						);
	select @Restbestand = (
		(select Bestand from Futter where FutterID = @FutterID)
		- (select sum(Futterbedarf_pro_Tag) as fpT from Tier_Futter where FK_Tier_TierID in 
				(select TierID from Tier where Spezies = @species))
	);
print @Restbestand

if @Restbestand < 0
	begin
		print 'nicht genug Futter'
	end
else
	begin
		update Futter
			set Bestand=@Restbestand
			where FutterID = @FutterID

		if @Restbestand < 2
			begin
				print 'Nur noch weniger als 2kg dieses Futtermittels vorhanden.'
			end
	end
COMMIT TRANSACTION;
go

execute fuetterung Grevyzebra;

--Select * from Tier;
--Select * from Tier_Futter;
--Select * from Futter;

--INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Kuegelchen', 'w', 'Braunbaer', '5');
--INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('7','3',0.5);
