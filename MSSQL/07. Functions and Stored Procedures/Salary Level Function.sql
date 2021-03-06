USE SoftUni

CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18, 4))
    RETURNS varchar(7)
AS
BEGIN
    DECLARE @salaryLevel varchar(7);

    IF (@salary < 30000)
        SET @salaryLevel = 'Low';
    ELSE
        IF (@salary <= 50000)
            SET @salaryLevel = 'Average';
        ELSE
            SET @salaryLevel = 'High';
    RETURN @salaryLevel
END
GO


SELECT CAST(Salary AS decimal(18, 2)) AS Salary,
       dbo.ufn_GetSalaryLevel(Salary) AS 'Salary Level'
FROM Employees