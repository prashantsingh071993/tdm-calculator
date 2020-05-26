CREATE proc [dbo].[Login_UpdateRoles]
    @isAdmin bit,
    @isSecurityAdmin bit,
    @id int
AS
BEGIN

    UPDATE Login SET
		isAdmin = @isAdmin,
		isSecurityAdmin = @isSecurityAdmin
	FROM Login
	WHERE id = @id

END
GO