USE Bank

CREATE TABLE NotificationEmails
(
    Id INT PRIMARY KEY IDENTITY,
    Recipient INT REFERENCES Accounts (Id),
    [Subject] NVARCHAR(max),
    Body NVARCHAR(max)
)

CREATE OR ALTER TRIGGER tr_AddToNotificationEmailOnLogsUpdate
    ON Logs
    FOR INSERT
    AS
    INSERT INTO NotificationEmails(Recipient, [Subject], Body)
    SELECT i.AccountID,
           'Balance change for account: ' + CAST(i.AccountID AS NVARCHAR(20)),
           'On ' + CONVERT(NVARCHAR(20), GETDATE(), 100) + ' your balance was changed from ' +
           CAST(i.OldSum AS NVARCHAR(20)) + ' to ' + CAST(i.NewSum AS NVARCHAR(20)) + '.'
    FROM inserted AS i

GO

exec usp_TransferFunds 12, 15,1000

SELECT * from Logs
SELECT *
FROM NotificationEmails;