CREATE DATABASE TOYSGROUP;

USE TOYSGROUP;

-- Per quanto riguarda il primo punto dell'esercizio, ho direttamente inserito UNIQUE nelle Primary Key durante la creazione delle tabelle

-- Creazione della tabella Product
CREATE TABLE Product (
    ProductID INT UNIQUE
    , ProductName VARCHAR(50)
    , UnitPrice DECIMAL (8, 2)
    , CATEGORY VARCHAR (75)
    , CONSTRAINT PK_Product PRIMARY KEY (ProductID)
);

-- Creazione della tabella Region
CREATE TABLE Region (
    RegionId INT UNIQUE
    , RegionName VARCHAR(55)
    , Country VARCHAR(55)
    , CONSTRAINT PK_Region PRIMARY KEY (RegionID)
);

-- Creazione della tabella Sales
CREATE TABLE Sales (
    SaleID INT UNIQUE
    , SaleDate DATE
    , QuantitySold INT
    , TotalSale DECIMAL(10, 2)
    , ProductID INT
    , RegionID INT
    , CONSTRAINT PK_Sales PRIMARY KEY (SaleID)
	, CONSTRAINT FK_Product FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
    , CONSTRAINT FK_Region FOREIGN KEY (RegionID) REFERENCES Region (RegionID)
);

INSERT INTO Region (RegionID, RegionName, Country) VALUES
(1, 'North America', 'USA'),
(2, 'Europe', 'Germany'),
(3, 'Asia', 'Japan'),
(4, 'South America', 'Brazil'),
(5, 'Africa', 'Nigeria'),
(6, 'Oceania', 'Australia'),
(7, 'Europe', 'France'),
(8, 'Africa', 'South Africa'),
(9, 'Asia', 'India'),
(10, 'Europe', 'Italy');

INSERT INTO Product (ProductID, ProductName, UnitPrice, Category) VALUES
(1, 'Gaming Console', 299.99, 'Electronics'),
(2, 'Laptop', 799.99, 'Electronics'),
(3, 'Smartphone', 499.99, 'Electronics'),
(4, 'Wireless Mouse', 25.99, 'Accessories'),
(5, 'Keyboard', 45.99, 'Accessories'),
(6, 'Headphones', 79.99, 'Accessories'),
(7, 'Action Figure', 15.99, 'Toys'),
(8, 'Board Game', 39.99, 'Toys'),
(9, 'Puzzle', 19.99, 'Toys'),
(10, 'Car Racing Game', 49.99, 'Games'),
(11, 'Strategy Game', 59.99, 'Games'),
(12, 'Adventure Game', 54.99, 'Games'),
(13, 'Sports Watch', 120.99, 'Wearables'),
(14, 'Fitness Tracker', 99.99, 'Wearables'),
(15, 'Smart Home Device', 89.99, 'Home Automation'),
(16, 'Smart Bulb', 19.99, 'Home Automation'),
(17, 'VR Headset', 299.99, 'Electronics'),
(18, 'Smart TV', 499.99, 'Electronics'),
(19, 'Robot Vacuum', 199.99, 'Home Appliances'),
(20, 'Air Purifier', 249.99, 'Home Appliances');

INSERT INTO Sales (SaleID, ProductID, RegionID, QuantitySold, TotalSale, SaleOrder) VALUES
(1, 1, 1, 10, 2999.90, 1001),
(2, 2, 2, 5, 3999.95, 1002),
(3, 3, 3, 8, 3999.92, 1003),
(4, 4, 4, 25, 649.75, 1004),
(5, 5, 5, 15, 689.85, 1005),
(6, 6, 6, 20, 1599.80, 1006),
(7, 7, 7, 50, 799.50, 1007),
(8, 8, 8, 30, 1199.70, 1008),
(9, 9, 9, 10, 199.90, 1009),
(10, 10, 10, 6, 299.94, 1010),
(11, 11, 1, 12, 719.88, 1011),
(12, 12, 2, 9, 494.91, 1012),
(13, 13, 3, 18, 2177.82, 1013),
(14, 14, 4, 30, 2999.70, 1014),
(15, 15, 5, 40, 3599.60, 1015),
(16, 16, 6, 20, 399.80, 1016),
(17, 17, 7, 15, 4499.85, 1017),
(18, 18, 8, 10, 4999.90, 1018),
(19, 19, 9, 8, 1599.92, 1019),
(20, 20, 10, 12, 2999.88, 1020),
(21, 1, 2, 5, 1499.95, 1021),
(22, 2, 3, 7, 3499.93, 1022),
(23, 3, 4, 10, 4999.90, 1023),
(24, 4, 5, 15, 389.85, 1024),
(25, 5, 6, 20, 919.80, 1025),
(26, 6, 7, 25, 1599.75, 1026),
(27, 7, 8, 30, 479.70, 1027),
(28, 8, 9, 35, 1399.65, 1028),
(29, 9, 10, 12, 239.88, 1029),
(30, 10, 1, 8, 399.92, 1030),
(31, 11, 2, 5, 299.95, 1031),
(32, 12, 3, 6, 329.94, 1032),
(33, 13, 4, 10, 1209.90, 1033),
(34, 14, 5, 15, 1499.85, 1034),
(35, 15, 6, 20, 1799.80, 1035),
(36, 16, 7, 12, 239.88, 1036),
(37, 17, 8, 5, 2249.95, 1037),
(38, 18, 9, 7, 3499.93, 1038),
(39, 19, 10, 10, 1999.90, 1039),
(40, 20, 1, 4, 999.96, 1040),
(41, 1, 2, 6, 1799.94, 1041),
(42, 2, 3, 8, 3999.92, 1042),
(43, 3, 4, 9, 4499.91, 1043),
(44, 4, 5, 18, 467.82, 1044),
(45, 5, 6, 10, 459.90, 1045),
(46, 6, 7, 20, 1599.80, 1046),
(47, 7, 8, 25, 399.75, 1047),
(48, 8, 9, 15, 599.85, 1048),
(49, 9, 10, 7, 139.93, 1049),
(50, 10, 1, 6, 299.94, 1050);

-- Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno
SELECT 
    p.ProductID
    , p.ProductName
    , YEAR(s.SaleDate) AS SaleYear
    , SUM(s.QuantitySold * p.UnitPrice) AS TotalRevenue
FROM 
    Sales AS s
JOIN 
    Product AS p
ON s.ProductID = p.ProductID
GROUP BY 
    p.ProductID
    , YEAR(s.SaleDate)
ORDER BY 
    p.ProductID
    , SaleYear;
    
-- Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente
SELECT 
    r.RegionName
    , YEAR(s.SaleDate) AS SaleYear
    , SUM(s.QuantitySold * p.UnitPrice) AS TotalRevenue
FROM 
    Sales AS s
JOIN 
    Product AS p
ON s.ProductID = p.ProductID
JOIN 
    Region AS r
ON s.RegionID = r.RegionID
GROUP BY 
    r.RegionName 
    , YEAR (s.SaleDate)
ORDER BY 
    SaleYear ASC
    , TotalRevenue DESC;

-- Qual è la categoria di articoli maggiormente richiesta dal mercato?
SELECT 
    p.Category
    , SUM(s.QuantitySold * p.UnitPrice) AS TotalRevenue
FROM 
    Sales AS s
JOIN 
    Product AS p
ON s.ProductID = p.ProductID
GROUP BY 
    p.Category
ORDER BY 
    TotalRevenue DESC
LIMIT 1;

-- Quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti.
-- Approccio n. 1
SELECT 
    p.ProductID
    , p.ProductName
    , p.Category
FROM 
    Product AS p
LEFT JOIN 
    Sales AS s
ON p.ProductID = s.ProductID
WHERE 
    s.SaleID IS NULL;

-- Approccio n. 2
SELECT 
    p.ProductID
    , p.ProductName
    , p.Category
FROM 
    Product AS p
WHERE 
    NOT EXISTS (
        SELECT 1
        FROM Sales AS s
        WHERE s.ProductID = p.ProductID
    );

-- Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente)
SELECT 
    p.ProductID
    , p.ProductName
    , MAX(s.SaleDate) AS LastSaleDate
FROM 
    Product AS p
JOIN 
    Sales AS s
ON p.ProductID = s.ProductID
GROUP BY 
    p.ProductID
    , p.ProductName
ORDER BY 
    LastSaleDate DESC;