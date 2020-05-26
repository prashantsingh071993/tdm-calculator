CREATE PROC [dbo].[Faq_Insert]
    @question varchar(250)
	,
    @answer varchar(500)
	,
    @faqId int output

AS
BEGIN
    /*

	DECLARE @name nvarchar(50) = 'Car=bon Emissions'
	DECLARE @description nvarchar(400) = 'Calculates Carbon Emission Credits'
	DECLARE @Id int

	EXEC dbo.Faq_Insert 
		@question
		, @answer
		, @Id = @Id output

	select @Id

*/

    INSERT Faq
        (
        question
        , answer
        )
    VALUES
        (
            @question
		, @answer
		
	)

    SET @faqId = SCOPE_IDENTITY()
END
GO