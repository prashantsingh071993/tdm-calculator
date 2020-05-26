-- This file inserts current records (as of May 13, 2020) that were on the heroku environment
-- Part 1 of inserting into Calculation Rule

SET IDENTITY_INSERT [dbo].[CalculationRule] ON

INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (1, 1, N'SF_TOTAL', N'Total Square Footage', N'input', N'number', N'sq ft', NULL, NULL, 1001, 0, 5, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (3, 1, N'LAND_USE_RESIDENTIAL', N'Residential', N'calculation', N'boolean', N'', NULL, N'return !!<<UNITS_HABIT_LT3>> || !!<<UNITS_HABIT_3>> || !!<<UNITS_HABIT_GT3>> || !!<<UNITS_CONDO>> || !!<<PARK_CONDO>>;', 1010, 0, 5, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (4, 1, N'LAND_USE_COMMERCIAL', N'Commercial', N'calculation', N'boolean', N'', NULL, N'
		return !!<<SF_RESTAURANT>> || !!<<SF_RESTAURANT_TAKEOUT>> || !!<<SF_OFFICE>> || !!<<SF_HEALTH_CLUB>> || !!<<SF_WAREHOUSE>>;
	', 1020, 0, 5, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (5, 1, N'LAND_USE_INSTITUTIONAL', N'Institutional', N'calculation', N'boolean', N'', NULL, N'
		return !!<<BED_HOSPITAL>> || !!<<SF_INST_GOV>> || !!<<SF_INST_OTHER>> || !!<<BED_CONVALESCENT>>;
	', 1030, 0, 5, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (6, 1, N'LAND_USE_OTHER', N'Other', N'calculation', N'boolean', N'', NULL, N'
		return !!<<SEAT_AUDITORIUM>> || !!<<SF_AUDITORIUM_NO_SEATS>>;
	', 1040, 0, 5, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (7, 1, N'PARK_SPACES', N'Parking Provided', N'measure', N'number', N'spcs', NULL, NULL, 985, 0, 10, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (8, 1, N'SF_RETAIL', N'Sq Ft - Retail', N'input', N'number', N'sq ft', NULL, NULL, 3040, 0, 28, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (10, 1, N'SF_RESTAURANT', N'Sq Ft - Restaurant/Bar/General', N'input', N'number', N'sq ft', NULL, NULL, 3010, 0, 7, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (12, 1, N'TARGET_POINTS_PARK', N'Target Points', N'calculation', N'number', N'pts', NULL, N'if (!<<PARK_REQUIREMENT>> || <<PROJECT_LEVEL>> === 0) {
	return 0;
 }
 const ratio =  <<CALC_PARK_RATIO>> / 100 - 0.00001;
 const ratioPenalty = Math.min(Math.floor((Math.max(ratio,1.0) - 1.0) * 10) * 2, 10);
 return (10 + <<PROJECT_LEVEL>> * 5) + ratioPenalty;', 110, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (13, 1, N'PARK_REQUIREMENT', N'Req''d Parking', N'calculation', N'number', N'spcs', NULL, N'
//<<LAND_USE_RESIDENTIAL>>
//<<LAND_USE_HOTEL>>
//<<LAND_USE_RETAIL>>
//<<LAND_USE_COMMERCIAL>>
//<<LAND_USE_INSTITUTIONAL>>
//<<LAND_USE_OTHER>>
//<<LAND_USE_SCHOOL>>

return <<PARK_RESIDENTIAL>> 
+ <<PARK_HOTEL>>
+ <<PARK_RETAIL_SUBTOTAL>>
+ <<PARK_COMMERCIAL>>
+ <<PARK_INSTITUTIONAL>>
+ <<PARK_SCHOOL>>
+ <<PARK_OTHER>>;
', 100, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (14, 1, N'PARK_RESTAURANT', N'Parking Requirement - Restaurant', N'calculation', N'number', N'spcs', NULL, N'if (<<SF_RESTAURANT>> < 1000){
	return <<SF_RESTAURANT>>/1000 * 5;
} else {
	return <<SF_RESTAURANT>>/1000  * 10;
}', 140, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (15, 1, N'PARK_RETAIL', N'Parking Requirement - Retail', N'calculation', N'number', N'spcs', NULL, N'return <<SF_RETAIL>>/1000 * 4;', 150, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (16, 1, N'LEVEL', N'Project Level', N'measure', N'none', N'', NULL, NULL, 1007, 0, 10, 1, N'return true;', NULL, NULL, NULL, N'PROJECT_LEVEL', 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (20, 1, N'UNITS_HABIT_LT3', N'# Habitable Rooms < 3', N'input', N'number', N'dwelling units', NULL, NULL, 2200, 0, 6, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (21, 1, N'UNITS_HABIT_3', N'# Habitable Rooms = 3', N'input', N'number', N'dwelling units', NULL, NULL, 2210, 0, 6, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (22, 1, N'UNITS_HABIT_GT3', N'# Habitable Rooms > 3', N'input', N'number', N'dwelling units', NULL, NULL, 2220, 0, 6, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (44, 1, N'PARK_RESIDENTIAL', N'Parking Requirement - Residential', N'calculation', N'number', N'spcs', NULL, N'return Math.ceil(<<PARK_HABIT_LT3>> +
    <<PARK_HABIT_3>> +
    <<PARK_HABIT_GT3>> +
	<<PARK_CONDO>>);', 110, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (46, 1, N'PARK_COMMERCIAL', N'Parking Requirement - Commercial', N'calculation', N'number', N'spcs', NULL, N' return Math.ceil(<<PARK_RESTAURANT>> 
+ <<PARK_HEALTH_CLUB>>  
+ <<PARK_OFFICE>> 
+ <<PARK_RESTAURANT_TAKEOUT>>);', 120, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (48, 1, N'PARK_INSTITUTIONAL', N'Parking Requirement - Institutional', N'calculation', N'number', N'spaves', NULL, N'return Math.ceil(<<PARK_HOSPITAL>> + <<PARK_INST_OTHER>> + <<PARK_INST_GOV>> + <<PARK_CONVALESCENT>>);', 130, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (49, 1, N'PARK_SCHOOL', N'Parking Requirement - School', N'calculation', N'number', N'spcs', NULL, N'return Math.ceil( <<PARK_SCHOOL_ELEMENTARY>> + <<PARK_TRADE_SCHOOL>>);', 140, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (51, 1, N'PARK_HABIT_LT3', N'Parking Requirement - Habitable Rooms < 3', N'calculation', N'number', N'spcs', NULL, N'return <<UNITS_HABIT_LT3>>;', 510, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (52, 1, N'PARK_HABIT_3', N'Parking Requirement - Habitable Rooms = 3', N'calculation', N'number', N'spcs', NULL, N'return <<UNITS_HABIT_3>> * 1.5;', 520, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (53, 1, N'PARK_HABIT_GT3', N'Parking Requirement - Habitable Rooms > 3', N'calculation', N'number', N'spcs', NULL, N'return <<UNITS_HABIT_GT3>> * 2;', 530, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (75, 1, N'SF_HEALTH_CLUB', N'Sq Ft - Health Club', N'input', N'number', N'sq ft', NULL, N'', 3020, 0, 7, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (77, 1, N'SF_OFFICE', N'Sq Ft - Office, Business, Manufacturing, Industrial', N'input', N'number', N'sq ft', NULL, N'', 3050, 0, 7, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (78, 1, N'SF_FURNITURE', N'Sq Ft - Retail Furniture', N'input', N'number', N'sq ft', NULL, N'', 3060, 0, 28, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (79, 1, N'SF_WAREHOUSE', N'Sq Ft - Warehouse', N'input', N'number', N'sq ft', NULL, N'', 3070, 0, 7, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (80, 1, N'PARK_HEALTH_CLUB', N'Parking Requirement - Health Club', N'calculation', N'number', N'spcs', NULL, N'return <<SF_HEALTH_CLUB>>/1000 * 10;', 800, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (82, 1, N'PARK_OFFICE', N'Parking Requirement - Office, Business, Manufacturing, Industrial', N'calculation', N'number', N'spcs', NULL, N'return <<SF_OFFICE>>/1000 * 2;', 820, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (83, 1, N'PARK_FURNITURE', N'Parking Requirement - Retail Furniture', N'calculation', N'number', N'spcs', NULL, N'return <<SF_FURNITURE>>/1000 * 2;', 830, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (84, 1, N'PARK_WAREHOUSE', N'Parking Requirement - Warehouse > 10,000 sq ft', N'calculation', N'number', N'spcs', NULL, N'if (<<SF_WAREHOUSE>> >= 10000){
	return <<SF_WAREHOUSE>>/1000 * 0.2;
}
return <<SF_WAREHOUSE>>/1000 * 2.0;', 840, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (85, 1, N'BED_HOSPITAL', N'Patient Hospital Beds', N'input', N'number', N'beds', NULL, N'', 4045, 0, 8, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (86, 1, N'PARK_HOSPITAL', N'Parking Requirement - Hospital Beds', N'calculation', N'number', N'spcs', NULL, N'return <<BED_HOSPITAL>> * 2;', 860, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (87, 1, N'SF_INST_MEDICAL_SVC', N'Sq Ft - Medical Offices, Clinics, Service Facilities', N'input', N'number', N'sq ft', NULL, N'', 3070, 0, 28, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (88, 1, N'PARK_INST_MEDICAL_SVC', N'Parking Requirement - Medical Offices, Clinics, Service Facilities', N'calculation', N'number', N'spcs', NULL, N'return <<SF_INST_MEDICAL_SVC>>/1000  * 5;', 880, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (90, 1, N'SF_INST_OTHER', N'Sq Ft - Other Institutional', N'input', N'number', N'sq ft', NULL, N'', 4045, 0, 8, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (91, 1, N'PARK_INST_OTHER', N'Parking Requirement - Other Institutional', N'calculation', N'number', N'spcs', NULL, N'return <<SF_INST_OTHER>>/1000  * 2;', 910, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (92, 1, N'SF_INST_GOV', N'Sq Ft - Government Institution', N'input', N'number', N'sq ft', NULL, N'', 4040, 0, 8, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (94, 1, N'PARK_INST_GOV', N'Parking Requiremant - Government Institution', N'calculation', N'number', N'spcs', NULL, N'return <<SF_INST_GOV>>/1000  * 2;', 940, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (95, 1, N'BED_CONVALESCENT', N'Convalescent Institution Beds', N'input', N'number', N'beds', NULL, N'', 4050, 0, 8, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (96, 1, N'PARK_CONVALESCENT', N'Parking Requriement - Convalescent Institution', N'calculation', N'number', N'spcs', NULL, N'return <<BED_CONVALESCENT>> * 0.2;', 960, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (97, 1, N'SEAT_AUDITORIUM', N'# Seats - Auditorium', N'input', N'number', N'seats', NULL, N'', 5010, 0, 9, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (98, 1, N'PARK_AUDITORIUM', N'Parking Requirement - Auditorium', N'calculation', N'number', N'spcs', NULL, N'return <<SEAT_AUDITORIUM>>/5;', 980, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (99, 1, N'SF_AUDITORIUM_NO_SEATS', N'Sq Ft - Auditorium w/o Seats', N'input', N'number', N'sq ft', NULL, N'', 5020, 0, 9, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (101, 1, N'PARK_AUDITORIUM_NO_SEATS', N'Parking Requirement - Auditorium w/o Seats', N'calculation', N'number', N'spcs', NULL, N'return <<SF_AUDITORIUM_NO_SEATS>>/35;', 1010, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (102, 1, N'CLASSROOM_SCHOOL', N'Elementary School Classrooms', N'input', N'number', N'classrooms', NULL, N'', 5030, 0, 29, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (103, 1, N'PARK_SCHOOL_ELEMENTARY', N'Parking Requirement - Elementary School', N'calculation', N'number', N'spcs', NULL, N'return <<CLASSROOM_SCHOOL>>;', 1030, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (104, 1, N'SF_TRADE_SCHOOL', N'Trade School - Sq. Ft.', N'input', N'number', N'sq ft', NULL, N'', 5040, 0, 29, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (105, 1, N'PARK_TRADE_SCHOOL', N'Parking Requirement - Trade School', N'calculation', N'number', N'spcs', NULL, N'return <<SF_TRADE_SCHOOL>>/1000 * 20;', 1050, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (106, 1, N'SF_RESTAURANT_TAKEOUT', N'Sq Ft - Take-out Restaurant', N'input', N'number', N'sq ft', NULL, N'', 3035, 0, 7, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (107, 1, N'PARK_RESTAURANT_TAKEOUT', N'Parking Requirement - Take-out Restaurant', N'calculation', N'number', N'spcs', NULL, N'return <<SF_RESTAURANT_TAKEOUT>>/1000 * 4;', 815, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (110, 1, N'STRATEGY_PARKING_1', N'Pricing/Unbundling', N'measure', N'boolean', N'', NULL, N'', 1702, 0, 22, 0, N'return !!<<LAND_USE_RESIDENTIAL>>;', NULL, NULL, NULL, N'PTS_PARKING_1', 0, NULL, NULL, 0, N'Pricing of parking encourages sustainable modes of travel (non-SOV) and can be accomplished in several ways. Property managers and homeowner associations can unbundle the price of parking from rents or sale of units. In retail settings, parking fees can be charged to shoppers. Where on-street parking is highly utilized during the same time as proposed use, the existence or creation of a new residential area parking permit program will be a prerequisite for priced and unbundled parking strategies for employer and residential sites. Additional vehicle parking utilization studies may be required for this strategy.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (111, 1, N'STRATEGY_BIKE_1', N'Locate Near Bike Share', N'measure', N'boolean', N'', NULL, N'', 1310, 0, 15, 0, N'return true;', NULL, NULL, NULL, N'PTS_BIKE_1', 0, NULL, NULL, 0, N'Locate within 600 feet of an existing bike share station - Bike Share Location Map.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (112, 1, N'STRATEGY_INFO_1', N'Transit Displays', N'measure', N'boolean', N'', NULL, N'', 1551, 0, 19, 0, N'return true;', NULL, NULL, NULL, N'PTS_INFO_1', 0, NULL, NULL, 0, N'Provide real-time transit arrival displays at each major entrance of the project site. Display should capture transit options within 0.25 miles.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (113, 1, N'PTS_PARKING_1', N'Pts for Pricing/Unbundling', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_PARKING_1>> ? 8 : 0;', 1000000, 0, 22, 0, N'return true;', CAST(8.00 AS Numeric(6, 2)), CAST(8.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (114, 1, N'PTS_INFO_1', N'Pts for Transit Displays', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_INFO_1>> ? 2 : 0;', 1000000, 0, NULL, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (115, 1, N'PTS_BIKE_1', N'Points for Locate Near Bike Share', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_BIKE_1>> ? 2 : 0;', 1310, 0, 15, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (117, 1, N'PTS_EARNED', N'Earned Points', N'calculation', N'number', N'pts', NULL, N'return <<PTS_ACCESS>> 
+ <<PTS_AFFORDABLE>> 
+ <<PTS_BIKE>> 
+ <<PTS_CAR_SHARE>> 
+ <<PTS_CHILD_CARE>>
+ <<PTS_HOV>> 
+ <<PTS_INFO>> 
+ <<PTS_MIXED_USE>> 
+ <<PTS_MOBILITY_HUBS>>
+ <<PTS_PARKING>>
+ <<PTS_SHARED_MOBILITY>>
+ <<PTS_TELECOMMUTE>>
+ <<PTS_TRANSIT_ACCESS>>
+ <<PTS_TMO>>
+ <<PTS_APPLICANT>>
+ <<PTS_PKG_RESIDENTIAL>>
+ <<PTS_PKG_COMMERCIAL>>;', 120, 0, 11, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (118, 1, N'PTS_DIFFERENCE', N'Points Earned - Point Target', N'calculation', N'number', N'pts', NULL, N'return <<PTS_EARNED>> - <<TARGET_POINTS_PARK>>;', 130, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (120, 1, N'STRATEGY_ACCESS_2', N'Intersection Improvements', N'measure', N'choice', N'', NULL, N'', 1120, 0, 13, 0, N'return true;', NULL, NULL, N'[{"id": "0", "name": "< 25% intersections improved"},
{"id": "25", "name": "25%+ intersections improved"},
{"id": "50", "name": "50%+ intersections improved"},
{"id": "75", "name": "75%+ intersections improved"},
{"id": "100", "name": "100% intersections improved"}]', N'PTS_ACCESS_2', 0, NULL, NULL, 0, N'Intersection improvement located near the project site. Point value is determined by the percent of intersections within project area with traffic calming improvements.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (123, 1, N'PTS_ACCESS_3', N'Network Improvement', N'measure', N'number', N'pts', NULL, N'', 1122, 0, 13, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), CAST(100.00 AS Numeric(6, 2)), NULL, N'PTS_ACCESS_3', 0, NULL, NULL, 0, N'Contribute to local infrastructure improvements near the High Injury Network (HIN) corridors or corridors identified in the Mobility Plan 2035. Point value relative to improvement and location, and determined in coordination with LADOT staff.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (124, 1, N'STRATEGY_AFFORDABLE', N'Affordable Housing Level', N'measure', N'choice', N'', NULL, N'', 1210, 0, 14, 0, N'return !!<<LAND_USE_RESIDENTIAL>>;', NULL, NULL, N'[{"id": "", "name": "< 35% of State Density Bonus"},
{"id": "1", "name": "35% of State Density Bonus"},
{"id": "2", "name": "TOC Tier 1"},
{"id": "3", "name": "TOC Tier 4"},
{"id": "4", "name": "100% Affortdable"}]', N'PTS_AFFORDABLE', 0, NULL, NULL, 0, N'<div>
	<p>&lt; 35% of State Density Bonus: Projects that do not meet any of the below criteria</p>
	<hr />
	<p>35% of State Density Bonus: Projects that receive 35% of California’s Density Bonus and provide a minimum of:</p>
	<ul style="list-style-type:disc;margin-left:2em">
		<li>11% Low Income; or</li>
		<li>8% Very Low Income.</li>
	</ul>
	<hr />
	<p>TOC Tier 1: Projects that provide the following Affordable Housing percentages:</p>
	<ul style="list-style-type:disc;margin-left:2em">
		<li>20% Low Income;
		<li>11% Very Low Income; or
		<li>8% Extremely Low Income.
	</ul>
	<hr/>
	<p>TOC Tier 4: Projects that provide the following Affordable Housing percentages:</p>
	<ul style="list-style-type:disc;margin-left:2em">
		<li>25% Low Income;</li>
		<li>15% Very Low Income; or</li>
		<li>11% Extremely Low Income.</li>
	</ul>
	<hr />
	<p>100% Affordable: Projects in which 100% of the housing units (exclusive of any manager’s units) are restricted affordable.</p>
	</div>
')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (125, 1, N'STRATEGY_ACCESS_1', N'Correct Substandard Infrastructure', N'measure', N'choice', N'', NULL, N'', 1110, 0, 13, 0, N'return true;', NULL, NULL, N'[{"id": "0", "name": "< 25% streets improved"},
{"id": "25", "name": "25%+ streets improved"},
{"id": "50", "name": "50%+ streets improved"},
{"id": "75", "name": "75%+ streets improved"},
{"id": "100", "name": "100% streets improved"}]', N'PTS_ACCESS_1', 0, NULL, NULL, 0, N'Correct an existing substandard sidewalk width or curb dimension, provide one mid-block improvement near the project site, or an intersection improvement to one adjacent street segment, such as a single curb extension. Point value is determined by the percent of streets within project area with traffic calming improvements.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (137, 1, N'PTS_ACCESS', N'Pts for Accessibility Strategies', N'calculation', N'number', N'pts', NULL, N'return <<PTS_ACCESS_1>> + <<PTS_ACCESS_2>> + <<PTS_ACCESS_3>>;', 1190, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (138, 1, N'PTS_AFFORDABLE', N'Pts for Affordability', N'calculation', N'number', N'pts', NULL, N'	switch (<<STRATEGY_AFFORDABLE>>){
		case 1:
			return 2;
		case 2:
			return 4;
		case 3:
			return 6;
		case 4:
			return 10;
		default:
			return 0;
	};', 1210, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(10.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (139, 1, N'STRATEGY_BIKE_2', N'Bike Share Station', N'measure', N'boolean', N'', NULL, N'', 1312, 0, 15, 0, N'return true;', NULL, NULL, NULL, N'PTS_BIKE_2', 0, NULL, NULL, 0, N'Install a publicly accessible bike share station. Must meet LADOT Bike Share Siting Guidelines and be pre-approved by qualified LADOT bike share program staff.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (140, 1, N'PTS_BIKE_2', N'Pts for Bike Share Station', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_BIKE_2>> ? 5 : 0;', 1312, 0, 11, 0, N'return true;', CAST(5.00 AS Numeric(6, 2)), CAST(5.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (141, 1, N'STRATEGY_BIKE_3', N'Bike Share Memberships', N'measure', N'boolean', N'', NULL, N'', 1314, 0, 15, 0, N'return true;', NULL, NULL, NULL, N'PTS_BIKE_3', 0, NULL, NULL, 0, N'Offer bike share membership passes to employees and/or residents (applicable for locations within 0.25 miles from an existing or planned bike share station - Bike Share Location Map).')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (142, 1, N'PTS_BIKE_3', N'Pts for Bike Share Memberships', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_BIKE_3>> ? 5 : 0;', 1314, 0, 11, 0, N'return true;', CAST(5.00 AS Numeric(6, 2)), CAST(5.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (143, 1, N'STRATEGY_BIKE_4', N'Bike Parking', N'measure', N'boolean', N'', NULL, N'', 1316, 0, 15, 0, N'return true;', NULL, NULL, NULL, N'PTS_BIKE_4', 0, NULL, NULL, 0, N'Install and maintain on-site bicycle parking at or above ratios as determined in Sections 12.03, 12.21, and 12.21.1 of the L.A.M.C. ')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (144, 1, N'PTS_BIKE_4', N'Pts for Bicycle Parking', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_BIKE_4>> ? 2 : 0;', 1316, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (145, 1, N'STRATEGY_BIKE_5', N'Changing / Shower / Locker Facilities', N'measure', N'boolean', N'', NULL, N'', 1318, 0, 15, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_BIKE_5', 0, NULL, NULL, 0, N'Provide clothes changing and/or shower facilities for employees or students at or above ratios as determined in Sections 91.6307 of the L.A.M.C.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (146, 1, N'PTS_BIKE_5', N'Pts for Changing / Shower / Locker Facilities', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_BIKE_5>> ? 2 : 0;', 1318, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (147, 1, N'PTS_BIKE_BONUS', N'Bicycle Facilities Bonus', N'calculation', N'number', N'pts', NULL, N'	// <<STRATEGY_BIKE_BONUS>>
	return Math.max(0, Math.sign(<<PTS_BIKE_1>>) 
		+ Math.sign(<<PTS_BIKE_2>>) 
		+ Math.sign(<<PTS_BIKE_3>>) 
		+ Math.sign(<<PTS_BIKE_4>>) 
		+ Math.sign(<<PTS_BIKE_5>>)
		-1);', 1320, 0, 11, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), CAST(4.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (148, 1, N'PTS_BIKE', N'Pts for Bicycle Facilities', N'calculation', N'number', N'pts', NULL, N'return <<PTS_BIKE_1>> + <<PTS_BIKE_2>> + <<PTS_BIKE_3>> + <<PTS_BIKE_4>> + <<PTS_BIKE_5>> + <<PTS_BIKE_BONUS>>;', 1000000, 0, NULL, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (149, 1, N'STRATEGY_CAR_SHARE_1', N'Car Share Parking', N'measure', N'boolean', N'', NULL, N'', 1410, 0, 16, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_RESIDENTIAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_CAR_SHARE_1', 0, NULL, NULL, 0, N'Provide at least one car share space per 25 employees/units, with a minimum of two car-share parking spaces. Requires cooperation with a car share service provider.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (150, 1, N'PTS_CAR_SHARE_1', N'Pts for Car Share Parking', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_CAR_SHARE_1>> ? 3 : 0;', 1410, 0, 11, 0, N'return true;', CAST(3.00 AS Numeric(6, 2)), CAST(3.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (151, 1, N'STRATEGY_CAR_SHARE_2', N'Car Share Memberships', N'measure', N'boolean', N'', NULL, N'', 1412, 0, 16, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_RESIDENTIAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_CAR_SHARE_2', 0, NULL, NULL, 0, N'Offer an annual car share membership (through a third party car share service operator other than Blue LA) for at least 50% of residents or employees. ')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (152, 1, N'PTS_CAR_SHARE_2', N'Pts for Car Share Memberships', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_CAR_SHARE_2>> ? 3 : 0;', 1412, 0, 11, 0, N'return true;', CAST(3.00 AS Numeric(6, 2)), CAST(3.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (153, 1, N'STRATEGY_CAR_SHARE_3', N'Blue LA Car Share Memberships', N'measure', N'boolean', N'', NULL, N'', 1414, 0, 16, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_RESIDENTIAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_CAR_SHARE_3', 0, NULL, NULL, 0, N'Offer annual Blue LA car share membership (not including trip fees) for at least 50% of residents or employees (applicable for locations within 0.25 miles of an existing or planned Blue LA station).')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (154, 1, N'PTS_CAR_SHARE_3', N'Pts for Blue LA Car Share Memberships', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_CAR_SHARE_3>> ? 4 : 0;', 1414, 0, 11, 0, N'return true;', CAST(4.00 AS Numeric(6, 2)), CAST(4.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (155, 1, N'STRATEGY_CAR_SHARE_4', N'Private Car Share Fleet', N'measure', N'boolean', N'', NULL, N'', 1416, 0, 16, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_RESIDENTIAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_CAR_SHARE_4', 0, NULL, NULL, 0, N'Provide a car share fleet to all building occupants')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (156, 1, N'PTS_CAR_SHARE_4', N'Pts for Private Car Share Fleet', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_CAR_SHARE_4>> ? 5 : 0;', 1416, 0, 11, 0, N'return true;', CAST(5.00 AS Numeric(6, 2)), CAST(5.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (157, 1, N'PTS_CAR_SHARE_BONUS', N'Pts for Car Share Bonus', N'calculation', N'number', N'pts', NULL, N'
// <<STRATEGY_CAR_SHARE_BONUS>>
 return  (Math.sign(<<PTS_CAR_SHARE_1>>) 
	+ Math.sign(<<PTS_CAR_SHARE_2>>) 
	+ Math.sign(<<PTS_CAR_SHARE_3>>) 
	+ Math.sign(<<PTS_CAR_SHARE_4>>) > 1) ? 2 : 0;', 1417, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (158, 1, N'STRATEGY_CAR_SHARE_ELECTRIC', N'Electric Vehicle Bonus', N'measure', N'boolean', N'', NULL, N'', 1418, 0, 16, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_RESIDENTIAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_CAR_SHARE_ELECTRIC', 0, NULL, NULL, 0, N'Provide 100% electric vehicle fleet or membership to electric vehicle car share program.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (159, 1, N'PTS_CAR_SHARE_ELECTRIC', N'Pts for Electric Vehicle Bonus', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_CAR_SHARE_ELECTRIC>> ? 1 : 0;', 1418, 0, 11, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(1.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (160, 1, N'PTS_CAR_SHARE', N'Pts for Car Share', N'calculation', N'number', N'pts', NULL, N'return <<PTS_CAR_SHARE_1>> + 
	<<PTS_CAR_SHARE_2>> + 
	<<PTS_CAR_SHARE_3>> + 
	<<PTS_CAR_SHARE_4>> + 
	<<PTS_CAR_SHARE_BONUS>> + 
	<<PTS_CAR_SHARE_ELECTRIC>> ;', 1420, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (161, 1, N'STRATEGY_CHILD_CARE', N'Child Care', N'measure', N'boolean', N'', NULL, N'', 1450, 0, 17, 0, N'return true;', NULL, NULL, NULL, N'PTS_CHILD_CARE', 0, NULL, NULL, 0, N'On-site child care provided by a licensed childcare provider.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (162, 1, N'PTS_CHILD_CARE', N'Pts for Child Care', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_CHILD_CARE>> ? 2 : 0;', 1450, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (163, 1, N'STRATEGY_HOV_1', N'Ride Matching', N'measure', N'boolean', N'', NULL, N'', 1502, 0, 18, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_HOV_1', 0, NULL, NULL, 0, N'Implement, promote, and maintain a ride-matching service that is open to all employees')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (164, 1, N'PTS_HOV_1', N'Pts for Ride Matching', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_HOV_1>> ? 2 : 0;', 1502, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (165, 1, N'STRATEGY_HOV_2', N'Guaranteed Return Trip', N'measure', N'boolean', N'', NULL, N'', 1504, 0, 18, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_HOV_2', 0, NULL, NULL, 0, N'Provide at least six taxi or Transporation Network Company (TNC) fares for at least 50% of employees who travel by non-drive alone trips.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (166, 1, N'PTS_HOV_2', N'Pts for Guaranteed Return Trip', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_HOV_2>> ? 2 : 0;', 1504, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (167, 1, N'STRATEGY_HOV_3', N'HOV Parking', N'measure', N'boolean', N'', NULL, N'', 1506, 0, 18, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_HOV_3', 0, NULL, NULL, 0, N'Provide free, reserved HOV parking spaces (carpool, vanpool, etc.). Should be closer to the building entrance than other non-HOV parking spaces (excluding ADA stalls).')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (168, 1, N'PTS_HOV_3', N'Pts for HOV Parking', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_HOV_3>> ? 2 : 0;', 1506, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (169, 1, N'STRATEGY_HOV_4', N'HOV Program', N'measure', N'boolean', N'', NULL, N'', 1508, 0, 18, 0, N'return !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_RESIDENTIAL>> || !!<<LAND_USE_OTHER>> || !!<<LAND_USE_SCHOOL>>;', NULL, NULL, NULL, N'PTS_HOV_4', 0, NULL, NULL, 0, N'HOV Program where school administrators, employers, residential property managers, or homeowners associations coordinate a HOV program to match individuals, groups, parents and/or families available to share rides on a regular basis ')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (170, 1, N'PTS_HOV_4', N'Pts for HOV Program', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_HOV_4>> ? 2 : 0;', 1508, 0, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (171, 1, N'STRATEGY_HOV_5', N'Required Trip-Reduction Program', N'measure', N'boolean', N'', NULL, N'', 1510, 0, 18, 0, N'return !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_HOV_5', 0, NULL, NULL, 0, N'Deploying an employee-focused travel behavior change program that targets individual attitudes, goals, and travel behaviors, educating participants on the impacts of travel choices and opportunities to alter their habits. The program typically includes a coordinated ride-sharing, vanpool and/or carpooling program, and requires a program coordinator, and includes program monitoring, reporting and evaluation')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (172, 1, N'PTS_HOV_5', N'Pts for Required Trip-Reduction Program', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_HOV_5>> ? 6 : 0;', 1510, 0, 11, 0, N'return true;', CAST(6.00 AS Numeric(6, 2)), CAST(6.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
GO
