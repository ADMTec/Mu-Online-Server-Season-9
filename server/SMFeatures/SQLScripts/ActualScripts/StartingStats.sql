USE MuOnline
IF EXISTS (SELECT name FROM sysobjects
WHERE name = 'MU_BONUS' AND type = 'TR')
DROP TRIGGER MU_BONUS
GO

CREATE TRIGGER MU_BONUS ON Dbo.Character FOR INSERT
AS
BEGIN

DECLARE
@Resets INT,
@Points INT,
@Money INT,
@Char varchar(10)
SELECT @Char = Name FROM INSERTED

SET @Resets = 0 -- Start Resets
SET @Points = 5000 -- Start LVL Up Points
SET @Money = 500000000 -- Start Zen

UPDATE Dbo.Character
SET Resets = @Resets, LevelUpPoint = @Points, Money = @Money
WHERE Name = @Char
END