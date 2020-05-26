
create proc [dbo].[Login_Insert]
  @firstName nvarchar(50),
  @lastName nvarchar(50),
  @email nvarchar(100),
  @passwordHash nvarchar(200),
  @id int OUTPUT
AS
BEGIN

  INSERT Login
    (firstName, lastName, email, passwordHash)
  VALUES(@firstName, @lastName, @email, @passwordHash)

  SET @id = SCOPE_IDENTITY()


END
GO