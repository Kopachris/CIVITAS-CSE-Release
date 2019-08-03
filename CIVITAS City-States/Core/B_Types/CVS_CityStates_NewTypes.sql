-- CVS_CityStates_Agricultural
-- Author: thecrazyscotsman
-- DateCreated: 12/16/2017 9:25:55 PM
--------------------------------------------------------------
--=====
--TYPES
--=====
INSERT INTO Types 
				(Type, 															Kind)
VALUES	('CVS_LEADER_MINOR_CIV_AGRICULTURAL', 	'KIND_LEADER'),
				('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'KIND_TRAIT'),
				('CVS_LEADER_MINOR_CIV_CONSULAR', 		'KIND_LEADER'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'KIND_TRAIT'),
				('CVS_LEADER_MINOR_CIV_ENTERTAINMENT', 'KIND_LEADER'),
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'KIND_TRAIT'),
				('CVS_LEADER_MINOR_CIV_MARITIME', 			'KIND_LEADER'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'KIND_TRAIT'),
				('CVS_MODIFIER_CONSULAR_CAPITAL_ADJUST_IDENTITY_PER_TURN',									'KIND_MODIFIER'),
				('CVS_MODIFIER_CONSULAR_CAPITAL_ADJUST_IDENTITY_PER_CITIZEN',								'KIND_MODIFIER'),
				('CVS_MODIFIER_ENTERTAINMENT_CAPITAL_ADJUST_AMENITIES_FROM_CITY_STATES', 			'KIND_MODIFIER'),
				('CVS_MODIFIER_ENTERTAINMENT_PLAYER_CITIES_ADJUST_AMENITIES_FROM_CITY_STATES', 'KIND_MODIFIER');

--=======
--LEADERS
--=======
INSERT INTO Leaders 
				(LeaderType, 												Name, 							InheritFrom)
VALUES	('CVS_LEADER_MINOR_CIV_AGRICULTURAL', 	'LOC_PLACEHOLDER', 	'LEADER_MINOR_CIV_DEFAULT'),
				('CVS_LEADER_MINOR_CIV_CONSULAR', 		'LOC_PLACEHOLDER', 	'LEADER_MINOR_CIV_DEFAULT'),
				('CVS_LEADER_MINOR_CIV_ENTERTAINMENT', 'LOC_PLACEHOLDER', 	'LEADER_MINOR_CIV_DEFAULT'),
				('CVS_LEADER_MINOR_CIV_MARITIME', 			'LOC_PLACEHOLDER', 	'LEADER_MINOR_CIV_DEFAULT');

--========
--AI LISTS
--========
INSERT INTO AiListTypes 
				(ListType)
VALUES	('CVSMinorCivAgricultureDistrict'),
				('CVSMinorCivAgricultureTechs'),
				('CVSMinorCivAgricultureCivics'),
				('CVSMinorCivConsularDistrict'),
				('CVSMinorCivConsularTechs'),
				('CVSMinorCivConsularCivics'),
				('CVSMinorCivEntertainmentDistrict'),
				('CVSMinorCivEntertainmentCivics'),
				('CVSMinorCivMaritimeDistrict'),
				('CVSMinorCivMaritimeTechs');
		
INSERT INTO AiLists 
				(ListType, 										LeaderType, 													System)
VALUES	('CVSMinorCivAgricultureDistrict', 	'CVS_LEADER_MINOR_CIV_AGRICULTURAL', 	'Districts'),
				('CVSMinorCivAgricultureTechs', 		'CVS_LEADER_MINOR_CIV_AGRICULTURAL', 	'Technologies'),
				('CVSMinorCivAgricultureCivics', 	'CVS_LEADER_MINOR_CIV_AGRICULTURAL', 	'Civics'),
				('CVSMinorCivConsularDistrict', 		'CVS_LEADER_MINOR_CIV_CONSULAR', 			'Districts'),
				('CVSMinorCivConsularTechs', 		'CVS_LEADER_MINOR_CIV_CONSULAR', 			'Technologies'),
				('CVSMinorCivConsularCivics', 		'CVS_LEADER_MINOR_CIV_CONSULAR', 			'Civics'),
				('CVSMinorCivEntertainmentDistrict', 'CVS_LEADER_MINOR_CIV_ENTERTAINMENT', 'Districts'),
				('CVSMinorCivEntertainmentCivics', 'CVS_LEADER_MINOR_CIV_ENTERTAINMENT', 'Civics'),
				('CVSMinorCivMaritimeDistrict', 		'CVS_LEADER_MINOR_CIV_MARITIME',			'Districts'),
				('CVSMinorCivMaritimeTechs', 		'CVS_LEADER_MINOR_CIV_MARITIME',			'Technologies');
		
INSERT INTO AiFavoredItems 
				(ListType, 											Item, 													Favored)
VALUES	('CVSMinorCivAgricultureDistrict', 		'DISTRICT_AQUEDUCT', 						1),
				('CVSMinorCivConsularDistrict', 			'DISTRICT_CAMPUS', 							1),
				('CVSMinorCivConsularDistrict', 			'DISTRICT_THEATER', 							1),
				('CVSMinorCivEntertainmentDistrict', 	'DISTRICT_ENTERTAINMENT_COMPLEX', 	1),
				('CVSMinorCivEntertainmentDistrict', 	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 	1),
				('CVSMinorCivMaritimeDistrict', 			'DISTRICT_HARBOR', 							1);

INSERT INTO AiFavoredItems 
				(ListType, 											Item)
VALUES	('CVSMinorCivAgricultureTechs', 			'TECH_POTTERY'),
				('CVSMinorCivAgricultureTechs', 			'TECH_IRRIGATION'),
				('CVSMinorCivAgricultureTechs', 			'TECH_MINING'),
				('CVSMinorCivAgricultureTechs', 			'TECH_THE_WHEEL'),
				('CVSMinorCivAgricultureTechs', 			'TECH_ENGINEERING'),
				('CVSMinorCivAgricultureCivics', 		'CIVIC_URBANIZATION'),
				('CVSMinorCivConsularTechs', 			'TECH_POTTERY'),
				('CVSMinorCivConsularTechs', 			'TECH_WRITING'),
				('CVSMinorCivConsularCivics', 			'CIVIC_FOREIGN_TRADE'),
				('CVSMinorCivConsularCivics', 			'CIVIC_CRAFTSMANSHIP'),
				('CVSMinorCivConsularCivics', 			'CIVIC_EARLY_EMPIRE'),
				('CVSMinorCivConsularCivics', 			'CIVIC_STATE_WORKFORCE'),
				('CVSMinorCivConsularCivics', 			'CIVIC_POLITICAL_PHILOSOPHY'),
				('CVSMinorCivConsularCivics', 			'CIVIC_DRAMA_POETRY'),
				('CVSMinorCivEntertainmentCivics', 	'CIVIC_FOREIGN_TRADE'),
				('CVSMinorCivEntertainmentCivics', 	'CIVIC_CRAFTSMANSHIP'),
				('CVSMinorCivEntertainmentCivics', 	'CIVIC_STATE_WORKFORCE'),
				('CVSMinorCivEntertainmentCivics', 	'CIVIC_EARLY_EMPIRE'),
				('CVSMinorCivEntertainmentCivics', 	'CIVIC_POLITICAL_PHILOSOPHY'),
				('CVSMinorCivEntertainmentCivics', 	'CIVIC_DRAMA_POETRY'),
				('CVSMinorCivMaritimeTechs', 			'TECH_SAILING'),
				('CVSMinorCivMaritimeTechs', 			'TECH_ASTROLOGY'),
				('CVSMinorCivMaritimeTechs', 			'TECH_CELESTIAL_NAVIGATION');

--=============
--LEADER TRAITS
--=============
INSERT INTO LeaderTraits 
				(LeaderType, 												TraitType)
VALUES	('CVS_LEADER_MINOR_CIV_AGRICULTURAL', 	'CVS_MINOR_CIV_AGRICULTURAL_TRAIT'),
				('CVS_LEADER_MINOR_CIV_CONSULAR', 		'CVS_MINOR_CIV_CONSULAR_TRAIT'),
				('CVS_LEADER_MINOR_CIV_ENTERTAINMENT', 'CVS_MINOR_CIV_ENTERTAINMENT_TRAIT'),
				('CVS_LEADER_MINOR_CIV_MARITIME', 			'CVS_MINOR_CIV_MARITIME_TRAIT');
		
INSERT INTO Traits 
				(TraitType, 													Name, 																			Description)
VALUES	('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'LOC_CVS_MINOR_CIV_AGRICULTURAL_TRAIT_NAME', 	'LOC_CVS_MINOR_CIV_AGRICULTURAL_TRAIT_DESCRIPTION'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'LOC_CVS_MINOR_CIV_CONSULAR_TRAIT_NAME', 			'LOC_CVS_MINOR_CIV_CONSULAR_TRAIT_DESCRIPTION'),
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'LOC_CVS_MINOR_CIV_ENTERTAINMENT_TRAIT_NAME', 	'LOC_CVS_MINOR_CIV_ENTERTAINMENT_TRAIT_DESCRIPTION'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'LOC_CVS_MINOR_CIV_MARITIME_TRAIT_NAME', 			'LOC_CVS_MINOR_CIV_MARITIME_TRAIT_DESCRIPTION');

INSERT INTO TraitModifiers 
				(TraitType, 													ModifierId)
VALUES	--AGRICULTURAL
				('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'CVS_MINOR_CIV_AGRICULTURAL_AQUEDUCT_PRODUCTION'),
				('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'CVS_MINOR_CIV_AGRICULTURAL_NEIGHBORHOOD_PRODUCTION'),
				('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'CVS_MINOR_CIV_AGRICULTURAL_SEND_TRADE_ROUTE_BONUS'),
				('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'CVS_MINOR_CIV_AGRICULTURAL_SMALL_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'CVS_MINOR_CIV_AGRICULTURAL_MEDIUM_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_AGRICULTURAL_TRAIT', 	'CVS_MINOR_CIV_AGRICULTURAL_LARGE_INFLUENCE_BONUS'),
				
				--CONSULAR
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'CVS_MINOR_CIV_CONSULAR_CAMPUS_PRODUCTION'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'CVS_MINOR_CIV_CONSULAR_THEATER_PRODUCTION'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_CULTURE_BONUS'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_SCIENCE_BONUS'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'CVS_MINOR_CIV_CONSULAR_SMALL_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'CVS_MINOR_CIV_CONSULAR_MEDIUM_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_CONSULAR_TRAIT', 			'CVS_MINOR_CIV_CONSULAR_LARGE_INFLUENCE_BONUS'),
				
				--ENTERTAINMENT
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'CVS_MINOR_CIV_ENTERTAINMENT_ENTERTAINMENT_COMPLEX_PRODUCTION'),
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'CVS_MINOR_CIV_ENTERTAINMENT_WATER_PARK_PRODUCTION'),
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'CVS_MINOR_CIV_ENTERTAINMENT_SEND_TRADE_ROUTE_BONUS'),
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'CVS_MINOR_CIV_ENTERTAINMENT_SMALL_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'CVS_MINOR_CIV_ENTERTAINMENT_MEDIUM_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_ENTERTAINMENT_TRAIT', 	'CVS_MINOR_CIV_ENTERTAINMENT_LARGE_INFLUENCE_BONUS'),
				
				--MARITIME
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'CVS_MINOR_CIV_MARITIME_HARBOR_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'CVS_MINOR_CIV_MARITIME_SEND_TRADE_ROUTE_BONUS'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'CVS_MINOR_CIV_MARITIME_SMALL_INFLUENCE_BONUS_FOOD'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'CVS_MINOR_CIV_MARITIME_SMALL_INFLUENCE_BONUS_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'CVS_MINOR_CIV_MARITIME_MEDIUM_INFLUENCE_BONUS_FOOD'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'CVS_MINOR_CIV_MARITIME_MEDIUM_INFLUENCE_BONUS_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_TRAIT', 			'CVS_MINOR_CIV_MARITIME_LARGE_INFLUENCE_BONUS_FOOD'),
				('CVS_MINOR_CIV_MARITIME_TRAIT',			'CVS_MINOR_CIV_MARITIME_LARGE_INFLUENCE_BONUS_PRODUCTION');

--=========
--MODIFIERS
--=========
INSERT INTO DynamicModifiers
				(ModifierType,																														CollectionType,										EffectType)
VALUES	('CVS_MODIFIER_CONSULAR_CAPITAL_ADJUST_IDENTITY_PER_TURN',									'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_CITY_IDENTITY_PER_TURN'),
				('CVS_MODIFIER_CONSULAR_CAPITAL_ADJUST_IDENTITY_PER_CITIZEN',								'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_CITY_IDENTITY_PER_CITIZEN'),
				('CVS_MODIFIER_ENTERTAINMENT_CAPITAL_ADJUST_AMENITIES_FROM_CITY_STATES',			'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_CITY_AMENITIES_FROM_CITY_STATES'),
				('CVS_MODIFIER_ENTERTAINMENT_PLAYER_CITIES_ADJUST_AMENITIES_FROM_CITY_STATES',	'COLLECTION_PLAYER_CITIES',				'EFFECT_ADJUST_CITY_AMENITIES_FROM_CITY_STATES');


INSERT INTO Modifiers 
				(ModifierId, 																											ModifierType, 																						OwnerRequirementSetId, 	SubjectRequirementSetId)	
VALUES	--AGRICULTURAL
				('CVS_MINOR_CIV_AGRICULTURAL_AQUEDUCT_PRODUCTION', 								'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 				NULL, 								NULL),
				('CVS_MINOR_CIV_AGRICULTURAL_NEIGHBORHOOD_PRODUCTION', 						'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 				NULL, 								NULL),
				('CVS_MINOR_CIV_AGRICULTURAL_SEND_TRADE_ROUTE_BONUS',							'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS', NULL, 								NULL),
				('CVS_MINOR_CIV_AGRICULTURAL_SMALL_INFLUENCE_BONUS', 								'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_SMALL_INFLUENCE'),
				('CVS_MINOR_CIV_AGRICULTURAL_MEDIUM_INFLUENCE_BONUS', 							'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_MEDIUM_INFLUENCE'),
				('CVS_MINOR_CIV_AGRICULTURAL_LARGE_INFLUENCE_BONUS', 								'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_LARGE_INFLUENCE'),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_CAPITAL', 										'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE', 		NULL, 								NULL),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_GRANARY', 									'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 			NULL, 								NULL),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_AQUEDUCT_DISTRICT', 					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 						NULL, 								'CVS_AGRICULTURAL_CITYSTATE_DISTRICT_IS_AQUEDUCT_REQUIREMENTSET'),
								
				--CONSULAR
				('CVS_MINOR_CIV_CONSULAR_CAMPUS_PRODUCTION', 											'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 				NULL, 								NULL),
				('CVS_MINOR_CIV_CONSULAR_THEATER_PRODUCTION', 										'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 				NULL, 								NULL),
				('CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_CULTURE_BONUS', 					'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS', NULL, 								NULL),
				('CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_SCIENCE_BONUS', 					'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS', NULL, 								NULL),
				('CVS_MINOR_CIV_CONSULAR_SMALL_INFLUENCE_BONUS', 									'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_SMALL_INFLUENCE'),
				('CVS_MINOR_CIV_CONSULAR_MEDIUM_INFLUENCE_BONUS',									'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_MEDIUM_INFLUENCE'),
				('CVS_MINOR_CIV_CONSULAR_LARGE_INFLUENCE_BONUS', 									'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_LARGE_INFLUENCE'),
				('CVS_MINOR_CIV_CONSULAR_YIELD_FOR_CAPITAL', 											'CVS_MODIFIER_CONSULAR_CAPITAL_ADJUST_IDENTITY_PER_CITIZEN', NULL, 								NULL),
				('CVS_MINOR_CIV_CONSULAR_YIELD_FOR_CITY', 													'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN', 					NULL, 								NULL),
								
				--ENTERTAINMENT
				('CVS_MINOR_CIV_ENTERTAINMENT_ENTERTAINMENT_COMPLEX_PRODUCTION', 		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 				NULL, 								NULL),
				('CVS_MINOR_CIV_ENTERTAINMENT_WATER_PARK_PRODUCTION', 							'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 				NULL, 								NULL),
				('CVS_MINOR_CIV_ENTERTAINMENT_SEND_TRADE_ROUTE_BONUS', 						'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS', NULL, 								NULL),
				('CVS_MINOR_CIV_ENTERTAINMENT_SMALL_INFLUENCE_BONUS', 							'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_SMALL_INFLUENCE'),
				('CVS_MINOR_CIV_ENTERTAINMENT_MEDIUM_INFLUENCE_BONUS', 							'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_MEDIUM_INFLUENCE'),
				('CVS_MINOR_CIV_ENTERTAINMENT_LARGE_INFLUENCE_BONUS', 							'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_LARGE_INFLUENCE'),
				('CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_CAPITAL', 									'CVS_MODIFIER_ENTERTAINMENT_CAPITAL_ADJUST_AMENITIES_FROM_CITY_STATES', 					NULL, 	NULL),
				('CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_TIER1_ENTERTAINMENT', 				'CVS_MODIFIER_ENTERTAINMENT_PLAYER_CITIES_ADJUST_AMENITIES_FROM_CITY_STATES', 			NULL, 	'CVS_ENTERTAINMENT_CITYSTATE_CITY_HAS_ARENA'),
				('CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_TIER2_ENTERTAINMENT', 				'CVS_MODIFIER_ENTERTAINMENT_PLAYER_CITIES_ADJUST_AMENITIES_FROM_CITY_STATES', 			NULL, 	'CVS_ENTERTAINMENT_CITYSTATE_CITY_HAS_ZOO'),
								
				--MARITIME
				('CVS_MINOR_CIV_MARITIME_HARBOR_PRODUCTION', 											'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 				NULL, 								NULL),
				('CVS_MINOR_CIV_MARITIME_SEND_TRADE_ROUTE_BONUS', 									'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS', NULL, 								NULL),
				('CVS_MINOR_CIV_MARITIME_SMALL_INFLUENCE_BONUS_FOOD', 							'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_SMALL_INFLUENCE'),
				('CVS_MINOR_CIV_MARITIME_SMALL_INFLUENCE_BONUS_PRODUCTION',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_SMALL_INFLUENCE'),
				('CVS_MINOR_CIV_MARITIME_MEDIUM_INFLUENCE_BONUS_FOOD', 							'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_MEDIUM_INFLUENCE'),
				('CVS_MINOR_CIV_MARITIME_MEDIUM_INFLUENCE_BONUS_PRODUCTION', 				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_MEDIUM_INFLUENCE'),
				('CVS_MINOR_CIV_MARITIME_LARGE_INFLUENCE_BONUS_FOOD', 							'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_LARGE_INFLUENCE'),
				('CVS_MINOR_CIV_MARITIME_LARGE_INFLUENCE_BONUS_PRODUCTION', 				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 										NULL, 								'PLAYER_HAS_LARGE_INFLUENCE'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_FOOD', 									'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE', 		NULL, 								NULL),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_PRODUCTION', 						'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE', 		NULL, 								NULL),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_FOOD', 								'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 			NULL, 								NULL),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_PRODUCTION', 					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 			NULL, 								NULL),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_FOOD', 									'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 			NULL, 								NULL),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_PRODUCTION', 						'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 			NULL, 								NULL);

INSERT INTO ModifierArguments 
				(ModifierId, 																											Name, 				Value)
VALUES	--AGRICULTURAL
				('CVS_MINOR_CIV_AGRICULTURAL_AQUEDUCT_PRODUCTION', 								'DistrictType', 	'DISTRICT_AQUEDUCT'),
				('CVS_MINOR_CIV_AGRICULTURAL_AQUEDUCT_PRODUCTION', 								'Amount', 			500),
				('CVS_MINOR_CIV_AGRICULTURAL_NEIGHBORHOOD_PRODUCTION', 						'DistrictType', 	'DISTRICT_NEIGHBORHOOD'),
				('CVS_MINOR_CIV_AGRICULTURAL_NEIGHBORHOOD_PRODUCTION', 						'Amount', 			500),
				('CVS_MINOR_CIV_AGRICULTURAL_SEND_TRADE_ROUTE_BONUS', 							'YieldType', 		'YIELD_FOOD'),
				('CVS_MINOR_CIV_AGRICULTURAL_SEND_TRADE_ROUTE_BONUS', 							'Amount', 			1),
				
				('CVS_MINOR_CIV_AGRICULTURAL_SMALL_INFLUENCE_BONUS', 								'ModifierId', 		'CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_CAPITAL'),
				('CVS_MINOR_CIV_AGRICULTURAL_MEDIUM_INFLUENCE_BONUS', 							'ModifierId', 		'CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_GRANARY'),
				('CVS_MINOR_CIV_AGRICULTURAL_LARGE_INFLUENCE_BONUS', 								'ModifierId', 		'CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_AQUEDUCT_DISTRICT'),
				
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_CAPITAL', 										'YieldType', 		'YIELD_FOOD'),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_CAPITAL', 										'Amount', 			2),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_GRANARY', 									'BuildingType', 	'BUILDING_GRANARY'),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_GRANARY', 									'YieldType', 		'YIELD_FOOD'),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_GRANARY', 									'Amount', 			2),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_AQUEDUCT_DISTRICT', 					'YieldType', 		'YIELD_FOOD'),
				('CVS_MINOR_CIV_AGRICULTURAL_YIELD_FOR_AQUEDUCT_DISTRICT', 					'Amount', 			2),
				
				--CONSULAR
				('CVS_MINOR_CIV_CONSULAR_CAMPUS_PRODUCTION', 											'DistrictType', 	'DISTRICT_CAMPUS'),
				('CVS_MINOR_CIV_CONSULAR_CAMPUS_PRODUCTION', 											'Amount', 			500),
				('CVS_MINOR_CIV_CONSULAR_THEATER_PRODUCTION', 										'DistrictType', 	'DISTRICT_THEATER'),
				('CVS_MINOR_CIV_CONSULAR_THEATER_PRODUCTION', 										'Amount', 			500),
				('CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_CULTURE_BONUS', 					'YieldType', 		'YIELD_CULTURE'),
				('CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_CULTURE_BONUS', 					'Amount', 			1),
				('CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_SCIENCE_BONUS', 					'YieldType', 		'YIELD_SCIENCE'),
				('CVS_MINOR_CIV_CONSULAR_SEND_TRADE_ROUTE_SCIENCE_BONUS', 					'Amount', 			1),
				
				('CVS_MINOR_CIV_CONSULAR_SMALL_INFLUENCE_BONUS', 									'ModifierId', 		'CVS_MINOR_CIV_CONSULAR_YIELD_FOR_CAPITAL'),
				('CVS_MINOR_CIV_CONSULAR_MEDIUM_INFLUENCE_BONUS', 									'ModifierId', 		'CVS_MINOR_CIV_CONSULAR_YIELD_FOR_CITY'),
				('CVS_MINOR_CIV_CONSULAR_LARGE_INFLUENCE_BONUS', 									'ModifierId', 		'CVS_MINOR_CIV_CONSULAR_YIELD_FOR_CITY'),
				
				('CVS_MINOR_CIV_CONSULAR_YIELD_FOR_CAPITAL', 											'Amount', 			0.5),
				('CVS_MINOR_CIV_CONSULAR_YIELD_FOR_CITY', 													'Amount', 			2),
				
				--ENTERTAINMENT
				('CVS_MINOR_CIV_ENTERTAINMENT_ENTERTAINMENT_COMPLEX_PRODUCTION', 		'DistrictType', 	'DISTRICT_ENTERTAINMENT_COMPLEX'),
				('CVS_MINOR_CIV_ENTERTAINMENT_ENTERTAINMENT_COMPLEX_PRODUCTION', 		'Amount', 			500),
				('CVS_MINOR_CIV_ENTERTAINMENT_WATER_PARK_PRODUCTION', 							'DistrictType', 	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX'),
				('CVS_MINOR_CIV_ENTERTAINMENT_WATER_PARK_PRODUCTION', 							'Amount', 			500),
				('CVS_MINOR_CIV_ENTERTAINMENT_SEND_TRADE_ROUTE_BONUS', 						'YieldType', 		'YIELD_GOLD'),
				('CVS_MINOR_CIV_ENTERTAINMENT_SEND_TRADE_ROUTE_BONUS', 						'Amount', 			2),
				
				('CVS_MINOR_CIV_ENTERTAINMENT_SMALL_INFLUENCE_BONUS', 							'ModifierId', 		'CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_CAPITAL'),
				('CVS_MINOR_CIV_ENTERTAINMENT_MEDIUM_INFLUENCE_BONUS', 							'ModifierId', 		'CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_TIER1_ENTERTAINMENT'),
				('CVS_MINOR_CIV_ENTERTAINMENT_LARGE_INFLUENCE_BONUS', 							'ModifierId', 		'CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_TIER2_ENTERTAINMENT'),				
				
				('CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_CAPITAL', 									'Amount', 			1),
				('CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_TIER1_ENTERTAINMENT', 				'Amount', 			1),
				('CVS_MINOR_CIV_ENTERTAINMENT_YIELD_FOR_TIER2_ENTERTAINMENT', 				'Amount', 			1),
				
				--MARITIME
				('CVS_MINOR_CIV_MARITIME_HARBOR_PRODUCTION', 											'DistrictType', 	'DISTRICT_HARBOR'),
				('CVS_MINOR_CIV_MARITIME_HARBOR_PRODUCTION', 											'Amount', 			500),
				('CVS_MINOR_CIV_MARITIME_SEND_TRADE_ROUTE_BONUS', 									'YieldType', 		'YIELD_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_SEND_TRADE_ROUTE_BONUS', 									'Amount', 			1),
				
				('CVS_MINOR_CIV_MARITIME_SMALL_INFLUENCE_BONUS_FOOD', 							'ModifierId', 		'CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_FOOD'),
				('CVS_MINOR_CIV_MARITIME_SMALL_INFLUENCE_BONUS_PRODUCTION', 				'ModifierId', 		'CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_MEDIUM_INFLUENCE_BONUS_FOOD', 							'ModifierId', 		'CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_FOOD'),
				('CVS_MINOR_CIV_MARITIME_MEDIUM_INFLUENCE_BONUS_PRODUCTION', 				'ModifierId', 		'CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_LARGE_INFLUENCE_BONUS_FOOD', 							'ModifierId', 		'CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_FOOD'),
				('CVS_MINOR_CIV_MARITIME_LARGE_INFLUENCE_BONUS_PRODUCTION', 				'ModifierId', 		'CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_PRODUCTION'),
				
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_FOOD', 									'YieldType', 		'YIELD_FOOD'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_FOOD', 									'Amount', 			1),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_PRODUCTION', 						'YieldType', 		'YIELD_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_CAPITAL_PRODUCTION', 						'Amount', 			1),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_FOOD', 								'BuildingType', 	'BUILDING_LIGHTHOUSE'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_FOOD', 								'YieldType', 		'YIELD_FOOD'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_FOOD', 								'Amount', 			1),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_PRODUCTION', 					'BuildingType', 	'BUILDING_LIGHTHOUSE'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_PRODUCTION', 					'YieldType', 		'YIELD_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_LIGHTHOUSE_PRODUCTION', 					'Amount', 			1),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_FOOD', 									'BuildingType', 	'BUILDING_SHIPYARD'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_FOOD', 									'YieldType', 		'YIELD_FOOD'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_FOOD', 									'Amount', 			1),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_PRODUCTION', 						'BuildingType', 	'BUILDING_SHIPYARD'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_PRODUCTION', 						'YieldType', 		'YIELD_PRODUCTION'),
				('CVS_MINOR_CIV_MARITIME_YIELD_FOR_SHIPYARD_PRODUCTION', 						'Amount', 			1);

--===============
--MODIFIERSTRINGS
--===============
INSERT INTO ModifierStrings 
				(ModifierId, 																					Context, 	Text)
VALUES	('CVS_MINOR_CIV_AGRICULTURAL_SMALL_INFLUENCE_BONUS', 		'Preview', 	'LOC_CVS_MINOR_CIV_AGRICULTURAL_TRAIT_SMALL_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_AGRICULTURAL_MEDIUM_INFLUENCE_BONUS', 	'Preview', 	'LOC_CVS_MINOR_CIV_AGRICULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_AGRICULTURAL_LARGE_INFLUENCE_BONUS', 		'Preview', 	'LOC_CVS_MINOR_CIV_AGRICULTURAL_TRAIT_LARGE_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_CONSULAR_SMALL_INFLUENCE_BONUS', 			'Preview', 	'LOC_CVS_MINOR_CIV_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_CONSULAR_MEDIUM_INFLUENCE_BONUS', 			'Preview', 	'LOC_CVS_MINOR_CIV_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_CONSULAR_LARGE_INFLUENCE_BONUS', 			'Preview', 	'LOC_CVS_MINOR_CIV_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_ENTERTAINMENT_SMALL_INFLUENCE_BONUS', 	'Preview', 	'LOC_CVS_MINOR_CIV_ENTERTAINMENT_TRAIT_SMALL_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_ENTERTAINMENT_MEDIUM_INFLUENCE_BONUS', 	'Preview', 	'LOC_CVS_MINOR_CIV_ENTERTAINMENT_TRAIT_MEDIUM_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_ENTERTAINMENT_LARGE_INFLUENCE_BONUS', 	'Preview', 	'LOC_CVS_MINOR_CIV_ENTERTAINMENT_TRAIT_LARGE_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_MARITIME_SMALL_INFLUENCE_BONUS_FOOD', 	'Preview', 	'LOC_CVS_MINOR_CIV_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_MARITIME_MEDIUM_INFLUENCE_BONUS_FOOD',	'Preview', 	'LOC_CVS_MINOR_CIV_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS'),
				('CVS_MINOR_CIV_MARITIME_LARGE_INFLUENCE_BONUS_FOOD', 	'Preview', 	'LOC_CVS_MINOR_CIV_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS');

--============
--REQUIREMENTS
--============
INSERT INTO RequirementSets 
				(RequirementSetId, 																									RequirementSetType)
VALUES	('CVS_AGRICULTURAL_CITYSTATE_DISTRICT_IS_AQUEDUCT_REQUIREMENTSET', 		'REQUIREMENTSET_TEST_ANY'),
				('CVS_CONSULAR_CITYSTATE_CITY_HAS_GOVERNOR', 												'REQUIREMENTSET_TEST_ALL'),
				('CVS_ENTERTAINMENT_CITYSTATE_CITY_HAS_ARENA', 												'REQUIREMENTSET_TEST_ANY'),
				('CVS_ENTERTAINMENT_CITYSTATE_CITY_HAS_ZOO', 												'REQUIREMENTSET_TEST_ANY');
		
INSERT INTO RequirementSetRequirements 
				(RequirementSetId, 																									RequirementId)
VALUES	('CVS_AGRICULTURAL_CITYSTATE_DISTRICT_IS_AQUEDUCT_REQUIREMENTSET', 		'CVS_AGRICULTURAL_CITYSTATE_REQUIRES_AQUEDUCT'),
				('CVS_AGRICULTURAL_CITYSTATE_DISTRICT_IS_AQUEDUCT_REQUIREMENTSET', 		'CVS_AGRICULTURAL_CITYSTATE_REQUIRES_BATH'),
				('CVS_CONSULAR_CITYSTATE_CITY_HAS_GOVERNOR', 												'CVS_CONSULAR_CITYSTATE_REQUIRES_CITY_HAS_GOVERNOR'),
				('CVS_ENTERTAINMENT_CITYSTATE_CITY_HAS_ARENA', 												'CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_ARENA'),
				('CVS_ENTERTAINMENT_CITYSTATE_CITY_HAS_ARENA', 												'CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_TLACHTLI'),
				('CVS_ENTERTAINMENT_CITYSTATE_CITY_HAS_ZOO', 												'CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_ZOO');
		
INSERT INTO Requirements 
				(RequirementId, 																							RequirementType)
VALUES	('CVS_AGRICULTURAL_CITYSTATE_REQUIRES_AQUEDUCT', 							'REQUIREMENT_DISTRICT_TYPE_MATCHES'),
				('CVS_AGRICULTURAL_CITYSTATE_REQUIRES_BATH', 									'REQUIREMENT_DISTRICT_TYPE_MATCHES'),
				('CVS_CONSULAR_CITYSTATE_REQUIRES_CITY_HAS_GOVERNOR', 					'REQUIREMENT_CITY_HAS_GOVERNOR'),
				('CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_ARENA', 				'REQUIREMENT_CITY_HAS_BUILDING'),
				('CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_TLACHTLI', 			'REQUIREMENT_CITY_HAS_BUILDING'),
				('CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_ZOO', 					'REQUIREMENT_CITY_HAS_BUILDING');

INSERT INTO RequirementArguments 
				(RequirementId, 																							Name, 						Value)
VALUES	('CVS_AGRICULTURAL_CITYSTATE_REQUIRES_AQUEDUCT', 							'DistrictType', 			'DISTRICT_AQUEDUCT'),
				('CVS_AGRICULTURAL_CITYSTATE_REQUIRES_BATH', 									'DistrictType', 			'DISTRICT_BATH'),
				('CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_ARENA', 				'BuildingType', 			'BUILDING_ARENA'),
				('CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_TLACHTLI', 			'BuildingType', 			'BUILDING_TLACHTLI'),
				('CVS_ENTERTAINMENT_CITYSTATE_REQUIRES_CITY_HAS_ZOO', 					'BuildingType', 			'BUILDING_ZOO');

--============
--CIVILOPEDIA
--============
INSERT INTO CivilopediaPageGroups 
				(SectionID, 		PageGroupId, 				Name, 																								VisibleIfEmpty, 	SortIndex)
VALUES	('CITYSTATES', 	'CVS_AGRICULTURAL', 	'LOC_PEDIA_CITYSTATES_PAGEGROUP_CVS_AGRICULTURAL_NAME', 	0, 					10),
				('CITYSTATES', 	'CVS_CONSULAR', 		'LOC_PEDIA_CITYSTATES_PAGEGROUP_CVS_CONSULAR_NAME', 		0, 					10),
				('CITYSTATES', 	'CVS_ENTERTAINMENT',	'LOC_PEDIA_CITYSTATES_PAGEGROUP_CVS_ENTERTAINMENT_NAME',	0, 					10),
				('CITYSTATES', 	'CVS_MARITIME', 			'LOC_PEDIA_CITYSTATES_PAGEGROUP_CVS_MARITIME_NAME', 			0, 					10);