CREATE DATABASE OnlineStore

USE OnlineStore

CREATE TABLE Cities
(
    CityID int PRIMARY KEY IDENTITY,
    Name   varchar(50) NOT NULL
)

CREATE TABLE Customers
(
    CustomerID int PRIMARY KEY IDENTITY,
    Name       varchar(50) NOT NULL,
    Birthday   date,
    CityID     int FOREIGN KEY REFERENCES Cities (CityID)
)

CREATE TABLE ItemTypes
(
    ItemTypeID int PRIMARY KEY IDENTITY,
    Name       varchar(50) NOT NULL
)

CREATE TABLE Items
(
    ItemID     int PRIMARY KEY IDENTITY,
    Name       varchar(50) NOT NULL,
    ItemTypeID int FOREIGN KEY REFERENCES ItemTypes (ItemTypeID)
)

CREATE TABLE Orders
(
    OrderID int PRIMARY KEY IDENTITY  ,
    CustomerID int NOT NULL FOREIGN  KEY  REFERENCES Customers(CustomerID)  
   
)
CREATE TABLE OrderItems
(
    OrderID int FOREIGN KEY REFERENCES Orders(OrderID),
    ItemID  int FOREIGN KEY REFERENCES Items (ItemID),
     PRIMARY KEY (OrderID, ItemID)
    
)