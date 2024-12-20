CREATE TABLE [Suppliers](
   [SupplierID]INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   [CompanyName]TEXT NOT NULL,
   [ContactName]TEXT,
   [ContactTitle]TEXT,
   [Address]TEXT,
   [City]TEXT,
   [Region]TEXT,
   [PostalCode]TEXT,
   [Country]TEXT,
   [Phone]TEXT,
   [Fax]TEXT,
   [HomePage]TEXT
);

-- <METADATA CHANNEL="sqlite" DATABASE="northwind.db" TABLE="Suppliers">
-- - Description: Information about suppliers of products.
-- - Data:
-- -- CompanyName: Name of the supplier company
-- -- ContactName: Name of the contact person at the supplier
-- -- ContactTitle: Job title of the contact person
-- -- Address: Street address of the supplier
-- -- City: City where the supplier is located
-- -- Region: Regional area where the supplier is located
-- -- PostalCode: Postal code of the supplier's address
-- -- Country: Country where the supplier is located
-- -- Phone: Phone number of the supplier
-- -- Fax: Fax number of the supplier
-- -- HomePage: Website URL of the supplier
-- </METADATA>

-- File: northwind.Suppliers.txt 
-- SupplierID: INTEGER FROM 1 TO 29 like [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
-- CompanyName: TEXT FROM Aux joyeux ecclésiastiques TO Zaanse Snoepfabriek like ['Zaanse Snoepfabriek', 'Tokyo Traders', 'Svensk Sjöföda AB', 'Specialty Biscuits, Ltd.', 'Refrescos Americanas LTDA', 'Plutzer Lebensmittelgroßmärkte AG', 'Pavlova, Ltd.', 'Pasta Buttini s.r.l.', 'PB Knäckebröd AB', 'Norske Meierier']
-- ContactName: TEXT FROM Anne Heikkonen TO Yoshi Nagase like ['Yoshi Nagase', 'Wendy Mackenzie', 'Sven Petersen', 'Shelley Burke', 'Robb Merchant', 'Regina Murphy', 'Petra Winkler', 'Peter Wilson', 'Niels Petersen', 'Michael Björn']
-- ContactTitle: TEXT FROM Accounting Manager TO Wholesale Account Agent like ['Sales Representative', 'Marketing Manager', 'Sales Manager', 'Order Administrator', 'Accounting Manager', 'Wholesale Account Agent', 'Sales Agent', 'Regional Account Rep.', 'Purchasing Manager', 'Product Manager']
-- Address: TEXT FROM 148 rue Chasseur TO Viale Dante, 75 like ['Viale Dante, 75', 'Via dei Gelsomini, 153', 'Verkoop\nRijnweg 22', 'Valtakatu 12', 'Tiergartenstraße 5', 'P.O. Box 78934', 'Order Processing Dept.\n2100 Paul Revere Blvd.', 'Lyngbysild\nFiskebakken 10', 'Kaloadagatan 13', 'Hatlevegen 5']
-- City: TEXT FROM Ann Arbor TO Zaandam like ['Zaandam', 'Tokyo', 'São Paulo', 'Sydney', 'Stockholm', 'Ste-Hyacinthe', 'Singapore', 'Sandvika', 'Salerno', 'Ravenna']
-- Region: TEXT FROM British Isles TO Western Europe like ['Western Europe', 'North America', 'Southern Europe', 'Northern Europe', 'Scandinavia', 'Eastern Asia', 'British Isles', 'Victoria', 'South-East Asia', 'South America']
-- PostalCode: TEXT FROM 02134 TO S-345 67 like ['S-345 67', 'S-123 45', 'M14 GSD', 'J2S 7S8', 'H1J 1C3', 'EC1 4SD', '9999 ZZ', '97101', '84100', '75004']
-- Country: TEXT FROM Australia TO USA like ['USA', 'Germany', 'France', 'UK', 'Japan', 'Italy', 'Canada', 'Australia', 'Sweden ', 'Sweden']
-- Phone: TEXT FROM (0)2-953010 TO 85.57.00.07 like ['85.57.00.07', '555-8787', '43844108', '38.76.98.06', '08-123 45 67', '031-987 65 43', '(98) 598 76 54', '(953) 10956', '(617) 555-3267', '(514) 555-9022']
-- Fax: TEXT FROM (02) 555-4873 TO 43844115 like [None, '43844115', '38.76.98.58', '031-987 65 91', '(617) 555-3389', '(514) 555-2921', '(313) 555-3349', '(12345) 1210', '(1) 03.83.00.62', '(089) 6547667']
-- HomePage: TEXT FROM #CAJUN.HTM# TO Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm# like [None, 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#', "Mayumi's (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#", "G'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#", '#FORMAGGI.HTM#', '#CAJUN.HTM#']
-- 
