create proc [dbo].[SecurityToken_Insert]
    @token nvarchar(200),
    @email nvarchar(100)
AS
BEGIN
    INSERT SecurityToken
        (token, email )
    VALUES
        (@token, @email)
END
GO