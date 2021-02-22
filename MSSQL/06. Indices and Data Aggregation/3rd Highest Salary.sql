USE SoftUni

SELECT DepartmentID, MaxSalary
FROM (SELECT e.DepartmentID,
            MAX(e.Salary) AS MaxSalary,
             DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY e.Salary DESC)
                 AS SalaryRank
      FROM Employees as e
      GROUP BY e.DepartmentID, e.Salary) AS SalaryRankingQuery
WHERE SalaryRankingQuery.SalaryRank = 3