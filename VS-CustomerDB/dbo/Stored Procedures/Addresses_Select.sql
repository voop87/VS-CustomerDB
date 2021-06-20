

CREATE PROCEDURE [dbo].[Addresses_Select]
	@City NVARCHAR(50)
AS
BEGIN
	SELECT * FROM [Addresses]
	WHERE City = @City
END