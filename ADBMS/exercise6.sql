CREATE DATABASE TEST;
USE TEST;
CREATE TABLE Product(PdtId INT PRIMARY KEY,
Pname VARCHAR(20),
Price FLOAT,
Qtyinstock VARCHAR(15));
CREATE TABLE Sale(saleId INT PRIMARY KEY,
Deliveryaddress VARCHAR(40));
CREATE TABLE Saleitem(saleId int,
PdtId int,
PRIMARY KEY(saleId,PdtId),
FOREIGN KEY(saleId)REFERENCES Sale(saleId),
FOREIGN KEY(PdtId)REFERENCES Product(PdtId));
ALTER TABLE Saleitem ADD Qty VARCHAR(15);

CREATE TRIGGER updateAvailabilityQuantity
AFTER INSERT ON Saleitem
FOR EACH ROW
UPDATE Product SET Qtyinstock=Product.Qtyinstock-new.Qty WHERE PdtId=new.PdtId;

INSERT INTO Product VALUES(11,'BOOKS',10.00,20);
INSERT INTO Product VALUES(12,'PEN',5.00,30);
INSERT INTO Sale VALUES(11,'New York');
INSERT INTO Sale VALUES(2,'TORRONTO');
INSERT INTO Saleitem VALUES(11,11,5);
INSERT INTO Saleitem VALUES(2,12,10);
SELECT * FROM PRODUCT;
SELECT * FROM Sale;

show triggers;
select * from Saleitem;


