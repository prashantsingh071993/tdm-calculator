-- TODO: SHOULD NOT INSERT THESE
-- This file inserts current records (as of May 13, 2020) that were on the heroku environment

SET IDENTITY_INSERT [dbo].[Project] ON

INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (2, N'Barrington Condos', N'825 S. Barrington Av', N'{"UNITS_CONDO":"46","PARK_CONDO":"92","STRATEGY_AFFORDABLE":"1","PROJECT_NAME":"Barrington Condos","PROJECT_ADDRESS":"825 S. Barrington Av","LAND_USE_RESIDENTIAL":true,"PARK_SPACES":"88","STRATEGY_ACCESS_1":"0","STRATEGY_BIKE_4":true,"STRATEGY_PARKING_1":true,"STRATEGY_PARKING_5":true}', CAST(N'2020-01-09T00:43:00.9200000' AS DateTime2), CAST(N'2020-02-18T17:14:35.3533333' AS DateTime2), 37, 1, N'')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (3, N'Fountain Apartments', N'5460 W. Fountain Av.', N'{"UNITS_HABIT_LT3":"37","UNITS_HABIT_3":"36","UNITS_HABIT_GT3":"2","STRATEGY_AFFORDABLE":"1","STRATEGY_CAR_SHARE_1":true,"PROJECT_NAME":"Fountain Apartments","PROJECT_ADDRESS":"5460 W. Fountain Av.","PROJECT_DESCRIPTION":"A 75-unit six-story apartment building","LAND_USE_RESIDENTIAL":true,"PARK_SPACES":"108","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_PARKING_1":true,"STRATEGY_INFO_2":true,"STRATEGY_SHARED_MOBILITY_1":true,"BUILDING_PERMIT":"101"}', CAST(N'2020-01-10T23:43:17.2600000' AS DateTime2), CAST(N'2020-02-18T17:39:16.1000000' AS DateTime2), 37, 1, N'A 75-unit six-story apartment building')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (4, N'Victory Hotel', N'12425 Victory Bl.', N'{"UNITS_GUEST":"80","STRATEGY_BIKE_5":true,"STRATEGY_CAR_SHARE_1":true,"STRATEGY_HOV_1":true,"STRATEGY_HOV_3":true,"PROJECT_NAME":"Victory Hotel","PROJECT_ADDRESS":"12425 Victory Bl.","PROJECT_DESCRIPTION":"80-room four-story hotel. Spreadsheet has parkingcalc error.","LAND_USE_HOTEL":true,"PARK_SPACES":"76","STRATEGY_ACCESS_1":"25","STRATEGY_BIKE_4":true,"STRATEGY_INFO_1":true,"STRATEGY_INFO_2":true,"STRATEGY_INFO_3":true,"STRATEGY_TRANSIT_ACCESS_3":"25"}', CAST(N'2020-01-10T23:46:56.2300000' AS DateTime2), CAST(N'2020-02-18T17:39:37.2400000' AS DateTime2), 37, 1, N'80-room four-story hotel. Spreadsheet has parkingcalc error.')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (5, N'Beatrice Building', N'12575 Beatrice St.', N'{"SF_RETAIL":"900","SF_RESTAURANT":"2500","SF_OFFICE":"283981","STRATEGY_BIKE_5":true,"STRATEGY_CAR_SHARE_1":true,"STRATEGY_HOV_3":true,"STRATEGY_PARKING_2":true,"PROJECT_NAME":"Beatrice Building","PROJECT_ADDRESS":"12575 Beatrice St.","PROJECT_DESCRIPTION":"Sq Ft differs between spreadsheet and PDF supplied","LAND_USE_RETAIL":true,"LAND_USE_COMMERCIAL":true,"PARK_SPACES":"845","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_INFO_1":true,"STRATEGY_INFO_2":true,"STRATEGY_TRANSIT_ACCESS_3":"25"}', CAST(N'2020-01-11T00:44:08.2433333' AS DateTime2), CAST(N'2020-02-18T17:38:36.7433333' AS DateTime2), 37, 1, N'Sq Ft differs between spreadsheet and PDF supplied')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (6, N'Clarendon Apartments', N'22055 W. Clarendon St.', N'{"UNITS_HABIT_LT3":"51","UNITS_HABIT_3":"134","UNITS_HABIT_GT3":"150","STRATEGY_AFFORDABLE":"1","STRATEGY_CAR_SHARE_1":true,"STRATEGY_CAR_SHARE_2":true,"PROJECT_NAME":"Clarendon Apartments","PROJECT_ADDRESS":"22055 W. Clarendon St.","PROJECT_DESCRIPTION":"335-unit five-story apartment building","LAND_USE_RESIDENTIAL":true,"PARK_SPACES":"564","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_PARKING_1":true}', CAST(N'2020-01-11T00:47:15.5466667' AS DateTime2), CAST(N'2020-02-18T17:41:20.5700000' AS DateTime2), 37, 1, N'335-unit five-story apartment building')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (7, N'Jewish Family Service - Social Services Center', N'320 N. Fairfax', N'{"SF_OFFICE":"28341","STRATEGY_BIKE_5":true,"STRATEGY_CAR_SHARE_1":true,"STRATEGY_HOV_3":true,"PROJECT_NAME":"Jewish Family Service - Social Services Center","PROJECT_ADDRESS":"320 N. Fairfax","PROJECT_DESCRIPTION":"New 28,023 sf three-story building","LAND_USE_COMMERCIAL":true,"PARK_SPACES":"63","STRATEGY_BIKE_4":true,"STRATEGY_INFO_1":true,"STRATEGY_INFO_2":true,"STRATEGY_INFO_3":true}', CAST(N'2020-01-11T00:51:02.5666667' AS DateTime2), CAST(N'2020-02-18T17:40:25.4133333' AS DateTime2), 37, 1, N'New 28,023 sf three-story building')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (9, N'Marina Towers Village', N'13428 Maxella Ave', N'{"UNITS_HABIT_LT3":"140","UNITS_HABIT_3":null,"UNITS_HABIT_GT3":null,"UNITS_SR_INDEPENDENT":null,"UNITS_SR_ASSISTED":null,"UNITS_SR_ASSISTED_GUEST":null,"UNITS_SKILLED_NURSING":null,"UNITS_DEMENTIA":null,"UNITS_CONDO":null,"PARK_CONDO":null,"UNITS_GUEST":null,"SF_RETAIL":null,"SF_FURNITURE":null,"SF_RESTAURANT":"30000","SF_HEALTH_CLUB":null,"SF_RESTAURANT_TAKEOUT":null,"SF_OFFICE":"100000","SF_WAREHOUSE":null,"SF_INST_MEDICAL_SVC":null,"SF_INST_OTHER":null,"SF_INST_GOV":null,"BED_HOSPITAL":null,"BED_CONVALESCENT":null,"CLASSROOM_SCHOOL":null,"STUDENTS_ELEMENTARY":null,"SF_TRADE_SCHOOL":null,"STUDENTS_TRADE_SCHOOL":null,"SEAT_AUDITORIUM":null,"SF_AUDITORIUM_NO_SEATS":null,"PKG_RESIDENTIAL":null,"PKG_COMMERCIAL":null,"STRATEGY_AFFORDABLE":null,"STRATEGY_BIKE_5":null,"STRATEGY_CAR_SHARE_1":null,"STRATEGY_CAR_SHARE_2":null,"STRATEGY_CAR_SHARE_3":null,"STRATEGY_CAR_SHARE_4":null,"STRATEGY_CAR_SHARE_ELECTRIC":null,"STRATEGY_CAR_SHARE_BONUS":null,"STRATEGY_HOV_1":null,"STRATEGY_HOV_2":null,"STRATEGY_HOV_3":null,"STRATEGY_HOV_4":null,"STRATEGY_HOV_5":null,"STRATEGY_PARKING_2":true,"STRATEGY_TRANSIT_ACCESS_1":null,"PROJECT_NAME":"Marina Towers Village","PROJECT_ADDRESS":"13428 Maxella Ave","PROJECT_DESCRIPTION":"A mixed use development scheduled for 2025","BUILDING_PERMIT":"No Building permit # yet","CASE_NO":"No Case # yet","LAND_USE_RESIDENTIAL":true,"LAND_USE_COMMERCIAL":true,"PARK_SPACES":"1000","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_PARKING_1":true,"STRATEGY_BIKE_2":true,"STRATEGY_BIKE_3":true,"VERSION_NO":"1"}', CAST(N'2020-01-11T18:20:04.5766667' AS DateTime2), CAST(N'2020-01-16T00:22:09.9766667' AS DateTime2), 27, 1, N'A mixed use development scheduled for 2025')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (50, N'City Hall Redevelopment', N'200 N. Spring St.', N'{"UNITS_HABIT_LT3":null,"UNITS_HABIT_3":"150","UNITS_HABIT_GT3":null,"UNITS_SR_INDEPENDENT":null,"UNITS_SR_ASSISTED":null,"UNITS_SR_ASSISTED_GUEST":null,"UNITS_SKILLED_NURSING":null,"UNITS_DEMENTIA":null,"UNITS_CONDO":null,"PARK_CONDO":null,"UNITS_GUEST":null,"SF_RETAIL":null,"SF_FURNITURE":null,"SF_RESTAURANT":"250","SF_HEALTH_CLUB":null,"SF_RESTAURANT_TAKEOUT":null,"SF_OFFICE":null,"SF_WAREHOUSE":null,"SF_INST_MEDICAL_SVC":null,"SF_INST_OTHER":null,"SF_INST_GOV":null,"BED_HOSPITAL":null,"BED_CONVALESCENT":null,"CLASSROOM_SCHOOL":null,"STUDENTS_ELEMENTARY":null,"SF_TRADE_SCHOOL":null,"STUDENTS_TRADE_SCHOOL":null,"SEAT_AUDITORIUM":null,"SF_AUDITORIUM_NO_SEATS":null,"PKG_RESIDENTIAL":null,"PKG_COMMERCIAL":null,"STRATEGY_AFFORDABLE":null,"STRATEGY_BIKE_5":null,"STRATEGY_CAR_SHARE_1":null,"STRATEGY_CAR_SHARE_2":null,"STRATEGY_CAR_SHARE_3":null,"STRATEGY_CAR_SHARE_4":null,"STRATEGY_CAR_SHARE_ELECTRIC":null,"STRATEGY_CAR_SHARE_BONUS":null,"STRATEGY_HOV_1":null,"STRATEGY_HOV_2":null,"STRATEGY_HOV_3":null,"STRATEGY_HOV_4":null,"STRATEGY_HOV_5":null,"STRATEGY_PARKING_2":null,"STRATEGY_TRANSIT_ACCESS_1":null,"PROJECT_ADDRESS":"200 N. Spring St.","PROJECT_NAME":"City Hall Redevelopment","LAND_USE_RESIDENTIAL":true,"LAND_USE_COMMERCIAL":true,"PARK_SPACES":"250","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_PARKING_1":true,"STRATEGY_INFO_4":false,"STRATEGY_INFO_2":true,"STRATEGY_BIKE_1":true,"STRATEGY_BIKE_2":true}', CAST(N'2020-01-30T20:35:14.3100000' AS DateTime2), CAST(N'2020-01-30T20:35:14.3100000' AS DateTime2), 52, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (51, N'Test - Complex Project', N'5500 Torrance Bl, Suite 500', N'{"UNITS_HABIT_LT3":"14","UNITS_HABIT_3":"23","UNITS_HABIT_GT3":"47","UNITS_CONDO":"50","PARK_CONDO":"75","UNITS_GUEST":"50","SF_RETAIL":"3467","SF_RESTAURANT":"2879","SF_RESTAURANT_TAKEOUT":"1265","SF_OFFICE":"13456","SF_INST_MEDICAL_SVC":"4360","SF_INST_OTHER":"3280","SF_INST_GOV":"1453","BED_HOSPITAL":"45","STRATEGY_PARKING_2":true,"PROJECT_NAME":"Test - Complex Project","PROJECT_ADDRESS":"5500 Torrance Bl, Suite 500","LAND_USE_RESIDENTIAL":true,"LAND_USE_HOTEL":true,"LAND_USE_RETAIL":true,"LAND_USE_COMMERCIAL":true,"LAND_USE_INSTITUTIONAL":true,"LAND_USE_MAJOR":true,"PARK_SPACES":"543","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_PARKING_1":true,"STRATEGY_ACCESS_1":"25","STRATEGY_ACCESS_2":"25","CASE_NO_LADOT":"101010","CASE_NO_PLANNING":"202020"}', CAST(N'2020-02-18T23:02:42.9133333' AS DateTime2), CAST(N'2020-03-11T17:06:41.5400000' AS DateTime2), 37, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (52, N'Andy''s House Test', N'134 5th St., Del Mar, CA', N'{"UNITS_HABIT_GT3":"12","PROJECT_NAME":"Andy''s House","PROJECT_ADDRESS":"134 5th St., Del Mar, CA","LAND_USE_RESIDENTIAL":true,"PARK_SPACES":"32","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_PARKING_1":true,"STRATEGY_BIKE_1":true}', CAST(N'2020-03-07T17:07:26.7966667' AS DateTime2), CAST(N'2020-03-11T01:31:49.4400000' AS DateTime2), 12, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (53, N'test', N'test', N'{"PROJECT_NAME":"test","PROJECT_ADDRESS":"test","LAND_USE_RESIDENTIAL":true,"PARK_SPACES":"50","STRATEGY_BIKE_1":true,"STRATEGY_BIKE_2":true,"STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":true,"STRATEGY_PARKING_1":true,"STRATEGY_TMO_1":true}', CAST(N'2020-03-07T20:56:13.5866667' AS DateTime2), CAST(N'2020-03-09T03:52:34.5666667' AS DateTime2), 33, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (54, N'Sue''s Furniture', N'234 Meade Av., San Diego, CA', N'{"SF_FURNITURE":"65000","STRATEGY_HOV_3":true,"STRATEGY_PARKING_2":true,"PROJECT_NAME":"Sue''s Furniture","PROJECT_ADDRESS":"234 Meade Av., San Diego, CA","VERSION_NO":"1","LAND_USE_RETAIL":true,"PARK_SPACES":"145","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":1}', CAST(N'2020-03-23T16:37:52.4233333' AS DateTime2), CAST(N'2020-03-23T16:37:52.4233333' AS DateTime2), 11, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (109, N'test', N'test', N'{"PROJECT_NAME":"test","PROJECT_ADDRESS":"test","LAND_USE_INSTITUTIONAL":true}', CAST(N'2020-04-02T03:14:51.7833333' AS DateTime2), CAST(N'2020-04-02T03:14:51.7833333' AS DateTime2), 33, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (110, N'Barrington Condos', N'TEST', N'{"UNITS_HABIT_LT3":"100","UNITS_HABIT_3":"1","UNITS_HABIT_GT3":"1","STRATEGY_PARKING_1":true,"PROJECT_NAME":"Barrington Condos","PROJECT_ADDRESS":"TEST","LAND_USE_RESIDENTIAL":true,"PARK_SPACES":"100","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":1,"STRATEGY_TRANSIT_ACCESS_3":"100"}', CAST(N'2020-04-10T05:45:13.4433333' AS DateTime2), CAST(N'2020-04-10T05:45:13.4433333' AS DateTime2), 37, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (111, N'John Test', N'345 Main St.', N'{"UNITS_HABIT_3":"345","PROJECT_NAME":"John Test","PROJECT_ADDRESS":"345 Main St.","LAND_USE_RESIDENTIAL":true,"PARK_SPACES":"678","STRATEGY_APPLICANT_comment":"Tj","LAND_USE_HOTEL":true,"LAND_USE_RETAIL":true,"LAND_USE_COMMERCIAL":true,"LAND_USE_INSTITUTIONAL":true,"LAND_USE_SCHOOL":true,"LAND_USE_OTHER":true,"LAND_USE_MAJOR":true}', CAST(N'2020-04-12T17:36:15.1333333' AS DateTime2), CAST(N'2020-04-13T00:07:46.6466667' AS DateTime2), 37, 1, NULL)
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (273, N'Project Posted via Postman id 273', N'Project Address', N'{"UNITS_HABIT_LT3":"10","UNITS_HABIT_3":"20","UNITS_GUEST":"90","STRATEGY_CAR_SHARE_1":true,"STRATEGY_HOV_2":true,"PROJECT_NAME":"Project 1","PROJECT_ADDRESS":"Project Address","LAND_USE_RESIDENTIAL":true,"LAND_USE_HOTEL":true,"PARK_SPACES":"110","STRATEGY_BIKE_4":true,"STRATEGY_INFO_3":1,"STRATEGY_PARKING_1":true,"STRATEGY_INFO_1":true}', CAST(N'2020-04-30T02:55:57.2266667' AS DateTime2), CAST(N'2020-04-30T03:00:46.3700000' AS DateTime2), 62, 1, N'loginId 61;')
INSERT [dbo].[Project]
    ([id], [name], [address], [formInputs], [dateCreated], [dateModified], [loginId], [calculationId], [description])
VALUES
    (309, N'Cypress Victory Hotel Updated', N'12425 Victory Bl.', N'{"UNITS_GUEST":"80","STRATEGY_BIKE_5":true,"STRATEGY_CAR_SHARE_1":true,"STRATEGY_HOV_1":true,"STRATEGY_HOV_3":true,"PROJECT_NAME":"Cypress Victory Hotel Updated","PROJECT_ADDRESS":"12425 Victory Bl.","PROJECT_DESCRIPTION":"80-room four-story hotel. Spreadsheet has parkingcalc error.","LAND_USE_HOTEL":true,"PARK_SPACES":"76","STRATEGY_ACCESS_1":"25","STRATEGY_BIKE_4":true,"STRATEGY_INFO_1":true,"STRATEGY_INFO_2":true,"STRATEGY_INFO_3":true,"STRATEGY_TRANSIT_ACCESS_3":"25","VERSION_NO":"v2","STRATEGY_BIKE_2":true}', CAST(N'2020-05-12T08:11:51.6300000' AS DateTime2), CAST(N'2020-05-12T08:11:53.9900000' AS DateTime2), 61, 1, N'80-room four-story hotel. Spreadsheet has parkingcalc error.')

SET IDENTITY_INSERT [dbo].[Project] OFF
GO