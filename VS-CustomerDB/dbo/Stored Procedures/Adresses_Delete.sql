

CREATE PROCEDURE [dbo].[Adresses_Delete]
	@AddressId int
AS
BEGIN
	DELETE FROM [Addresses]
	WHERE AddressId = @AddressId
END