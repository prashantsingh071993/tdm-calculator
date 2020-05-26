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