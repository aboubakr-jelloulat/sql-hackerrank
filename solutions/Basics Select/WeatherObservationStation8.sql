/*

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

*/

SET NOCOUNT ON;


SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[aeiou]%'    -- first character is a vowel
  AND CITY LIKE '%[aeiou]';   -- last character is a vowel
go