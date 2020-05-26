CREATE proc [dbo].[Login_SelectByEmail]
    @email nvarchar(100)
AS
BEGIN

    /*

	EXEC Login_SelectByEmail 'darragh@entrotech.net'

*/
    SELECT w.id, w.firstName, w.lastName, w.email, w.dateCreated,
        w.emailConfirmed, w.isAdmin, w.passwordHash, w.isSecurityAdmin
    FROM login w
    WHERE w.email like @email
END
GO