-- This file inserts current records (as of May 13, 2020) that were on the heroku "production" environment
-- Part 2 of inserting into Calculation Rule

INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (173, 1, N'PTS_HOV', N'Pts for HOV', N'calculation', N'number', N'pts', NULL, N'return <<PTS_HOV_1>> +
	<<PTS_HOV_2>> +
	<<PTS_HOV_3>> +
	<<PTS_HOV_4>> +
	<<PTS_HOV_5>>;', 1512, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (174, 1, N'STRATEGY_INFO_2', N'Wayfinding', N'measure', N'boolean', N'', NULL, N'', 1552, 0, 19, 0, N'return true;', NULL, NULL, NULL, N'PTS_INFO_2', 0, NULL, NULL, 0, N'Post wayfinding signage near major entrances directing building users to rail stations, bus stops, bicycle facilities, bicycle parking, car sharing kiosks, and other sustainable (non-SOV) travel options, provided inside and/or outside of the building.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (175, 1, N'PTS_INFO_2', N'Pts for Wayfinding', N'calculation', N'number', N'pts', NULL, N'
	return <<STRATEGY_INFO_2>> ? 1 : 0;', 1552, 0, 11, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(1.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (176, 1, N'STRATEGY_INFO_3', N'Encouragement Program', N'measure', N'choice', N'', NULL, N'', 1554, 0, 19, 0, N'return true;', CAST(4.00 AS Numeric(6, 2)), CAST(6.00 AS Numeric(6, 2)), N'[{"id": "0", "name": "none"},
{"id": "1", "name": "Education, Marketing & Outreach"},
{"id": "2", "name": "Voluntary Behavior Change Program"}]', N'PTS_INFO_3', 0, NULL, NULL, 0, N'<div>
	<ul style="list-style-type:disc;">
	<li> Education, Marketing and Outreach: Offer new employees and residents a packet of materials and/or provide personal consultation detailing sustainable (non-SOV) travel options. These materials or consultation must be available on an ongoing basis and/or on permanent online channels. Packet must include the distribution of a one Metro TAP card pre-loaded with a trip, to each employee or residential unit.</li>
	<li> Travel Behavior Change Program: A multi-faceted program typically involving two-way communication campaigns and travel feedback that actively engages participants to target individual attitudes, goals, and travel behaviors to alter their travel choices and habits. Program must include the distribution of a one Metro TAP card pre-loaded with a trip, to each employee or residential unit. Selection of this strategy requires a coordinator to manage the program. May not be combined with Information 3.</li>
	</ul>
	</div>
>')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (177, 1, N'PTS_INFO_3', N'Pts for Education, Marketing, OUtreach', N'calculation', N'number', N'pts', NULL, N' 
switch (<<STRATEGY_INFO_3>>){
	case 1:
		return 4;
	case 2:
		return 6;
	default:
		return 0;
};', 1554, 0, 11, 0, N'return true;', CAST(4.00 AS Numeric(6, 2)), CAST(6.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (180, 1, N'PTS_INFO', N'Pts for Information', N'calculation', N'number', N'pts', NULL, N'
return <<PTS_INFO_1>> +
	<<PTS_INFO_2>> +
	<<PTS_INFO_3>> +
	<<PTS_INFO_5>>;', 1558, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (181, 1, N'STRATEGY_INFO_BONUS', N'Distribution of Metro TAP Card', N'measure', N'boolean', N'', NULL, N'', 1560, 1, 19, 0, N'return true;', NULL, NULL, NULL, N'PTS_INFO_BONUS', 0, NULL, NULL, 0, N'Implementation of two or more Information strategies for bonus points.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (182, 1, N'PTS_INFO_BONUS', N'Pts for Distibution of Metro TAP Card', N'calculation', N'number', N'pts', NULL, N'	if (<<PTS_INFO_1>> +
	<<PTS_INFO_2>> +
	<<PTS_INFO_3>> +
	<<PTS_INFO_4>> > 0){
		return <<STRATEGY_INFO_BONUS>> ? 2 : 0;
	}
	return 0;', 1560, 1, 11, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (183, 1, N'STRATEGY_MIXED_USE', N'Mixed Use', N'measure', N'boolean', N'', NULL, N'', 1602, 0, 20, 0, N'return true;', NULL, NULL, NULL, N'PTS_MIXED_USE', 0, NULL, NULL, 0, N'Projects that are zoned for mixed use and provide no more than 85% of floor area for a single land use')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (184, 1, N'PTS_MIXED_USE', N'Pts for Mixed User', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_MIXED_USE>> ? 5 : 0;', 1602, 0, 11, 0, N'return true;', CAST(5.00 AS Numeric(6, 2)), CAST(5.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (185, 1, N'STRATEGY_MOBILITY_HUBS', N'Mobility Hubs', N'measure', N'boolean', N'', NULL, N'', 1652, 0, 21, 0, N'return true;', NULL, NULL, NULL, N'PTS_MOBILITY_HUBS', 0, NULL, NULL, 0, N'Provide a Mobility Hub. Key components include colocation of services, real-time information, and a uniform payment platform across modes. A Mobility Hub must connect at a minimum of three different transportation modes/services. Applicants must work with LADOT to design their Mobility Hub.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (186, 1, N'PTS_MOBILITY_HUBS', N'Pts for Mobility Hubs', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_MOBILITY_HUBS>> ? 3 : 0;', 1652, 0, 11, 0, N'return true;', CAST(3.00 AS Numeric(6, 2)), CAST(3.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (187, 1, N'STRATEGY_PARKING_2', N'Cash-Out', N'measure', N'boolean', N'', NULL, N'', 1702, 0, 22, 0, N'return !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>>  || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_PARKING_2', 0, NULL, NULL, 0, N'Implement a “cash out” program, where employees who do not use a parking space are paid the value of the space instead.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (188, 1, N'PTS_PARKING_2', N'Pts for Cash-Out', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_PARKING_2>> ? 8 : 0;', 1702, 0, 11, 0, N'return true;', CAST(8.00 AS Numeric(6, 2)), CAST(8.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (189, 1, N'STRATEGY_PARKING_3', N'Shared Parking', N'measure', N'choice', N'', NULL, N'', 1706, 0, 22, 0, N'return true;', NULL, NULL, N'[{"id": "0", "name": "< 25% spaces shared"},
{"id": "25", "name": "25%+ spaces shared"},
{"id": "50", "name": "50%+ spaces shared"},
{"id": "75", "name": "75%+ spaces shared"},
{"id": "100", "name": "100% spaces shared"}]', N'PTS_PARKING_3', 0, NULL, NULL, 0, N'Share parking among different land uses or tenants within a mixed use development. Covenant or MOU agreement among tenants required to receive points.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (190, 1, N'PTS_PARKING_3', N'Pts for Shared Parking', N'calculation', N'number', N'pts', NULL, N'switch (<<STRATEGY_PARKING_3>>){
	case 25:
		return 1;
	case 50:
		return 2;
	case 75:
		return 3;
	case 100:
		return 4;
	default:
		return 0;
};', 1706, 0, 11, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(4.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (191, 1, N'STRATEGY_PARKING_4', N'Public Parking', N'measure', N'boolean', N'', NULL, N'', 1708, 0, 22, 0, N'return true;', NULL, NULL, NULL, N'PTS_PARKING_4', 0, NULL, NULL, 0, N'Provide public access to the property''s parking. Must be coupled with on-demand parking availability publicized through public signage and/or approved mobile application. This strategy is especially encouraged for properties that provide parking supply at rates above L.A.M.C. or a Specific Plan requirements. To earn points for this strategy, a project must provide the number of parking spaces available for public use. That supply must be, at a minimum, 5% of the total parking supply.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (192, 1, N'PTS_PARKING_4', N'Pts for Public Parking', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_PARKING_4>> ? 4 : 0;', 1708, 0, 11, 0, N'return true;', CAST(4.00 AS Numeric(6, 2)), CAST(4.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (193, 1, N'STRATEGY_PARKING_5', N'Reduced Parking Supply', N'measure', N'boolean', N'', NULL, N'', 1710, 0, 22, 0, N'return true;', NULL, NULL, NULL, N'PTS_PARKING_5', 0, NULL, NULL, 0, N'Reduction in parking supply below the minimum parking required by code, utilizing parking reduction mechanisms, including, but not limited to, TOC, Density Bonus, Bicycle Parking ordinance, or locating in Enterprise Zone or Specific Plan area. Points also awarded for projects seeking variances to reduce parking requirements allocated by the L.A.M.C.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (194, 1, N'PTS_PARKING_5', N'Pts for Reduced Parking Supply', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_PARKING_5>> ? 4 : 0;', 1710, 0, 11, 0, N'return true;', CAST(4.00 AS Numeric(6, 2)), CAST(4.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (195, 1, N'PTS_PARKING', N'Pts for Parking', N'calculation', N'number', N'pts', NULL, N'return <<PTS_PARKING_1>> +
	<<PTS_PARKING_2>> +
	<<PTS_PARKING_3>> +
	<<PTS_PARKING_4>> +
	<<PTS_PARKING_5>> ;', 1712, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (196, 1, N'STRATEGY_SHARED_MOBILITY_1', N'Existing Provider', N'measure', N'boolean', N'', NULL, N'', 1752, 0, 23, 0, N'return true;', NULL, NULL, NULL, N'PTS_SHARED_MOBILITY_1', 0, NULL, NULL, 0, N'Partner with a shared mobility company to provide discounted membership fees for building occupants and users. Make shared fleet devices accessible for easy identification and use.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (197, 1, N'PTS_SHARED_MOBILITY_1', N'Pts for Existing Provider', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_SHARED_MOBILITY_1>> ? 1 : 0;', 1752, 0, 11, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(1.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (198, 1, N'STRATEGY_SHARED_MOBILITY_2', N'Local Shared Fleet', N'measure', N'boolean', N'', NULL, N'', 1754, 0, 23, 0, N'return true;', NULL, NULL, NULL, N'PTS_SHARED_MOBILITY_2', 0, NULL, NULL, 0, N'Purchase and operate a shared fleet that is available on-site for use or rent.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (199, 1, N'PTS_SHARED_MOBILITY_2', N'Pts for Local Shared Fleet', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_SHARED_MOBILITY_2>> ? 1 : 0;', 1754, 0, 11, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(1.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (200, 1, N'PTS_SHARED_MOBILITY', N'Pts for Shared Mobility', N'calculation', N'number', N'pts', NULL, N'return <<PTS_SHARED_MOBILITY_1>> + <<PTS_SHARED_MOBILITY_2>>;', 1756, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (201, 1, N'STRATEGY_TRANSIT_ACCESS_1', N'Neighborhood Connection to Destinations', N'measure', N'boolean', N'', NULL, N'', 1802, 0, 24, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>>  || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_TRANSIT_ACCESS_1', 0, NULL, NULL, 0, N'Operate a neighborhood-serving transit service (shuttle/microtransit/etc.) along a route that 
	connects within the neighborhood but does not connect to high-quality transit stations. (May not be combined with Neighborhood Connection to Transit Station).')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (202, 1, N'PTS_TRANSIT_ACCESS_1', N'Pts for Neighborhood Connection to Destinations', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_TRANSIT_ACCESS_1>> ? 4 : 0;', 1802, 0, 11, 0, N'return true;', CAST(4.00 AS Numeric(6, 2)), CAST(4.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (203, 1, N'STRATEGY_TRANSIT_ACCESS_2', N'Neighborhood Connection to Transit Station', N'measure', N'boolean', N'', NULL, N'', 1804, 0, 24, 0, N'return true;', NULL, NULL, NULL, N'PTS_TRANSIT_ACCESS_2', 0, NULL, NULL, 0, N'Operate a transit service (shuttle/microtransit/etc.) along a route that connects 
	to high-quality transit station(s). (May not be combined with "Neighborhood Connection to Destinations).')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (204, 1, N'PTS_TRANSIT_ACCESS_2', N'Pts for Neighborhood Connection to Transit Station', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_TRANSIT_ACCESS_2>> ? 5 : 0;', 1804, 0, 11, 0, N'return true;', CAST(5.00 AS Numeric(6, 2)), CAST(5.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (205, 1, N'STRATEGY_TRANSIT_ACCESS_3', N'Transit Passes', N'measure', N'choice', N'', NULL, N'', 1806, 0, 24, 0, N'return true;', NULL, NULL, N'[{"id": "0", "name": "< 25% of Monthly Fare"},
{"id": "25", "name": "25%+ of Monthly Fare"},
{"id": "50", "name": "50%+ of Monthly Fare"},
{"id": "75", "name": "75%+ of Monthly Fare"},
{"id": "100", "name": "100% of Monthly Fare"}]', N'PTS_TRANSIT_ACCESS_3', 0, NULL, NULL, 0, N'Provide employees/units transit subsidies. Points awarded vary based on the amount of transit subsidy provided per employee or residential unit.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (206, 1, N'PTS_TRANSIT_ACCESS_3', N'Pts for Transit Passes', N'calculation', N'number', N'pts', NULL, N'switch (<<STRATEGY_TRANSIT_ACCESS_3>>){
	case 25:
		return 7;
	case 50:
		return 10;
	case 75:
		return 12;
	case 100:
		return 14;
	default:
		return 0;
};', 1806, 0, 11, 0, N'return true;', CAST(7.00 AS Numeric(6, 2)), CAST(14.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (207, 1, N'STRATEGY_TRANSIT_ACCESS_4', N'Improved Transit Service', N'measure', N'boolean', N'', NULL, N'', 1810, 0, 24, 0, N'return true;', NULL, NULL, NULL, N'PTS_TRANSIT_ACCESS_4', 0, NULL, NULL, 0, N'Provide funding to a local transit provider for improvements that improve service quality (reduce headways, etc.) at transit stops within ¼ mile radius of the project site. Funds could also contribute to a neighborhood circulator, if applicable (TAG Guidelines may apply).')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (208, 1, N'PTS_TRANSIT_ACCESS_4', N'Pts for Improved Transit Service', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_TRANSIT_ACCESS_4>> ? 3 : 0;', 1810, 0, 11, 0, N'return true;', CAST(3.00 AS Numeric(6, 2)), CAST(3.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (209, 1, N'PTS_TRANSIT_ACCESS', N'Pts for Transit Access', N'calculation', N'number', N'pts', NULL, N'return <<PTS_TRANSIT_ACCESS_1>> +
	<<PTS_TRANSIT_ACCESS_2>> +
	<<PTS_TRANSIT_ACCESS_3>> +
	<<PTS_TRANSIT_ACCESS_4>>;', 1812, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (210, 1, N'STRATEGY_TMO_1', N'Join TMO', N'measure', N'boolean', N'', NULL, N'', 1852, 0, 25, 0, N'return true;', NULL, NULL, NULL, N'PTS_TMO_1', 0, NULL, NULL, 0, N'Join an existing TMO')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (211, 1, N'PTS_TMO_1', N'Pts for Join TMO', N'calculation', N'calculation', N'pts', NULL, N'return <<STRATEGY_TMO_1>> ? 1 : 0;', 1852, 0, 11, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(1.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (212, 1, N'STRATEGY_TMO_2', N'Start a New TMO', N'measure', N'boolean', N'', NULL, N'', 1854, 0, 25, 0, N'return true;', NULL, NULL, NULL, N'PTS_TMO_2', 0, NULL, NULL, 0, N'Create a new TMO in an area where there is not already an existing TMO service. ')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (213, 1, N'PTS_TMO_2', N'Pts for Start TMO', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_TMO_2>> ? 3 : 0;', 1854, 0, 11, 0, N'return true;', CAST(3.00 AS Numeric(6, 2)), CAST(3.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (214, 1, N'PTS_TMO', N'Pts for TMO', N'calculation', N'number', N'pts', NULL, N'return <<PTS_TMO_1>> + <<PTS_TMO_2>>;', 1856, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (215, 1, N'STRATEGY_APPLICANT', N'Applicant-Defined Strategy', N'measure', N'number', N'pts', NULL, N'', 1902, 0, 26, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), CAST(100.00 AS Numeric(6, 2)), NULL, N'STRATEGY_APPLICANT', 0, NULL, NULL, 1, N'Additional approved custom strategy.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (216, 1, N'PTS_APPLICANT', N'Pts for Applicant-Defined Strategy', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_APPLICANT>>;', 1902, 0, 11, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(100.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (218, 1, N'UNITS_GUEST', N'# Guest Rooms', N'input', N'number', N'rooms', NULL, NULL, 2500, 0, 30, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (219, 1, N'PARK_GUEST', N'Parking Requirement - Guest Rooms < 30', N'calculation', N'number', N'spcs', NULL, N'if (<<UNITS_GUEST>> <= 30){
return <<UNITS_GUEST>>;
} else if (<<UNITS_GUEST>> <= 60 ) {
return 30 + (<<UNITS_GUEST>> - 30) * 0.5;
} else {
return 45 + (<<UNITS_GUEST>> - 60) * 0.3;
}', 540, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (220, 1, N'STRATEGY_INFO_5', N'School Safety Campaign', N'measure', N'boolean', N'', NULL, N'', 1558, 0, 19, 0, N'return true;', NULL, NULL, NULL, N'PTS_INFO_5', 0, NULL, NULL, 0, N'The yearlong Safety Campaign targets parents and students to heighten their awareness of the importance of traffic safety.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (221, 1, N'PTS_INFO_5', N'Pts for School Safety Campaign', N'calculation', N'number', N'pts', NULL, N'return <<STRATEGY_INFO_5>> ? 4 : 0;', 1560, 0, 11, 0, N'return true;', CAST(4.00 AS Numeric(6, 2)), CAST(4.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (222, 1, N'STRATEGY_BIKE_BONUS', N'Bike Bonus', N'measure', N'none', N'', NULL, N'', 1324, 0, 15, 0, N'return true;', NULL, NULL, NULL, N'PTS_BIKE_BONUS', 0, NULL, NULL, 0, N'Implementation of two or more Bicycle Facilities strategies for bonus points. ')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (223, 1, N'PROJECT_LEVEL', N'Project Level', N'calculation', N'number', N'', NULL, N'// <<LEVEL>>
// <<LAND_USE_RESIDENTIAL>>

if(!!<<LAND_USE_MAJOR>>){
	return 3;
}

let hotelLevel = 0;
const hotelUnits = <<UNITS_GUEST>> || 0;
if(hotelUnits >= 150 ){
	hotelLevel = 3;
} else if (hotelUnits >= 50) {
	hotelLevel = 2;
} else if (hotelUnits >= 16) {
	hotelLevel = 1;
}

let residentialLevel = 0;
const residentialUnits = (<<UNITS_HABIT_LT3>> || 0) 
	+ (<<UNITS_HABIT_3>> || 0) 
	+ (<<UNITS_HABIT_GT3>> || 0) 
	+ (<<UNITS_CONDO>> || 0);

if(<<STRATEGY_AFFORDABLE>> === 4){
	return residentialUnits < 16 ? 0 : 1;
}

if (residentialUnits >= 250){
	residentialLevel = 3;
} else if ( residentialUnits >=  50 ){
	residentialLevel = 2;
} else if (residentialUnits >= 16 ) {
	residentialLevel = 1;
}

let auditoriumLevel = 0;
const auditoriumSeats = (<<SEAT_AUDITORIUM>> || 0) ;

if (auditoriumSeats >= 650){
	auditoriumLevel = 3;
} else if ( auditoriumSeats >=  350 ){
	auditoriumLevel = 2;
} else if (auditoriumSeats >= 150) {
	auditoriumLevel = 1;
}

let auditoriumSFLevel = 0;
const auditoriumSF = (<<SF_AUDITORIUM_NO_SEATS>> || 0) ;

if (auditoriumSF >= 250000){
	auditoriumSFLevel = 3;
} else if ( auditoriumSF >=  50000 ){
	auditoriumSFLevel = 2;
} else if (auditoriumSF >= 25000) {
	auditoriumSFLevel = 1;
}

let retailLevel = 0;
const retailSF = (<<SF_RETAIL>> || 0)  + (<<SF_FURNITURE>> || 0)  + (<<SF_INST_MEDICAL_SVC>> || 0);
if (retailSF >= 250000){
	retailLevel = 3;
} else if ( retailSF >=  100000){
	retailLevel = 2;
} else if ( retailSF >=  50000){
	retailLevel = 1;
} 

let warehouseLevel = 0;
const warehouseSF = (<<SF_WAREHOUSE>> || 0) ;
if (warehouseSF >= 250000){
	warehouseLevel = 3;
} 

let commercialLevel = 0;
const commercialSF = (<<SF_RESTAURANT>> || 0) 
	+ (<<SF_HEALTH_CLUB>> || 0)
	+ (<<SF_OFFICE>> || 0)
	+ (<<SF_RESTAURANT_TAKEOUT>> || 0);

if (commercialSF >= 100000){
	commercialLevel = 3;
} else if ( commercialSF >=  50000 ){
	commercialLevel = 2;
} else if (commercialSF >= 25000) {
	commercialLevel = 1;
}

let institutionalSFLevel = 0;
const institutionalSF = 
	(<<SF_INST_OTHER>> || 0)
	+ (<<SF_INST_GOV>> || 0);
if (institutionalSF >= 100000){
	institutionalSFLevel = 3;
} else if ( institutionalSF >=  50000 ){
	institutionalSFLevel = 2;
} else if (institutionalSF >= 25000) {
	institutionalSFLevel = 1;
}

let schoolLevel = 0;
const schoolStudents = (<<STUDENTS_ELEMENTARY>> || 0)
	+ (<<STUDENTS_TRADE_SCHOOL>> || 0);
if (schoolStudents >= 500){
	schoolLevel = 3;
} else if ( schoolStudents >=  249 ){
	schoolLevel = 2;
} else if (schoolStudents >= 100) {
	schoolLevel = 1;
}

return Math.max(residentialLevel, hotelLevel, auditoriumLevel, 
	auditoriumSFLevel, retailLevel, warehouseLevel, 
	commercialLevel, institutionalSFLevel, schoolLevel);
', 160, 0, 12, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (225, 1, N'PTS_ACCESS_1', N'Pts for Correct Substandard Infrastructure', N'calculation', N'number', N'pts', NULL, N'switch (<<STRATEGY_ACCESS_1>>){
	case 25:
		return 2;
	case 50:
		return 3;
	case 75:
		return 4;
	case 100:
		return 5;
	default:
		return 0;
};', 100, 0, 13, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(5.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (226, 1, N'PTS_ACCESS_2', N'Pts for Intersection Improvement', N'calculation', N'number', N'pts', NULL, N'switch (<<STRATEGY_ACCESS_2>>){
	case 25:
		return 2;
	case 50:
		return 3;
	case 75:
		return 4;
	case 100:
		return 5;
	default:
		return 0;
};', 100, 0, 13, 0, N'return true;', CAST(2.00 AS Numeric(6, 2)), CAST(5.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (227, 1, N'PKG_RESIDENTIAL', N'TDM Residential  Package', N'measure', N'none', N'', NULL, N'', 1904, 0, 27, 0, N'return !!<<LAND_USE_RESIDENTIAL>>;', NULL, NULL, NULL, N'PTS_PKG_RESIDENTIAL', 0, NULL, NULL, 0, N'Bonus points for combination of Residential Strategies')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (228, 1, N'PTS_PKG_RESIDENTIAL', N'TDM Package Bonus', N'calculation', N'none', N'pts', NULL, N'// <<PKG_RESIDENTIAL>>
return (!!<<STRATEGY_BIKE_4>> && !!<<STRATEGY_INFO_3>> && !!<<STRATEGY_PARKING_1>>) ? 1 : 0;', 1005, 0, 12, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(1.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (231, 1, N'STRATEGY_CAR_SHARE_BONUS', N'Car Share Bonus', N'measure', N'none', N'', NULL, N'', 1420, 0, 16, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_RESIDENTIAL>> || !!<<LAND_USE_HOTEL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_CAR_SHARE_BONUS', 0, NULL, NULL, 0, N'Implementation of two or more Car Share strategies for bonus points. ')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (232, 1, N'LAND_USE_SCHOOL', N'School', N'calculation', N'boolean', N'', NULL, N'
		return !!<<CLASSROOM_SCHOOL>> || !!<<SF_TRADE_SCHOOL>>;
	', 1035, 0, 5, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (233, 1, N'LAND_USE_RETAIL', N'Retail', N'calculation', N'boolean', N'', NULL, N'
		return !!<<SF_RETAIL>> || !!<<SF_FURNITURE>> || !!<<SF_INST_MEDICAL_SVC>>;
	', 1015, 0, 5, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (234, 1, N'INPUT_PARK_REQUIREMENT', N'Citywide Parking Baseline', N'measure', N'none', N'', NULL, N'', 995, 0, 10, 1, N'return true;', NULL, NULL, NULL, N'PARK_REQUIREMENT', 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (235, 1, N'PARK_RATIO', N'Parking Provided / Baseline', N'measure', N'none', N'', NULL, N'', 1005, 0, 10, 1, N'return true;', NULL, NULL, NULL, N'CALC_PARK_RATIO', 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (236, 1, N'CALC_PARK_RATIO', N'Parking Provided / Baseline', N'calculation', N'number', N'%', NULL, N' return <<PARK_REQUIREMENT>> ?  <<PARK_SPACES>> / <<PARK_REQUIREMENT>> * 100 : 0;', 1000000, 0, 12, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (237, 1, N'INPUT_TARGET_POINTS_PARK', N'Target TDM Points', N'measure', N'none', N'', NULL, N'', 1010, 0, 10, 1, N'return true;', NULL, NULL, NULL, N'TARGET_POINTS_PARK', 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (238, 1, N'PARK_CONDO', N'Condo - Enter Parking Space Req''d', N'input', N'number', N'spcs', NULL, N'', 3000, 0, 6, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (239, 1, N'LAND_USE_HOTEL', N'Hotel', N'calculation', N'boolean', N'', NULL, N'
		return !!<<UNITS_GUEST>>;
	', 1015, 0, 5, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (240, 1, N'PROJECT_NAME', N'Project Name', N'input', N'string', N'', NULL, N'', 50, 0, 31, 1, N'return true;', NULL, NULL, NULL, NULL, 1, NULL, 200, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (241, 1, N'PROJECT_ADDRESS', N'Address', N'input', N'string', N'', NULL, N'', 53, 0, 31, 1, N'return true;', NULL, NULL, NULL, NULL, 1, NULL, 200, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (242, 1, N'PROJECT_DESCRIPTION', N'Project Description', N'input', N'textarea', N'', NULL, N'', 65, 0, 31, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (243, 1, N'PARK_OTHER', N'Parking Requirement - Other', N'calculation', N'number', N'spcs', NULL, N'return Math.ceil(<<PARK_AUDITORIUM>> + <<PARK_AUDITORIUM_NO_SEATS>>);', 142, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (244, 1, N'PARK_HOTEL', N'Parking Requirement - Hotel', N'calculation', N'number', N'spcs', NULL, N'return Math.ceil(<<PARK_GUEST>>);', 112, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (245, 1, N'PARK_RETAIL_SUBTOTAL', N'Parking Requirement - Retail', N'calculation', N'number', N'spcs', NULL, N'return Math.ceil(<<PARK_RETAIL>> + <<PARK_FURNITURE>> + <<PARK_WAREHOUSE>> + <<PARK_INST_MEDICAL_SVC>>);', 118, 0, 11, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (246, 1, N'LAND_USE_MAJOR', N'Major Development Project - CUP', N'input', N'boolean', N'', NULL, N'', 1045, 1, 5, 1, N'return false;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (247, 1, N'UNITS_CONDO', N'Condo - Units', N'input', N'number', N'dwelling units', NULL, N'', 2990, 0, 6, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (248, 1, N'STUDENTS_ELEMENTARY', N'Elementary School - Students', N'input', N'number', N'students', NULL, N'', 5031, 0, 29, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (249, 1, N'STUDENTS_TRADE_SCHOOL', N'Trade School - Students', N'input', N'number', N'students', NULL, N'', 5041, 0, 29, 0, N'return true;', CAST(0.00 AS Numeric(6, 2)), NULL, NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (252, 1, N'PKG_COMMERCIAL', N'TDM Employment Package', N'measure', N'none', N'', NULL, N'', 1906, 0, 27, 0, N'return !!<<LAND_USE_RETAIL>> || !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>>  || !!<<LAND_USE_SCHOOL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_PKG_COMMERCIAL', 0, NULL, NULL, 0, N'Bonus points for combination of Employment Strategies')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (253, 1, N'PTS_PKG_COMMERCIAL', N'TDM Employment Package Bonus', N'calculation', N'number', N'pts', NULL, N'// <<PKG_COMMERCIAL>>
return (!!<<STRATEGY_BIKE_4>> && !!<<STRATEGY_INFO_3>> && !!<<STRATEGY_PARKING_2>>) ? 1 : 0;', 1006, 0, 12, 0, N'return true;', CAST(1.00 AS Numeric(6, 2)), CAST(1.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (254, 1, N'BUILDING_PERMIT', N'Building Permit # (Required to Submit)', N'input', N'string', N'', NULL, N'', 56, 0, 31, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, 400, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (255, 1, N'CASE_NO_LADOT', N'LADOT Case #', N'input', N'string', N'', NULL, N'', 58, 0, 31, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, 400, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (256, 1, N'VERSION_NO', N'Version #', N'input', N'string', N'', NULL, N'', 55, 0, 31, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, 400, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (257, 1, N'CASE_NO_PLANNING', N'City Planning Case #', N'input', N'string', N'', NULL, N'', 59, 0, 31, 1, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, 400, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (261, 1, N'PTS_TELECOMMUTE', N'Pts for Telecommute', N'calculation', N'number', N'pts', NULL, N'return !!<<STRATEGY_TELECOMMUTE>> ? 2 : 0;', 1756, 0, 11, 0, N'return !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_OTHER>>;', CAST(2.00 AS Numeric(6, 2)), CAST(2.00 AS Numeric(6, 2)), NULL, NULL, 0, NULL, NULL, 0, N'')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (262, 1, N'STRATEGY_TELECOMMUTE', N'Telecommute', N'measure', N'boolean', N'', NULL, NULL, 1756, 0, 32, 0, N'return !!<<LAND_USE_COMMERCIAL>> || !!<<LAND_USE_INSTITUTIONAL>> || !!<<LAND_USE_OTHER>>;', NULL, NULL, NULL, N'PTS_TELECOMMUTE', 0, NULL, NULL, 0, N'Offer employees telecommute option for at least 1 day a week, which would allow employees to work from home rather than commute to the office.')
INSERT [dbo].[CalculationRule]
    ([id], [calculationId], [code], [name], [category], [dataType], [units], [value], [functionBody], [displayOrder], [inactive], [calculationPanelId], [used], [displayFunctionBody], [minValue], [maxValue], [choices], [calcCode], [required], [minStringLength], [maxStringLength], [displayComment], [description])
VALUES
    (265, 2, N'SF_TOTAL', N'Total Square Footage', N'input', N'number', N'sq ft', N'""', NULL, 1000, 0, NULL, 0, N'return true;', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, N'')

SET IDENTITY_INSERT [dbo].[CalculationRule] OFF
GO