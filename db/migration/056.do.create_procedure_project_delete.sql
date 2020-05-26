
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