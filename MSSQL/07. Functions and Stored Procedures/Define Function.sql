USE SoftUni

CREATE FUNCTION ufn_IsWordComprised(@setOfLetters varchar(max), @word varchar(max))
    RETURNS bit AS
BEGIN
    DECLARE @WordLength int=LEN(@word);
    DECLARE @Index int=1;

    WHILE (@Index <= @WordLength)
        BEGIN
            IF (CHARINDEX(SUBSTRING(@word, @Index, 1), @setOfLetters)=0)
                BEGIN
                    RETURN 0
                END

            SET @Index+=1
        END
    RETURN 1
END
GO

SELECT dbo.ufn_IsWordComprised('oistmiahf', 'Sofia')
SELECT dbo.ufn_IsWordComprised('oistmiahf', 'halves')
SELECT dbo.ufn_IsWordComprised('bobr', 'Rob')
SELECT dbo.ufn_IsWordComprised('pppp', 'Guy')
GO