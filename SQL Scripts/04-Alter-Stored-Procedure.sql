ALTER PROCEDURE dbo.uspGetLowStockProducts
AS
BEGIN
    SET NOCOUNT ON;

    -- Modified logic to include a reorder threshold
    SELECT ProductID, ProductName, UnitsInStock
    FROM dbo.Products
    WHERE UnitsInStock < 120
END;
GO