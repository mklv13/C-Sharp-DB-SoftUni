use SoftUni

CREATE TABLE Deleted_Employees
(
    EmployeeId INT PRIMARY KEY IDENTITY ,
     FirstName VARCHAR(50) NOT NULL ,
     LastName VARCHAR(50) NOT NULL ,
     MiddleName VARCHAR(50),
     JobTitle VARCHAR(50) NOT NULL ,
     DepartmentId INT NOT NULL ,
     Salary DECIMAL(18,2) NOT NULL
)

GO

CREATE TRIGGER tr_InsertEmployeesOnDelete
    ON Employees
    AFTER DELETE AS
    BEGIN
        INSERT INTO Deleted_Employees
        SELECT d.FirstName, d.LastName, d.MiddleName, d.JobTitle, d.DepartmentID, d.Salary
        FROM deleted as d
    END

GO