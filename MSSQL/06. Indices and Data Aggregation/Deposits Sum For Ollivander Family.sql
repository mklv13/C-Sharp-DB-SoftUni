USE Gringotts

SELECT DepositGroup, sum(DepositAmount) AS TotalSum
FROM WizzardDeposits
WHERE  MagicWandCreator LIKE 'Ollivander family'
GROUP BY DepositGroup