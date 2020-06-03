
/****** Object:  StoredProcedure [dbo].[Login_ChangePassword]    Script Date: 5/13/2020 8:07:55 PM ******/
create proc [dbo].[Login_ChangePassword]
    @email nvarchar(100),
    @passwordHash nvarchar(200)
AS
BEGIN

    UPDATE Login SET passwordHash = @passwordHash
	WHERE email = @email

END
GO



/****** Object:  StoredProcedure [dbo].[Login_ConfirmEmail]    Script Date: 5/13/2020 8:07:55 PM ******/
create proc [dbo].[Login_ConfirmEmail]
    @email nvarchar(100)
AS
BEGIN

    UPDATE Login SET emailConfirmed = 1
	WHERE email = @email

END
GO



/****** Object:  StoredProcedure [dbo].[Login_Insert]    Script Date: 5/13/2020 8:07:55 PM ******/
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



/****** Object:  StoredProcedure [dbo].[Login_SelectAll]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE proc [dbo].[Login_SelectAll]
AS
BEGIN
    SELECT w.id, w.firstName, w.lastName, w.email, w.dateCreated,
        w.emailConfirmed, w.isAdmin, w.passwordHash, w.isSecurityAdmin
    FROM login w
    ORDER BY w.lastName, w.firstName, w.dateCreated
END
GO



/****** Object:  StoredProcedure [dbo].[Login_SelectByEmail]    Script Date: 5/13/2020 8:07:55 PM ******/
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



/****** Object:  StoredProcedure [dbo].[Login_SelectById]    Script Date: 5/13/2020 8:07:55 PM ******/
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



/****** Object:  StoredProcedure [dbo].[Login_UpdateRoles]    Script Date: 5/13/2020 8:07:55 PM ******/
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