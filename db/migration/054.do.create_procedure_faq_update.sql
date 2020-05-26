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