USE Bank

CREATE FUNCTION ufn_CalculateFutureValue(@Sum decimal(18, 4),
                                         @YearlyInterestRate float,
                                         @NumberOfYears int)
    RETURNS decimal(18, 4)
AS
BEGIN
    --f=i*((i+R)on pow T)
    DECLARE @futureValue decimal(18, 4);

    SET @futureValue = @sum * (POWER(1 + @YearlyInterestRate, @NumberOfYears));
    RETURN @futureValue
END
GO


SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)
GO