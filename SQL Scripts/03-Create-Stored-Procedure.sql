CREATE PROCEDURE dbo.uspGetLowStockProducts
AS
BEGIN
    -- SET NOCOUNT ON prevents extra "rows affected" messages from returning
    SET NOCOUNT ON; 

    -- Your SQL logic goes here
    SELECT ProductID, ProductName, UnitsInStock
    FROM dbo.Products
    WHERE UnitsInStock < 10;
END;

