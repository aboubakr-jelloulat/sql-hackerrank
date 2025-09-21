

/*

Find the difference between the total number of CITY entries in the table
	 and the number of distinct CITY entries in the table.

*/

SET NOCOUNT ON;

DECLARE @totalNumber INT;
DECLARE @unique INT;
DECLARE @difference INT;

SET @totalNumber = (SELECT COUNT(CITY) FROM STATION);

SET @unique = (SELECT COUNT(DISTINCT CITY) FROM STATION);

SET @difference = @totalNumber - @unique;

PRINT @difference;

go