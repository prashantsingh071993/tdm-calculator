CREATE PROCEDURE [dbo].[Create_Account]
    @email varchar(255) output,
    @password varchar(72)
AS

-- exec dbo.Create_Account email password null

INSERT INTO Account
    (
    email,
    password
    )
VALUES
    (
        @email,
        @password
	);

SELECT id, email, confirmed, role
from Account
where id = SCOPE_IDENTITY();
GO