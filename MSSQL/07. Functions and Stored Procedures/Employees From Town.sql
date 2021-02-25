USE SoftUni

CREATE PROC usp_GetEmployeesFromTown(@TownName nvarchar(20))
AS
BEGIN
SELECT e.FirstName AS 'First Name', e.LastName AS 'Last Name'
FROM Employees as e
         JOIN Addresses A ON A.AddressID = e.AddressID
         JOIN Towns T ON A.TownID = T.TownID
WHERE T.Name = @TownName
END
    GO

exec usp_GetEmployeesFromTown 'Sofia'