SELECT * FROM lesson1.phones;
SELECT ProductName, Brand, Price
FROM phones
WHERE ProductCount > 2;
SELECT *
FROM phones
WHERE Brand = "Samsung";
SELECT *
FROM phones
WHERE ProductCount * Price > 100000 and  ProductCount * Price < 150000;
SELECT *
FROM phones
WHERE ProductName LIKE "%iPhone%";
SELECT *
FROM phones
WHERE ProductName LIKE "%Galaxy%";
SELECT *
FROM phones
WHERE ProductName RLIKE "[0-9]";
SELECT *
FROM phones
WHERE ProductName LIKE "%8%";