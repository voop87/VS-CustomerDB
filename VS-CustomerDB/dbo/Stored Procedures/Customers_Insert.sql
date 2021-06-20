CREATE PROCEDURE [dbo].[Customers_Insert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@CustomerPhoneNumber nvarchar(15),
	@CustomerEmail nvarchar(50),
	@TotalPurchaseAmount money
AS
BEGIN
	INSERT INTO [Customers] (FirstName, LastName, CustomerPhoneNumber, CustomerEmail, TotalPurchaseAmount)
	VALUES (@FirstName, @LastName, @CustomerPhoneNumber, @CustomerEmail, @TotalPurchaseAmount)
END