

CREATE PROCEDURE [dbo].[Addresses_Update]
	@Country NVARCHAR(30),
	@state NVARCHAR(20)
AS
BEGIN
	UPDATE [Addresses] SET Country = @Country
	WHERE [state] = @state
END