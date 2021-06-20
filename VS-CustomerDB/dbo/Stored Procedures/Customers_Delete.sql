CREATE PROCEDURE [dbo].[Customers_Delete]
	@CustomerId int
AS
BEGIN
	DELETE FROM [Customers]
	WHERE CustomerId = @CustomerId
END