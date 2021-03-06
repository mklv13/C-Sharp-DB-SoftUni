USE SoftUni

CREATE PROC usp_EmployeesBySalaryLevel (@SalaryLevel varchar(7))
AS
    BEGIN
        SELECT FirstName as 'First Name',
               LastName as 'Last Name'
        FROM Employees
        WHERE @SalaryLevel= dbo.ufn_GetSalaryLevel(Salary);
    END
GO

EXEC usp_EmployeesBySalaryLevel 'High'