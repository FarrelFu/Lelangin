CREATE TABLE Product
(
	[ProductID] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[ProductName] VARCHAR(100) NOT NULL,
	[ProductCurrentBid] INT NOT NULL,
	[ProductBuyout] INT NOT NULL,
	[ProductDesc] VARCHAR(255) NOT NULL,
	[ProductCategory] VARCHAR(100) NOT NULL,
	[ProductImage] VARCHAR(100) NOT NULL,
	[ProductFinalPrice] INT,
	[ProductDateEnd] DATE NOT NULL
)

CREATE TABLE Customer
(
    [CustomerId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    [CustomerName] VARCHAR(100) NOT NULL,
    [CustomerPass] VARCHAR(100) NOT NULL,
    [CustomerAddress] VARCHAR(100) NOT NULL,
    [CustomerEmail] VARCHAR(100) NOT NULL

);


CREATE TABLE AfterPay
(
	[PayId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
	[ProductId] INT NOT NULL FOREIGN KEY REFERENCES Product(ProductID), 
    [ProductName] VARCHAR(100) NOT NULL, 
    [ProductBuyPrice] INT NOT NULL,
    [ProductImage] VARCHAR(100) NOT NULL,
	[ProductDateEnd] DATE NOT NULL,
    [TransactionStatus] VARCHAR(100) NOT NULL
	
);