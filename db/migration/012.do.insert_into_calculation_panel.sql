-- This file inserts current records (as of May 13, 2020) that were on the heroku environment

SET IDENTITY_INSERT [dbo].[CalculationPanel] ON

INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (5, 1, N'Land Uses', N'summaryPanel', 100)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (6, 1, N'Residential Inputs', N'landUse', 200)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (7, 1, N'Commercial Inputs', N'landUse', 300)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (8, 1, N'Institutional Inputs', N'landUse', 400)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (9, 1, N'Other Land Use Inputs', N'landUse', 500)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (10, 1, N'Target Points', N'strategies', 1000)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (11, 1, N'Metrics', N'metrics', 2000)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (13, 1, N'Accessibility', N'strategies', 1100)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (14, 1, N'Affordable Housing', N'strategies', 1200)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (15, 1, N'Bicycle Facilities', N'strategies', 1300)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (16, 1, N'Car Sharing', N'strategies', 1400)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (17, 1, N'Child Care', N'strategies', 1450)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (18, 1, N'High Occupancy Vehicles', N'strategies', 1500)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (19, 1, N'Information', N'strategies', 1550)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (20, 1, N'Mixed Use', N'strategies', 1600)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (21, 1, N'Mobility Hubs', N'strategies', 1650)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (22, 1, N'Parking', N'strategies', 1700)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (23, 1, N'Shared Mobility', N'strategies', 1750)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (24, 1, N'Transit Access', N'strategies', 1800)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (25, 1, N'Transportation Management Organizations', N'strategies', 1850)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (26, 1, N'Applicant-Defined Strategies', N'strategies', 1900)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (27, 1, N'Package Bonus', N'strategies', 1050)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (28, 1, N'Retail Inputs', N'landUse', 250)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (29, 1, N'School Inputs', N'landUse', 450)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (30, 1, N'Hotel / Motel', N'landUse', 250)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (31, 1, N'Project', N'landUse', 50)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (32, 1, N'Telecommute', N'strategy', 1755)
INSERT [dbo].[CalculationPanel]
    ([Id], [calculationId], [name], [cssClass], [displayOrder])
VALUES
    (33, 1, N'Telecommute', N'strategy', 1755)

SET IDENTITY_INSERT [dbo].[CalculationPanel] OFF
GO