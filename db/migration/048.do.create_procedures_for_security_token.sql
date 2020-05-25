
/****** Object:  StoredProcedure [dbo].[SecurityToken_Insert]    Script Date: 5/13/2020 8:07:55 PM ******/
create proc [dbo].[SecurityToken_Insert]
    @token nvarchar(200),
    @email nvarchar(100)
AS
BEGIN
    INSERT SecurityToken
        (token, email )
    VALUES
        (@token, @email)
END
GO


/****** Object:  StoredProcedure [dbo].[SecurityToken_SelectByToken]    Script Date: 5/13/2020 8:07:55 PM ******/
CREATE proc [dbo].[SecurityToken_SelectByToken]
    @token nvarchar(200)
AS
BEGIN
    SELECT token, email, dateCreated
    FROM SecurityToken
    WHERE token = @token
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Primary Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calculation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-friendly name of the calculation - e..g, "LA TDM"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calculation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional description of the calculation''s purpose' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calculation', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the calculation is obsolete if true' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calculation', @level2type=N'COLUMN',@level2name=N'deprecated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date calculation was entered' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calculation', @level2type=N'COLUMN',@level2name=N'dateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date calculation was last modified' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calculation', @level2type=N'COLUMN',@level2name=N'dateModified'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Header record for a set of rules that define a calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calculation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Primary Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationPanel', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to the parent calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationPanel', @level2type=N'COLUMN',@level2name=N'calculationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the panel as it should appear in the UI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationPanel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CSS Class name used to render the panel in the UI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationPanel', @level2type=N'COLUMN',@level2name=N'cssClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Determines how panels are sorted when rendered in the UI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationPanel', @level2type=N'COLUMN',@level2name=N'displayOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A UI Panel for grouping / sorting related rules in a calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationPanel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Primary Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to parent calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'calculationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mnemonic code that uniquely identifes the rule within the calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the rule as it should appear in the UI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category identifying the rule as input, measure or calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Type of the rule: string, textarea, boolean, number, choice to determine what UI component is  used  to render the rule' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'dataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Applicable units for the value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For input or measure the input value, for a calculation, the  result of the calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JavaScript snippet used to calculate the value of a calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'functionBody'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number that controls the sort order of rules in the UI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'displayOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the rule is obsolete if true' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'inactive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK identifying which CalculationPanel the rules should appear on' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'calculationPanelId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Set to true to force rule to be rendered in UI, even if not need for calculation. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'used'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Javascript snippet that should return true if rule should be displayed. Used to selectively show/hide inputs and measures depending on other  rule values (especially land uses)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'displayFunctionBody'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client-side validation minimum value for numeric dataType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'minValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client-side validation maximum value for numeric dataType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'maxValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For choice inputs/measures, an array of objects with id and name properties, representing the choice options' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'choices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For inputs/measures with a closely related calculation rule, the code of the calculation rule. This allows showing the result of the calculation next to the input or measure int the UI.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'calcCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If True, client-side validation treats the input/measure as a required field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client-side validation minimum string length for string or text dataType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'minStringLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client-side validation maximum string length for string or text dataType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule', @level2type=N'COLUMN',@level2name=N'maxStringLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Each record represents a rule (input, strategy or calculation) that belongs to an overall calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Frequently Asked Questions with Answers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Faq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Users first name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'firstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Users last name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'lastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Users email address - also used as a unique user name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the row was created' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'dateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that users email address has been confirmed. Must be true for user to be allowed to log in.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'emailConfirmed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the user is granted Administrator rights' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'isAdmin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hashed version of the users password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'passwordHash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True is user has been granted Security Administrator rights' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login', @level2type=N'COLUMN',@level2name=N'isSecurityAdmin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents a user account' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Login'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Primary Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-Assigned Name of the Project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JSON representation of the calculation input and measure values as an array of objects with code and value  properties' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'formInputs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the project was first saved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'dateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the project was most recently modified' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'dateModified'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to Login record of the user who first saved the project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'loginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to the calculation used for the project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'calculationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional textual description of the project, which the user can use for their own purposes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Each record represent a real estate project, along with the inputs and strategy values for it''s TDM calculation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used internally by the authentication and authorization system to validate email confirmations, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SecurityToken'
GO