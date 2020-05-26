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