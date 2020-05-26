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