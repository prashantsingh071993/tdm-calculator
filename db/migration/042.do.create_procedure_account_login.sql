CREATE PROCEDURE [dbo].[Account_Login]
    @email varchar(255)
AS

-- exec TDM.dbo.Account_Login email

SELECT id, email, confirmed, password, role
from Account
where email = @email;
GO