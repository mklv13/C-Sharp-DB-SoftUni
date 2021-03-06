USE Bank

CREATE  PROC usp_CalculateFutureValueForAccount(@accountId INT, @interestRate FLOAT)
AS
BEGIN
    SELECT a.Id    ,
           AH.FirstName,
          AH.LastName ,
          a.Balance,
           dbo.ufn_CalculateFutureValue(a.Balance,@interestRate, 5)                                       
    FROM Accounts AS a
             JOIN AccountHolders AS AH ON AH.Id = a.AccountHolderId
             WHERE a.Id=@accountId;
END
GO

EXEC usp_CalculateFutureValueForAccount;