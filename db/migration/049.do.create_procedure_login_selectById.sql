CREATE proc [dbo].[Login_SelectById]
    @id int
AS
BEGIN

    /*

	EXEC Login_SelectById 1

*/
    SELECT w.id, w.firstName, w.lastName, w.email, w.dateCreated,
        w.emailConfirmed, w.isAdmin, w.passwordHash, w.isSecurityAdmin
    FROM login w
    WHERE w.id = @id
END
GO