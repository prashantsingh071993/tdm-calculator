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