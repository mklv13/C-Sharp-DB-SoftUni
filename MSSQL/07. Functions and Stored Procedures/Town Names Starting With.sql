USE SoftUni

CREATE PROC usp_GetTownsStartingWith(@StartingString NVARCHAR(MAX))
AS
BEGIN
SELECT t.Name AS Town
FROM Towns as t
WHERE t.Name LIKE @StartingString + '%';
END
GO

EXEC usp_GetTownsStartingWith 'b'