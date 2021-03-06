USE Gringotts

SELECT top(2) DepositGroup
FROM (
SELECT DepositGroup, avg(MagicWandSize) as AverageWandSize
FROM WizzardDeposits
GROUP BY DepositGroup) as AverageWandSizeQuery
ORDER BY AverageWandSize