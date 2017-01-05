------------------------------------------
-- 1. Alle Tiere die Fleisch fressen
------------------------------------------

-- Usage:
-- select * from fleischfresser_view

CREATE VIEW fleischfresser_view
AS
SELECT Name, Spezies
FROM Tier
INNER JOIN Tier_Futter
ON Tier.TierID = Tier_Futter.FK_Tier_TierID
INNER JOIN Futter
ON Tier_Futter.FK_Futter_FutterID = Futter.FutterID
WHERE Futter.Name = 'Fleisch';
GO

------------------------------------------
-- 2. Alle Tiere eines Tierpflegers
------------------------------------------

-- Usage:
-- select * from pflegertiere_view

CREATE VIEW pflegertiere_view
AS
SELECT Name, Spezies
From Tier
INNER JOIN Tier_Tierpfleger
ON Tier.TierID = Tier_Tierpfleger.FK_Tier_TierID
INNER JOIN Tierpfleger
ON Tier_Tierpfleger.FK_Tierpfleger_TierpflegerID = Tierpfleger.TierpflegerID
Where Tierpfleger.Vorname = 'John'
And Tierpfleger.Nachname = 'Doe';
GO
