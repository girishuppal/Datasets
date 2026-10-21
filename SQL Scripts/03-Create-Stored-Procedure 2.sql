CREATE PROCEDURE dbo.uspGetProductByCategory
    @ProductCategory varchar(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ProductID, ProductName, UnitsInStock
FROM dbo.Products
    WHERE ProductCategory = @ProductCategory
      
END;
GO