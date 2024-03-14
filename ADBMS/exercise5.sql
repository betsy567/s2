CREATE DATABASE STORE;
USE STORE;
CREATE TABLE Product(Pdtid INT PRIMARY KEY,
PName VARCHAR(30),
Price float,
Quantity int);

call insertproduct(100,'Book',20.00,10);

procedure

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertproduct`(in barcode int,in productname varchar(30),in price float,in quantityinstock int)
BEGIN
if (price > 0 && quantityinstock>=0)
then
insert into Product values(barcode,productname,price,quantityinstock);
end if;
END