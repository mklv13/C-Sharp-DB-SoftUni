USE SoftUni

CREATE PROC usp_GetEmployeesSalaryAbove35000
AS
BEGIN
    SELECT FirstName AS 'First Name', LastName AS 'Last Name'
    FROM Employees
    WHERE Salary > 35000;
END
    EXEC usp_GetEmployeesSalaryAbove35000