CREATE PROCEDURE [dbo].[Customers_Update]
	@LastName nvarchar(50),
	@CustomerEmail nvarchar(50)
AS
BEGIN
	UPDATE [Customers] SET CustomerEmail = @CustomerEmail
	WHERE LastName = @LastName
END