------------------------------------------
-- 1. Alle Tiere die Strukturmuesli fressen
------------------------------------------

-- Usage:
-- select * from Strukturmuesli_view

use ZooTycoon;

if object_id ('Strukturmuesli_view', 'V') is not null
	drop view Strukturmuesli_view;
go

CREATE VIEW Strukturmuesli_view
AS
SELECT Tier.Name, Spezies
FROM Tier
INNER JOIN Tier_Futter
ON Tier.TierID = Tier_Futter.FK_Tier_TierID
INNER JOIN Futter
ON Tier_Futter.FK_Futter_FutterID = Futter.FutterID
WHERE Futter.Name = 'Zebra, Muntjaks & Tapire Strukturmuesli 15 kg';
GO

------------------------------------------
-- 2. Alle Tiere eines Tierpflegers
------------------------------------------

-- Usage:
-- select * from pflegertiere_view

if object_id ('pflegertiere_view', 'V') is not null
	drop view pflegertiere_view;
go

CREATE VIEW pflegertiere_view
AS
SELECT Name, Spezies
From Tier
INNER JOIN Tier_Tierpfleger
ON Tier.TierID = Tier_Tierpfleger.FK_Tier_TierID
INNER JOIN Tierpfleger
ON Tier_Tierpfleger.FK_Tierpfleger_TierpflegerID = Tierpfleger.TierpflegerID
Where Tierpfleger.Vorname = 'Eva'
And Tierpfleger.Nachname = 'Rosenberger';
GO
