--------------------------------------------------------------------------------
--Zoo Tycoon Setup Database
--Tobias Nemecek, Verena P�tzl, Katharina Schallerl, Matthias W�gerbauer
--------------------------------------------------------------------------------

USE Master

IF EXISTS(SELECT * FROM sysdatabases WHERE name = 'ZooTycoon')
  DROP DATABASE ZooTycoon
GO

---------------------------------------------------------------------------------------------------
--Dateipfad entspricht MSSQL12 Express Edition, bei Verwendung anderer Edition entsprechend �ndern
---------------------------------------------------------------------------------------------------
CREATE DATABASE ZooTycoon

ON PRIMARY (
  Name = 'ZooTycoon_DATA',
  Filename='C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\ZooTycoon_DATA.mdf',
  Size = 10MB,
  Filegrowth = 10%
)
LOG ON (
  Name = 'ZooTycoon_Log',
  Filename='C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\ZooTycoon_LOG.ldf',
  Size = 10MB,
  Filegrowth = 10%
)