CREATE proc [dbo].[Login_SelectAll]
AS
BEGIN
    SELECT w.id, w.firstName, w.lastName, w.email, w.dateCreated,
        w.emailConfirmed, w.isAdmin, w.passwordHash, w.isSecurityAdmin
    FROM login w
    ORDER BY w.lastName, w.firstName, w.dateCreated
END
GO