create proc [dbo].[Login_ChangePassword]
    @email nvarchar(100),
    @passwordHash nvarchar(200)
AS
BEGIN

    UPDATE Login SET passwordHash = @passwordHash
	WHERE email = @email

END
GO