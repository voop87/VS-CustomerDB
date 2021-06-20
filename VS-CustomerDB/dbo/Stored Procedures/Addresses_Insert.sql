CREATE PROCEDURE [dbo].[Addresses_Insert]
	@AddressLine NVARCHAR(100),
	@AddressLine2 NVARCHAR(100),
	@AddressType NVARCHAR(8),
	@City NVARCHAR(50),
	@PostalCode NVARCHAR(6),
	@state NVARCHAR(20),
	@Country NVARCHAR(30)
AS
BEGIN
	INSERT INTO [Addresses] (AddressLine, AddressLine2, AddressType, City, PostalCode, [state], Country, CustomerId)
	VALUES (@AddressLine, @AddressLine2, @AddressType, @City, @PostalCode, @state, @Country,
	(SELECT TOP 1 Customers.CustomerId FROM Customers))
END