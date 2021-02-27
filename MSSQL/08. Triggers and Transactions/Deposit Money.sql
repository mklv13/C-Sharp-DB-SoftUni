USE Bank

CREATE PROC usp_DepositMoney(@AccountId int, @MoneyAmount money)
AS
    BEGIN TRANSACTION
    IF (@MoneyAmount < 0)
        BEGIN
            THROW 50005,'Amount should be positive',1;
        END
    IF (SELECT COUNT(*)
        FROM Accounts
        WHERE Id = @AccountId) < 1
        BEGIN
            THROW 50006,'Invalid AccountID',1;
        END

UPDATE Accounts
SET Balance = Balance + @MoneyAmount
WHERE @AccountId = Id;
    COMMIT

GO

EXEC usp_DepositMoney 1,10

SELECT *
FROM Logs;

SELECT *
FROM NotificationEmails;