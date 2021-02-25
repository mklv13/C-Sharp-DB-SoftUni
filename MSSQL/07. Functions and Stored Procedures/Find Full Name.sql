USE Bank

SELECT *
from AccountHolders

CREATE PROC usp_GetHoldersFullName
AS
    SELECT concat(FirstName,' ',LastName)
FROM AccountHolders

exec usp_GetHoldersFullName