CREATE TABLE [Orders](
   [OrderID]INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   [CustomerID]TEXT,
   [EmployeeID]INTEGER,
   [OrderDate]DATETIME,
   [RequiredDate]DATETIME,
   [ShippedDate]DATETIME,
   [ShipVia]INTEGER,
   [Freight]NUMERIC DEFAULT 0,
   [ShipName]TEXT,
   [ShipAddress]TEXT,
   [ShipCity]TEXT,
   [ShipRegion]TEXT,
   [ShipPostalCode]TEXT,
   [ShipCountry]TEXT,
   FOREIGN KEY ([EmployeeID]) REFERENCES [Employees] ([EmployeeID]) 
                ON DELETE NO ACTION ON UPDATE NO ACTION,
        FOREIGN KEY ([CustomerID]) REFERENCES [Customers] ([CustomerID]) 
                ON DELETE NO ACTION ON UPDATE NO ACTION,
        FOREIGN KEY ([ShipVia]) REFERENCES [Shippers] ([ShipperID]) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- <METADATA CHANNEL="sqlite" DATABASE="northwind.db" TABLE="Orders">
-- - Description: Information about customer orders.
-- - Data:
-- -- CustomerID: Unique identifier of the customer who placed the order
-- -- EmployeeID: Unique identifier of the employee who processed the order
-- -- OrderDate: Date when the order was placed
-- -- RequiredDate: Date when the order is required to be delivered
-- -- ShippedDate: Date when the order was shipped
-- -- ShipVia: Unique identifier of the shipper used for the order
-- -- Freight: Shipping cost for the order
-- -- ShipName: Name of the recipient for the shipment
-- -- ShipAddress: Street address for the shipment
-- -- ShipCity: City for the shipment
-- -- ShipRegion: Regional area for the shipment
-- -- ShipPostalCode: Postal code for the shipment
-- -- ShipCountry: Country for the shipment
-- - Relationships:
-- -- (Orders.EmployeeID → Employees.EmployeeID) - Table containing employee information
-- -- (Orders.CustomerID → Customers.CustomerID) - Table containing customer information
-- -- (Orders.ShipVia → Shippers.ShipperID) - Table containing shipper information
-- </METADATA>

-- File: northwind.Orders.txt 
-- OrderID: INTEGER FROM 10248 TO 26529 like [10248, 10249, 10250, 10251, 10252, 10253, 10254, 10255, 10256, 10257]
-- CustomerID: TEXT FROM ALFKI TO WOLZA like ['BSBEV', 'RICAR', 'LILAS', 'GOURL', 'PRINI', 'HUNGC', 'TORTU', 'FOLIG', 'ANATR', 'RANCH']
-- EmployeeID: INTEGER FROM 1 TO 9 like [4, 3, 1, 5, 8, 7, 2, 9, 6]
-- OrderDate: TEXT FROM 2012-07-10 15:40:46 TO 2023-10-28 00:09:48 like ['2018-02-26', '2018-05-06', '2018-05-05', '2018-04-30', '2018-04-27', '2018-04-22', '2018-04-17', '2018-04-14', '2018-04-09', '2018-04-06']
-- RequiredDate: TEXT FROM 2012-07-12 11:00:21 TO 2023-12-14 23:09:18 like ['2018-03-26', '2018-04-28', '2018-05-15', '2018-05-06', '2018-04-27', '2018-04-17', '2018-04-08', '2018-03-24', '2017-02-13', '2018-06-03']
-- ShippedDate: TEXT FROM 2012-07-13 21:20:47 TO 2023-11-19 02:55:24 like [None, '2018-04-10', '2018-03-18', '2018-05-01', '2018-04-24', '2018-04-08', '2018-01-30', '2018-01-23', '2018-05-04', '2018-04-20']
-- ShipVia: INTEGER FROM 1 TO 3 like [2, 3, 1]
-- Freight: NUMERIC FROM 10.25 TO 587 like [22.5, 17.5, 30, 15, 20, 18.75, 18, 24.75, 21.25, 18.5]
-- ShipName: TEXT FROM Alfred-s Futterkiste TO Wolski Zajazd like ['Ernst Handel', 'Wolski Zajazd', 'Ana Trujillo Emparedados y helados', 'Queen Cozinha', 'Folk och fä HB', 'Save-a-lot Markets', 'Consolidated Holdings', 'HILARION-Abastos', 'Wartian Herkku', 'Seven Seas Imports']
-- ShipAddress: TEXT FROM 1 rue Alsace-Lorraine TO Åkergatan 24 like ['Obere Str. 57', 'Kirchgasse 6', 'ul. Filtrowa 68', 'Avda. de la Constitución 2222', 'Alameda dos Canàrios, 891', 'Åkergatan 24', '187 Suffolk Ln.', 'Berkeley Gardens 12 \xa0Brewery', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'Torikatu 38']
-- ShipCity: TEXT FROM Aachen TO Århus like ['London', 'México D.F.', 'Sao Paulo', 'Rio de Janeiro', 'Buenos Aires', 'Berlin', 'Nantes', 'Lisboa', 'Madrid', 'Portland']
-- ShipRegion: TEXT FROM British Isles TO Western Europe like ['Western Europe', 'South America', 'North America', 'Southern Europe', 'British Isles', 'Central America', 'Northern Europe', 'Scandinavia', 'Eastern Europe']
-- ShipPostalCode: TEXT FROM 01-012 TO WX3 6FW like ['1010', '12209', '5022', '44000', '5033', '8010', '01-012', '5021', '05487-020', 'S-844 67']
-- ShipCountry: TEXT FROM Argentina TO Venezuela like ['USA', 'Germany', 'France', 'Brazil', 'UK', 'Mexico', 'Venezuela', 'Spain', 'Canada', 'Italy']
-- 
