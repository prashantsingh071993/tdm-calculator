CREATE PROC [dbo].[Project_Duplicate]
    @id int,
    @loginId int
AS
BEGIN
    INSERT INTO dbo.Project
        (
        Project.name,
        Project.address,
        Project.formInputs,
        Project.loginId,
        Project.calculationId,
        Project.description
        )
    (   
        SELECT
        Project.name + ' (COPY)',
        Project.address,
        Project.formInputs,
        Project.loginId,
        Project.calculationId,
        Project.description
    FROM Project
    WHERE Project.id = @id AND Project.loginId = @loginId
    )
END
GO
