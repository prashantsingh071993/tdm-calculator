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