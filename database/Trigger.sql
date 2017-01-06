--------------------------------------------------------------------------------
--Zoo Tycoon Create Database
--Tobias Nemecek, Verena Pötzl, Katharina Schallerl, Matthias Wögerbauer
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--TRIGGER
--------------------------------------------------------------------------------

--1. Trigger: Tiere hinzufügen und löschen nur mittels Stored Procedure

if object_id ('TR_InsertDeleteAnimals', 'TR') is not null
	drop trigger TR_InsertDeleteAnimals;
go

Create Trigger TR_InsertDeleteAnimals
on  Tier
instead of insert, delete
as
RAISERROR ('Benutzen Sie die Stored Procedures InsertAnimal und DeleteAnimal um Tiere hinzuzufügen und zu löschen!', 16, 10);
GO
