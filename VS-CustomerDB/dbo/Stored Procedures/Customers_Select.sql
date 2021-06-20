

CREATE PROCEDURE [dbo].[Customers_Select]
	@LastName nvarchar(50)
AS
BEGIN
	SELECT * FROM [Customers]
	WHERE LastName = @LastName
END