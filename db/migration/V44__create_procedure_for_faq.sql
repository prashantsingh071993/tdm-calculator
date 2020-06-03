/****** Object:  StoredProcedure [dbo].[Faq_Delete]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Faq_Delete]
    @faqId int
AS
BEGIN
    /*

	EXEC TDM.dbo.Faq_Delete <args> 

*/

    DELETE Faq
	WHERE 
		faqId = @faqId
END
GO



/****** Object:  StoredProcedure [dbo].[Faq_Insert]    Script Date: 5/13/2020 8:07:55 PM ******/
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



/****** Object:  StoredProcedure [dbo].[Faq_SelectAll]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Faq_SelectAll]
AS
BEGIN

    /*

	EXEC dbo.Faq_SelectAll 

*/

    SELECT *
    FROM Faq

END
GO



/****** Object:  StoredProcedure [dbo].[Faq_Update]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE PROC [dbo].[Faq_Update]
    @faqId int
	,
    @question varchar(250)
	,
    @answer varchar(500)

AS
BEGIN
    /*

	DECLARE @name nvarchar(50) = 'Carbon Emissions'
	DECLARE @description nvarchar(400) = 'Carbon Emission Calculation'
	DECLARE @deprecated bit = 0
	DECLARE @Id int = 3

	EXEC TDM.dbo.Faq_Update 
		@faqId = @faqId
 		, @question = @question
		, @answer = @answer

*/

    UPDATE Faq SET 
		question = @question
		, answer = @answer
	WHERE 
		faqId = @faqId

END
GO