USE SoftUni

CREATE PROC usp_AssignProject(@emloyeeId int, @projectID int)
AS
BEGIN
    BEGIN TRANSACTION
        IF (SELECT COUNT(*) FROM EmployeesProjects WHERE EmployeeID = @emloyeeId) >= 3
            BEGIN
                ROLLBACK
                RAISERROR ('The employee has too many projects!',16,1)
            END
        INSERT INTO EmployeesProjects
        VALUES (@emloyeeId, @projectID);
    COMMIT
END