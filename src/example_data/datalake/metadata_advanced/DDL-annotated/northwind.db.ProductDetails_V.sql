CREATE VIEW [ProductDetails_V] as
select 
p.*, 
c.CategoryName, c.Description as [CategoryDescription],
s.CompanyName as [SupplierName], s.Region as [SupplierRegion]
from [Products] p
join [Categories] c on p.CategoryId = c.CategoryId
join [Suppliers] s on s.SupplierId = p.SupplierId
/* ProductDetails_V(ProductID,ProductName,SupplierID,CategoryID,QuantityPerUnit,UnitPrice,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued,CategoryName,CategoryDescription,SupplierName,SupplierRegion) */;

-- 

-- File: northwind.ProductDetails_V.txt 
-- ProductID: INTEGER FROM 1 TO 77 like [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
-- ProductName: TEXT FROM Alice Mutton TO Zaanse koeken like ['Zaanse koeken', 'Wimmers gute Semmelknödel', 'Vegie-spread', 'Valkoinen suklaa', "Uncle Bob's Organic Dried Pears", 'Tunnbröd', 'Tourtière', 'Tofu', 'Thüringer Rostbratwurst', 'Teatime Chocolate Biscuits']
-- SupplierID: INTEGER FROM 1 TO 29 like [12, 7, 8, 2, 24, 23, 20, 17, 16, 15]
-- CategoryID: INTEGER FROM 1 TO 8 like [3, 8, 2, 1, 4, 5, 6, 7]
-- QuantityPerUnit: TEXT FROM 1 kg pkg. TO 750 cc per bottle like ['24 - 12 oz bottles', '5 kg pkg.', '24 - 250 g pkgs.', '24 - 200 g pkgs.', '10 - 500 g pkgs.', '750 cc per bottle', '500 ml', '500 g', '50 bags x 30 sausgs.', '50 - 300 g pkgs.']
-- UnitPrice: NUMERIC FROM 2.5 TO 263.5 like [18, 14, 10, 43.9, 38, 21, 19, 15, 12.5, 9.5]
-- UnitsInStock: INTEGER FROM 0 TO 125 like [0, 26, 17, 15, 20, 112, 76, 39, 36, 29]
-- UnitsOnOrder: INTEGER FROM 0 TO 100 like [0, 70, 10, 40, 100, 80, 60, 50, 30, 20]
-- ReorderLevel: INTEGER FROM 0 TO 30 like [0, 25, 15, 30, 20, 5, 10]
-- Discontinued: TEXT FROM 0 TO 1 like ['0', '1']
-- CategoryName: TEXT FROM Beverages TO Seafood like ['Confections', 'Seafood', 'Condiments', 'Beverages', 'Dairy Products', 'Grains/Cereals', 'Meat/Poultry', 'Produce']
-- CategoryDescription: TEXT FROM Breads, crackers, pasta, and cereal TO Sweet and savory sauces, relishes, spreads, and seasonings like ['Desserts, candies, and sweet breads', 'Sweet and savory sauces, relishes, spreads, and seasonings', 'Soft drinks, coffees, teas, beers, and ales', 'Seaweed and fish', 'Cheeses', 'Breads, crackers, pasta, and cereal', 'Prepared meats', 'Dried fruit and bean curd']
-- SupplierName: TEXT FROM Aux joyeux ecclésiastiques TO Zaanse Snoepfabriek like ['Plutzer Lebensmittelgroßmärkte AG', 'Pavlova, Ltd.', 'Specialty Biscuits, Ltd.', 'New Orleans Cajun Delights', 'Tokyo Traders', 'Svensk Sjöföda AB', 'Norske Meierier', "Mayumi's", 'Leka Trading', 'Karkki Oy']
-- SupplierRegion: TEXT FROM British Isles TO Western Europe like ['North America', 'Western Europe', 'Southern Europe', 'Northern Europe', 'British Isles', 'Scandinavia', 'Eastern Asia', 'Victoria', 'South-East Asia', 'NSW']
-- 
