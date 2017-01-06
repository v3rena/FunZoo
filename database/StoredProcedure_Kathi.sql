--TODO: error handling
--vertraue keinem userInput
--ev. Warnung anpassen, für welche Tierart wenig Futter tatsächlich wenig ist.

IF OBJECT_ID ( 'fuetterung', 'P' ) IS NOT NULL   
    DROP PROCEDURE fuetterung;  
GO

create procedure fuetterung
	@species varchar(38)
as
	--set nocount on; -- was bedeutet das?
	declare @Restbestand float(38)
	select @Restbestand = (
		(select Bestand from Futter where FutterID = 
				(select FK_Futter_FutterID from Tier_Futter where FK_Tier_TierID =
					(select MIN(TierID) from Tier where Spezies = @species)
				)
			)
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
			where FutterID =
				(select FK_Futter_FutterID from Tier_Futter where FK_Tier_TierID =
					(select MIN(TierID) from Tier where Spezies = @species))

		if @Restbestand < 2
			begin
				print 'Nur noch weniger als 2kg dieses Futtermittels vorhanden.'
			end
	end
go

execute fuetterung Grevyzebra;

--Select * from Tier;
--Select * from Tier_Futter;
--Select * from Futter;

--INSERT INTO Tier (Name, Geschlecht, Spezies, FK_Gehege_GehegeID) VALUES ('Kuegelchen', 'w', 'Braunbär', '5');
--INSERT INTO Tier_Futter(FK_Tier_TierID, FK_Futter_FutterID, Futterbedarf_pro_Tag) VALUES ('7','3',0.5);
