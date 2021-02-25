USE SoftUni

CREATE PROC usp_GetEmployeesSalaryAboveNumber(@Salary decimal(18, 4))
AS
BEGIN
SELECT FirstName AS 'First Name', LastName AS 'Last Name'
FROM Employees
WHERE Salary >= @Salary
END
GO

exec usp_GetEmployeesSalaryAboveNumber  48100