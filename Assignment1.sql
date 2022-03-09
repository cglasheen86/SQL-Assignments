--1
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product

--2
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice != 0

--3
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NULL

--4
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL

--5
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice > 0

--6
SELECT Name + ' ' + Color
FROM Production.Product
WHERE Color IS NOT NULL

--7
SELECT 'NAME: ' + Name + ' -- COLOR: ' + Color
FROM Production.Product
WHERE Color IS NOT NULL

--8
SELECT ProductID, Name
FROM Production.Product
WHERE ProductID BETWEEN 400 AND 500

--9
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color IN('Black', 'Blue')

--10
SELECT Name
FROM Production.Product
WHERE Name LIKE 'S%'

--11
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'S%'
ORDER BY Name

--12
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'A%' OR Name LIKE 'S%'
ORDER BY Name

--13
SELECT *
FROM Production.Product
WHERE Name LIKE 'spo[^k]%'
ORDER BY Name

--14
SELECT DISTINCT Color
FROM Production.Product
ORDER BY Color DESC

--15
SELECT DISTINCT ProductSubcategoryID, Color
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL AND Color IS NOT NULL
