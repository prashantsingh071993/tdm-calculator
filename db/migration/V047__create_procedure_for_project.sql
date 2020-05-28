
/****** Object:  StoredProcedure [dbo].[Project_Delete]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Project_Delete]
	@loginId int,
	@id int
AS
BEGIN

	DELETE Project
	WHERE 
		id = @id and loginId = @loginId

END
GO



/****** Object:  StoredProcedure [dbo].[Project_Insert]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Project_Insert]
	@name nvarchar(200)
	,
	@address nvarchar(200)
	,
	@formInputs nvarchar(max)
	,
	@loginId int
	,
	@calculationId int
	,
	@description nvarchar(max)
	,
	@id int output
AS
BEGIN
	/*

	DECLARE @name nvarchar(200) = <value>
	DECLARE @address nvarchar(200) = <value>
	DECLARE @formInputs nvarchar(max) = <value>
	DECLARE @loginId int = <value>
	DECLARE @calculationId int = <value>
	DECLARE @Id int

	EXEC dbo.Project_Insert 
		@name
		, @address
		, @formInputs
		, @loginId
		, @calculationId
		, @Id = @Id output

*/

	INSERT Project
		(
		name
		, address
		, formInputs
		, loginId
		, calculationId
		, description
		)
	VALUES
		(
			@name
		, @address
		, @formInputs
		, @loginId
		, @calculationId
		, @description
	)

	SET @id = SCOPE_IDENTITY()
END
GO



/****** Object:  StoredProcedure [dbo].[Project_SelectAll]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Project_SelectAll]
	@loginId int = null
AS
BEGIN

	/*
	// LADOT (i.e., Admin) user sees all projects
	EXEC dbo.Project_SelectAll @loginId = 37

	// Regular user sees only his/her projects
	EXEC dbo.Project_SelectAll @loginId = 11

*/
	IF EXISTS(SELECT 1
	FROM Login
	WHERE id = @LoginId and isAdmin = 1)
	BEGIN
		-- Admin can see all projects
		SELECT
			p.id
			, p.name
			, p.address
			, p.formInputs
			, p.loginId
			, p.calculationId
			, p.dateCreated
			, p.dateModified
			, p.description
			, author.firstName
			, author.lastName
		FROM Project p
			JOIN Login author on p.loginId = author.id
	END
	ELSE
	BEGIN
		-- User can only see their own projects
		SELECT
			p.id
			, p.name
			, p.address
			, p.formInputs
			, p.loginId
			, p.calculationId
			, p.dateCreated
			, p.dateModified
			, p.description
			, author.firstName
			, author.lastName
		FROM Project p
			JOIN Login author on p.loginId = author.id
		WHERE author.id = ISNULL(@loginId, author.id)
	END
END
GO



/****** Object:  StoredProcedure [dbo].[Project_SelectById]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Project_SelectById]
	@loginId int = null,
	@id int
AS
BEGIN
	/*

	EXEC dbo.Project_SelectById @loginId = 37, @id = 2

	EXEC dbo.Project_SelectById @loginId = 11, @id = 2

*/

	IF EXISTS(SELECT 1
	FROM Login
	WHERE id = @LoginId and isAdmin = 1)
	BEGIN
		SELECT
			p.id
			, p.name
			, p.address
			, p.formInputs
			, p.loginId
			, p.calculationId
			, p.dateCreated
			, p.dateModified
			, p.description
			, l.firstName
			, l.lastName
		FROM Project p
			JOIN Login l on p.loginId = l.id
		WHERE 
			p.id = @id
	END
	ELSE
	BEGIN
		SELECT
			p.id
			, p.name
			, p.address
			, p.formInputs
			, p.loginId
			, p.calculationId
			, p.dateCreated
			, p.dateModified
			, p.description
			, l.firstName
			, l.lastName
		FROM Project p
			JOIN Login l on p.loginId = l.id
		WHERE 
			p.id = @id
			AND p.loginId = ISNULL(@loginId, p.loginId)
	END

END
GO



/****** Object:  StoredProcedure [dbo].[Project_Update]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Project_Update]
	@id int
	,
	@name nvarchar(200)
	,
	@address nvarchar(200)
	,
	@formInputs nvarchar(max)
	,
	@loginId int
	,
	@calculationId int
	,
	@description nvarchar(max)
AS
BEGIN
	/*

	DECLARE @name nvarchar(200) = <value>
	DECLARE @address nvarchar(200) = <value>
	DECLARE @formInputs nvarchar(max) = <value>
	DECLARE @loginId int = <value>
	DECLARE @calculationId int = <value>
	DECLARE @Id int

	EXEC dbo.Project_Update 
		@name
		, @address
		, @formInputs
		, @loginId
		, @calculationId
		, @Id 

*/

	UPDATE Project SET 
		name = @name
		, address = @address
		, formInputs = @formInputs
		, loginId = @loginId
		, calculationId = @calculationId
		, description = @description
		, DateModified = getutcdate()
	WHERE 
		id = @id

END
GO
