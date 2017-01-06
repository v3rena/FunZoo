--------------------------------------------------------------------------------
--Zoo Tycoon Create Database
--Tobias Nemecek, Verena P�tzl, Katharina Schallerl, Matthias W�gerbauer
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--TRIGGER
--------------------------------------------------------------------------------

--1. Trigger: Tiere hinzuf�gen und l�schen nur mittels Stored Procedure

if object_id ('TR_InsertDeleteAnimals', 'TR') is not null
	drop trigger TR_InsertDeleteAnimals;
go

Create Trigger TR_InsertDeleteAnimals
on  Tier
instead of insert, delete
as
RAISERROR ('Benutzen Sie die Stored Procedures InsertAnimal und DeleteAnimal um Tiere hinzuzuf�gen und zu l�schen!', 16, 10);
GO
