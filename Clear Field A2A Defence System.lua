--//////////////////////////////////////////////
--Name: Operation Clear Field A2A Defence System
--Author: Surrexen    ༼ つ ◕_◕ ༽つ    (づ｡◕‿◕｡)づ 
--//////////////////////////////////////////////

--////BLUE AIR DEFENCE

-- Disengage Radius  - The radius to disengage any target when the distance of the defender to the home base is larger than the specified meters. The default Disengage Radius is 100km
-- Engage Radius     - For example, if 50000 or 50km is given as a value, then any friendly that is airborne within 50km from the detected target, will be considered to receive the command to engage that target area.

function SEF_BLUEDISPATCHERON()
	--BLUE AIR DISPATCHER
	BLUEDetectionSetGroup = SET_GROUP:New()
	BLUEDetectionSetGroup:FilterPrefixes( { "DF BLUE EWR", "BLUE SAM", "RT AWACS BLUE#" } ) 
	BLUEDetectionSetGroup:FilterStart()
	BLUEDetection = DETECTION_AREAS:New( BLUEDetectionSetGroup, 30000 )
	BLUEA2ADispatcher = AI_A2A_DISPATCHER:New( BLUEDetection )
	BLUEA2ADispatcher:SetTacticalDisplay( false )
	--BlueBorderZone = ZONE_POLYGON:New( "BLUE Border", GROUP:FindByName( "BLUE Border" ) )
	--BLUEA2ADispatcher:SetBorderZone( BlueBorderZone )
		
	BLUEA2ADispatcher:SetDefaultFuelThreshold( 0.15 )
	--BLUEA2ADispatcher:SetDefaultDamageThreshold( 0.60 )
	BLUEA2ADispatcher:SetDefaultCapLimit( 1 )
	BLUEA2ADispatcher:SetDefaultTakeoffInAirAltitude(3000)
	
	BLUEA2ADispatcher:SetEngageRadius( 60000 )
	BLUEA2ADispatcher:SetDisengageRadius( 80000 )
	
	--trigger.action.outText("Blue Air Dispatcher Is Now Enabled", 15)	
end	

function SEF_KutaisiCAP()
		
	if ( GameMode == 0 ) then
		--////KUTAISI CAP F-16's MULTIPLAYER SETTINGS
		BLUEA2ADispatcher:SetSquadron( "Rogue", AIRBASE.Caucasus.Kutaisi, { "SQ BLUE F-16C" } )
		BLUEA2ADispatcher:SetSquadronOverhead( "Rogue", 1 )
		BLUEA2ADispatcher:SetSquadronGrouping( "Rogue", 2 )
		BLUEA2ADispatcher:SetSquadronTakeoffInAir( "Rogue" )
		BLUEA2ADispatcher:SetSquadronLandingAtRunway( "Rogue" )
		
		CAPZoneBlue1 = ZONE:New( "CAP Zone BLUE 1")
		BLUEA2ADispatcher:SetSquadronCap( "Rogue", CAPZoneBlue1, 4000, 11000, 743, 867, 800, 1200, "BARO" )
		BLUEA2ADispatcher:SetSquadronCapInterval( "Rogue", 1, 150, 600, 1 )
	else
		--////KUTAISI CAP F-16's SINGLEPLAYER SETTINGS
		BLUEA2ADispatcher:SetSquadron( "Rogue", AIRBASE.Caucasus.Kutaisi, { "SQ BLUE F-16C" } )
		BLUEA2ADispatcher:SetSquadronOverhead( "Rogue", 1 )
		BLUEA2ADispatcher:SetSquadronGrouping( "Rogue", 2 )
		BLUEA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Rogue" )
		BLUEA2ADispatcher:SetSquadronLandingAtRunway( "Rogue" )
		
		CAPZoneBlue1 = ZONE:New( "CAP Zone BLUE 1")
		BLUEA2ADispatcher:SetSquadronCap( "Rogue", CAPZoneBlue1, 4000, 11000, 743, 867, 800, 1200, "BARO" )
		BLUEA2ADispatcher:SetSquadronCapInterval( "Rogue", 1, 150, 600, 1 )
	end
	
	trigger.action.outText("Kutaisi Vipers Are Now Enabled", 15)
	missionCommands.removeItemForCoalition(coalition.side.BLUE, {[1] = "Clear Field Options", [2] = "Clear Field CAP Options", [3] = "Enable Kutaisi Vipers"})
end	

function SEF_FleetTomcats()	
		
	if ( GameMode == 0 ) then
		--////CARRIER GROUP TOMCATS MULTIPLAYER SETTINGS
		BLUEA2ADispatcher:SetSquadron( "Tomcat", "CVN-74 John C. Stennis", { "SQ BLUE F-14B" } )
		BLUEA2ADispatcher:SetSquadronOverhead( "Tomcat", 1 )
		BLUEA2ADispatcher:SetSquadronGrouping( "Tomcat", 2 )
		BLUEA2ADispatcher:SetSquadronTakeoffInAir( "Tomcat" )
		BLUEA2ADispatcher:SetSquadronLandingAtRunway( "Tomcat" )
			
		CAPZoneBlueCarrier = ZONE_GROUP:New("CAP Zone Carrier", GROUP:FindByName( "CVN-74 John C. Stennis" ), 20000)
		BLUEA2ADispatcher:SetSquadronCap( "Tomcat", CAPZoneBlueCarrier, 3000, 11000, 768, 905, 800, 1200, "BARO" )
		BLUEA2ADispatcher:SetSquadronCapInterval( "Tomcat", 1, 150, 600, 1 )
	else
		--////CARRIER GROUP TOMCATS SINGLEPLAYER SETTINGS
		BLUEA2ADispatcher:SetSquadron( "Tomcat", "CVN-74 John C. Stennis", { "SQ BLUE F-14B" } )
		BLUEA2ADispatcher:SetSquadronOverhead( "Tomcat", 1 )
		BLUEA2ADispatcher:SetSquadronGrouping( "Tomcat", 2 )
		BLUEA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Tomcat" )		
		BLUEA2ADispatcher:SetSquadronLandingAtRunway( "Tomcat" )
			
		CAPZoneBlueCarrier = ZONE_GROUP:New("CAP Zone Carrier", GROUP:FindByName( "CVN-74 John C. Stennis" ), 20000)
		BLUEA2ADispatcher:SetSquadronCap( "Tomcat", CAPZoneBlueCarrier, 3000, 11000, 768, 905, 800, 1200, "BARO" )
		BLUEA2ADispatcher:SetSquadronCapInterval( "Tomcat", 1, 150, 600, 1 )	
	end
	
	trigger.action.outText("Fleet Defence Tomcats Are Now Enabled", 15)
	missionCommands.removeItemForCoalition(coalition.side.BLUE, {[1] = "Clear Field Options", [2] = "Clear Field CAP Options", [3] = "Enable Fleet Tomcats"})
	missionCommands.removeItemForCoalition(coalition.side.BLUE, {[1] = "Clear Field Options", [2] = "Clear Field CAP Options", [3] = "Enable Fleet Hornets"})	
end

function SEF_FleetHornets()
		
	if ( GameMode == 0 ) then
		--////CARRIER GROUP HORNETS MULTIPLAYER SETTINGS
		BLUEA2ADispatcher:SetSquadron( "Hornet", "CVN-74 John C. Stennis", { "SQ BLUE F/A-18C" } )
		BLUEA2ADispatcher:SetSquadronOverhead( "Hornet", 1 )
		BLUEA2ADispatcher:SetSquadronGrouping( "Hornet", 2 )
		BLUEA2ADispatcher:SetSquadronTakeoffInAir( "Hornet" )
		BLUEA2ADispatcher:SetSquadronLandingAtRunway( "Hornet" )
		
		CAPZoneBlueCarrier = ZONE_GROUP:New("CAP Zone Carrier", GROUP:FindByName( "CVN-74 John C. Stennis" ), 20000)
		BLUEA2ADispatcher:SetSquadronCap( "Hornet", CAPZoneBlueCarrier, 3000, 11000, 743, 867, 800, 1200, "BARO" )
		BLUEA2ADispatcher:SetSquadronCapInterval( "Hornet", 1, 150, 600, 1 )
	else
		--////CARRIER GROUP HORNETS SINGLEPLAYER SETTINGS
		BLUEA2ADispatcher:SetSquadron( "Hornet", "CVN-74 John C. Stennis", { "SQ BLUE F/A-18C" } )
		BLUEA2ADispatcher:SetSquadronOverhead( "Hornet", 1 )
		BLUEA2ADispatcher:SetSquadronGrouping( "Hornet", 2 )
		BLUEA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Hornet" )		
		BLUEA2ADispatcher:SetSquadronLandingAtRunway( "Hornet" )
		
		CAPZoneBlueCarrier = ZONE_GROUP:New("CAP Zone Carrier", GROUP:FindByName( "CVN-74 John C. Stennis" ), 20000)
		BLUEA2ADispatcher:SetSquadronCap( "Hornet", CAPZoneBlueCarrier, 3000, 11000, 743, 867, 800, 1200, "BARO" )
		BLUEA2ADispatcher:SetSquadronCapInterval( "Hornet", 1, 150, 600, 1 )	
	end
	
	trigger.action.outText("Fleet Defence Hornets Are Now Enabled", 15)
	missionCommands.removeItemForCoalition(coalition.side.BLUE, {[1] = "Clear Field Options", [2] = "Clear Field CAP Options", [3] = "Enable Fleet Tomcats"})
	missionCommands.removeItemForCoalition(coalition.side.BLUE, {[1] = "Clear Field Options", [2] = "Clear Field CAP Options", [3] = "Enable Fleet Hornets"})	
end

--////RED AIR DEFENCE
function SEF_REDDISPATCHERON()

	REDDetectionSetGroup = SET_GROUP:New()	
	--REDDetectionSetGroup:FilterPrefixes( { "DF RED EWR" } )
	REDDetectionSetGroup:FilterPrefixes( { "SQ RUS", "RT RED" } )	
	REDDetectionSetGroup:FilterActive()
	REDDetectionSetGroup:FilterStart()
	REDDetection = DETECTION_AREAS:New( REDDetectionSetGroup, 30000 )
	REDA2ADispatcher = AI_A2A_DISPATCHER:New( REDDetection )
	REDA2ADispatcher:SetTacticalDisplay( false )
	RedBorderZone = ZONE_POLYGON:New( "RED Border", GROUP:FindByName( "RED Border" ) )
	REDA2ADispatcher:SetBorderZone( RedBorderZone )

	REDA2ADispatcher:SetDefaultFuelThreshold( 0.15 )
	--REDA2ADispatcher:SetDefaultDamageThreshold( 0.60 )
	REDA2ADispatcher:SetDefaultCapLimit( 1 )
	REDA2ADispatcher:SetDefaultTakeoffInAirAltitude(500) --3000

	REDA2ADispatcher:SetEngageRadius( 200000 )
	REDA2ADispatcher:SetGciRadius( 200000 )
	REDA2ADispatcher:SetDisengageRadius( 260000 )
end

function SEF_REDSQUADRONSMULTIPLAYER()

	-- Setup the squadrons. The number is the amount of planes available.
	--////function AI_A2A_DISPATCHER:SetSquadron( SquadronName, AirbaseName, TemplatePrefixes, ResourceCount )

	-- ////Template Planes
	-- SQ RUS MiG-21Bis
	-- SQ RUS MiG-29A
	-- SQ RUS MiG-29S
	-- SQ RUS Su-27
	-- SQ RUS Su-30
	-- SQ RUS Su-33
	-- SQ RUS MiG-31
	-- SQ RUS MiG-25PD
	-- SQ RUS MiG-23MLD
	-- SQ RUS Su-33 Kuznetsov
	-- ////

	-- These are all airbases of Caucasus:
	-- 
	-- AIRBASE.Caucasus.Gelendzhik
	-- AIRBASE.Caucasus.Krasnodar_Pashkovsky
	-- AIRBASE.Caucasus.Sukhumi_Babushara
	-- AIRBASE.Caucasus.Gudauta
	-- AIRBASE.Caucasus.Batumi
	-- AIRBASE.Caucasus.Senaki_Kolkhi
	-- AIRBASE.Caucasus.Kobuleti
	-- AIRBASE.Caucasus.Kutaisi
	-- AIRBASE.Caucasus.Tbilisi_Lochini
	-- AIRBASE.Caucasus.Soganlug
	-- AIRBASE.Caucasus.Vaziani
	-- AIRBASE.Caucasus.Anapa_Vityazevo
	-- AIRBASE.Caucasus.Krasnodar_Center
	-- AIRBASE.Caucasus.Novorossiysk
	-- AIRBASE.Caucasus.Krymsk
	-- AIRBASE.Caucasus.Maykop_Khanskaya
	-- AIRBASE.Caucasus.Sochi_Adler
	-- AIRBASE.Caucasus.Mineralnye_Vody
	-- AIRBASE.Caucasus.Nalchik
	-- AIRBASE.Caucasus.Mozdok
	-- AIRBASE.Caucasus.Beslan
	-- CV 1143.5 Admiral Kuznetsov

	--////RED Squadron Planned Execution
	--
	-- ZONE 1 Gudauta 		- Alpha
	-- ZONE 2 Nalchik 		- Beta
	-- ZONE 3 Beslan  		- Gamma
	-- ZONE 4 Sochi   		- Delta
	-- ZONE 5 Kuznetsov 	- Theta
	-- GCI 			  		- Omicron

	-- ////CAP Squadrons
	-- Guaduta - Zone 1
	REDA2ADispatcher:SetSquadron( "Alpha", AIRBASE.Caucasus.Gudauta, { "SQ RUS MiG-29A", "SQ RUS MiG-29S", "SQ RUS MiG-21Bis", "SQ RUS MiG-23MLD" } )
	-- Nalchik - Zone 2
	REDA2ADispatcher:SetSquadron( "Beta", AIRBASE.Caucasus.Nalchik, { "SQ RUS Su-27", "SQ RUS MiG-21Bis", "SQ RUS MiG-25PD" } )
	-- Beslan - Zone 3
	REDA2ADispatcher:SetSquadron( "Gamma", AIRBASE.Caucasus.Beslan, { "SQ RUS Su-27", "SQ RUS Su-30", "SQ RUS MiG-29A", "SQ RUS MiG-29S", "SQ RUS MiG-21Bis", "SQ RUS MiG-23MLD", "SQ RUS MiG-25PD" } )
	-- Sochi - Zone 4
	REDA2ADispatcher:SetSquadron( "Delta", AIRBASE.Caucasus.Sochi_Adler, { "SQ RUS Su-27", "SQ RUS Su-30", "SQ RUS MiG-29A", "SQ RUS MiG-29S", "SQ RUS MiG-21Bis", "SQ RUS MiG-23MLD", "SQ RUS MiG-25PD" } )
	--Admiral Kuznetsov
	REDA2ADispatcher:SetSquadron( "Theta", "CV 1143.5 Admiral Kuznetsov", { "SQ RUS Su-33 Kuznetsov" } )
	-- ////GCI Squadrons
	-- Mozdok
	REDA2ADispatcher:SetSquadron( "Omicron", AIRBASE.Caucasus.Mozdok, { "SQ RUS MiG-31", "SQ RUS MiG-25PD", "SQ RUS MiG-21Bis" } )


	--////SQUADRON OVERHEAD (1.0-1.5)
	REDA2ADispatcher:SetSquadronOverhead( "Alpha", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Beta", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Gamma", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Delta", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Theta", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Omicron", 1.0)

	--////SQUADRON GROUPING
	REDA2ADispatcher:SetSquadronGrouping( "Alpha", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Beta", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Gamma", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Delta", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Theta", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Omicron", 2 )

	--////TAKEOFF	
	--REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Alpha" )
	--REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Beta" )
	--REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Gamma" )
	--REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Delta" )
	--REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Theta" )
	--REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Omicron" )
	
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Alpha" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Beta" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Gamma" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Delta" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Theta" )
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Omicron" )
	
	REDA2ADispatcher:SetSquadronTakeoffInAir( "Alpha" )
	REDA2ADispatcher:SetSquadronTakeoffInAir( "Beta" )
	REDA2ADispatcher:SetSquadronTakeoffInAir( "Gamma" )
	REDA2ADispatcher:SetSquadronTakeoffInAir( "Delta" )
	REDA2ADispatcher:SetSquadronTakeoffInAir( "Theta" )
	REDA2ADispatcher:SetSquadronTakeoffInAir( "Omicron" )

	--////LANDING
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Alpha" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Beta" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Gamma" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Delta" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Theta" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Omicron" )

	--function AI_A2A_DISPATCHER:SetSquadronCap( SquadronName, Zone, FloorAltitude, CeilingAltitude, PatrolMinSpeed, PatrolMaxSpeed, EngageMinSpeed, EngageMaxSpeed, AltType )
	--function AI_A2A_DISPATCHER:SetSquadronCapInterval( SquadronName, CapLimit, LowInterval, HighInterval, Probability )

	CAPZoneRed1 = ZONE:New( "CAP Zone RED 1")
	CAPZoneRed2 = ZONE:New( "CAP Zone RED 2")
	CAPZoneRed3 = ZONE:New( "CAP Zone RED 3")
	CAPZoneRed4 = ZONE:New( "CAP Zone RED 4" )
	--CAPZoneRed5 = ZONE:New( "CAP Zone RED Kuznetsov" )
	CAPZoneRedCarrier = ZONE_GROUP:New("CAP Zone Black Sea Fleet", GROUP:FindByName( "CV 1143.5 Admiral Kuznetsov" ), 75000)

	-- ZONE 1 Gudauta 		- Alpha
	-- ZONE 2 Nalchik 		- Beta
	-- ZONE 3 Beslan  		- Gamma
	-- ZONE 4 Sochi   		- Delta
	-- ZONE 5 Kuznetsov 	- Theta
	-- GCI 			  		- Omicron
	
	--Timing Originally 300/750

	--ZONE 1 / Alpha / Gudauta
	REDA2ADispatcher:SetSquadronCap( "Alpha", CAPZoneRed1, 1000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Alpha", 1, 450, 900, 1 )
	--ZONE 2 / Beta / Nalchik
	REDA2ADispatcher:SetSquadronCap( "Beta", CAPZoneRed2, 4000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Beta", 1, 450, 900, 1 )
	--ZONE 3 / Gamma / Beslan
	REDA2ADispatcher:SetSquadronCap( "Gamma", CAPZoneRed3, 4000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Gamma", 1, 450, 900, 1 )  
	--ZONE 4 / Delta / Sochi
	REDA2ADispatcher:SetSquadronCap( "Delta", CAPZoneRed4, 1000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Delta", 1, 450, 900, 1 )
	--ZONE 5 / Theta / Admiral Kuznetsov
	REDA2ADispatcher:SetSquadronCap( "Theta", CAPZoneRedCarrier, 1000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Theta", 1, 450, 900, 1 )
	-- GCI Squadron execution. //function AI_A2A_DISPATCHER:SetSquadronGci( SquadronName, EngageMinSpeed, EngageMaxSpeed )
	REDA2ADispatcher:SetSquadronGci( "Omicron", 900, 1200 )
end

function SEF_REDSQUADRONSSINGLEPLAYER()

	-- Setup the squadrons. The number is the amount of planes available.
	--////function AI_A2A_DISPATCHER:SetSquadron( SquadronName, AirbaseName, TemplatePrefixes, ResourceCount )

	-- ////Template Planes
	-- SQ RUS MiG-21Bis
	-- SQ RUS MiG-29A
	-- SQ RUS MiG-29S
	-- SQ RUS Su-27
	-- SQ RUS Su-30
	-- SQ RUS Su-33
	-- SQ RUS MiG-31
	-- SQ RUS MiG-25PD
	-- SQ RUS MiG-23MLD
	-- SQ RUS Su-33 Kuznetsov
	-- ////

	-- These are all airbases of Caucasus:
	-- 
	-- AIRBASE.Caucasus.Gelendzhik
	-- AIRBASE.Caucasus.Krasnodar_Pashkovsky
	-- AIRBASE.Caucasus.Sukhumi_Babushara
	-- AIRBASE.Caucasus.Gudauta
	-- AIRBASE.Caucasus.Batumi
	-- AIRBASE.Caucasus.Senaki_Kolkhi
	-- AIRBASE.Caucasus.Kobuleti
	-- AIRBASE.Caucasus.Kutaisi
	-- AIRBASE.Caucasus.Tbilisi_Lochini
	-- AIRBASE.Caucasus.Soganlug
	-- AIRBASE.Caucasus.Vaziani
	-- AIRBASE.Caucasus.Anapa_Vityazevo
	-- AIRBASE.Caucasus.Krasnodar_Center
	-- AIRBASE.Caucasus.Novorossiysk
	-- AIRBASE.Caucasus.Krymsk
	-- AIRBASE.Caucasus.Maykop_Khanskaya
	-- AIRBASE.Caucasus.Sochi_Adler
	-- AIRBASE.Caucasus.Mineralnye_Vody
	-- AIRBASE.Caucasus.Nalchik
	-- AIRBASE.Caucasus.Mozdok
	-- AIRBASE.Caucasus.Beslan
	-- CV 1143.5 Admiral Kuznetsov

	--////RED Squadron Planned Execution
	--
	-- ZONE 1 Gudauta 		- Alpha
	-- ZONE 2 Nalchik 		- Beta
	-- ZONE 3 Beslan  		- Gamma
	-- ZONE 4 Sochi   		- Delta
	-- ZONE 5 Kuznetsov 	- Theta
	-- GCI 			  		- Omicron

	-- ////CAP Squadrons
	-- Guaduta - Zone 1
	REDA2ADispatcher:SetSquadron( "Alpha", AIRBASE.Caucasus.Gudauta, { "SQ RUS MiG-29A", "SQ RUS MiG-29S", "SQ RUS MiG-21Bis", "SQ RUS MiG-23MLD" } )
	-- Nalchik - Zone 2
	REDA2ADispatcher:SetSquadron( "Beta", AIRBASE.Caucasus.Nalchik, { "SQ RUS Su-27", "SQ RUS MiG-21Bis", "SQ RUS MiG-25PD" } )
	-- Beslan - Zone 3
	REDA2ADispatcher:SetSquadron( "Gamma", AIRBASE.Caucasus.Beslan, { "SQ RUS Su-27", "SQ RUS Su-30", "SQ RUS MiG-29A", "SQ RUS MiG-29S", "SQ RUS MiG-21Bis", "SQ RUS MiG-23MLD", "SQ RUS MiG-25PD" } )
	-- Sochi - Zone 4
	REDA2ADispatcher:SetSquadron( "Delta", AIRBASE.Caucasus.Sochi_Adler, { "SQ RUS Su-27", "SQ RUS Su-30", "SQ RUS MiG-29A", "SQ RUS MiG-29S", "SQ RUS MiG-21Bis", "SQ RUS MiG-23MLD", "SQ RUS MiG-25PD" } )
	--Admiral Kuznetsov
	REDA2ADispatcher:SetSquadron( "Theta", "CV 1143.5 Admiral Kuznetsov", { "SQ RUS Su-33 Kuznetsov" } )
	-- ////GCI Squadrons
	-- Mozdok
	REDA2ADispatcher:SetSquadron( "Omicron", AIRBASE.Caucasus.Mozdok, { "SQ RUS MiG-31", "SQ RUS MiG-25PD", "SQ RUS MiG-21Bis" } )


	--////SQUADRON OVERHEAD (1.0-1.5)
	REDA2ADispatcher:SetSquadronOverhead( "Alpha", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Beta", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Gamma", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Delta", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Theta", 1.0)
	REDA2ADispatcher:SetSquadronOverhead( "Omicron", 1.0)

	--////SQUADRON GROUPING
	REDA2ADispatcher:SetSquadronGrouping( "Alpha", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Beta", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Gamma", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Delta", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Theta", 2 )
	REDA2ADispatcher:SetSquadronGrouping( "Omicron", 2 )

	--////TAKEOFF	
	REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Alpha" )
	REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Beta" )
	REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Gamma" )
	REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Delta" )
	REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Theta" )
	REDA2ADispatcher:SetSquadronTakeoffFromParkingHot( "Omicron" )
	
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Alpha" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Beta" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Gamma" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Delta" )
	--REDA2ADispatcher:SetSquadronTakeoffFromRunway( "Theta" )
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Omicron" )
		
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Alpha" )
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Beta" )
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Gamma" )
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Delta" )
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Theta" )
	--REDA2ADispatcher:SetSquadronTakeoffInAir( "Omicron" )
		
	--////LANDING
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Alpha" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Beta" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Gamma" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Delta" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Theta" )
	REDA2ADispatcher:SetSquadronLandingAtRunway( "Omicron" )

	--function AI_A2A_DISPATCHER:SetSquadronCap( SquadronName, Zone, FloorAltitude, CeilingAltitude, PatrolMinSpeed, PatrolMaxSpeed, EngageMinSpeed, EngageMaxSpeed, AltType )
	--function AI_A2A_DISPATCHER:SetSquadronCapInterval( SquadronName, CapLimit, LowInterval, HighInterval, Probability )

	CAPZoneRed1 = ZONE:New( "CAP Zone RED 1")
	CAPZoneRed2 = ZONE:New( "CAP Zone RED 2")
	CAPZoneRed3 = ZONE:New( "CAP Zone RED 3")
	CAPZoneRed4 = ZONE:New( "CAP Zone RED 4" )
	--CAPZoneRed5 = ZONE:New( "CAP Zone RED Kuznetsov" )
	CAPZoneRedCarrier = ZONE_GROUP:New("CAP Zone Black Sea Fleet", GROUP:FindByName( "CV 1143.5 Admiral Kuznetsov" ), 75000)

	-- ZONE 1 Gudauta 		- Alpha
	-- ZONE 2 Nalchik 		- Beta
	-- ZONE 3 Beslan  		- Gamma
	-- ZONE 4 Sochi   		- Delta
	-- ZONE 5 Kuznetsov 	- Theta
	-- GCI 			  		- Omicron

	--ZONE 1 / Alpha / Gudauta
	REDA2ADispatcher:SetSquadronCap( "Alpha", CAPZoneRed1, 1000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Alpha", 1, 300, 900, 1 )
	--ZONE 2 / Beta / Nalchik
	REDA2ADispatcher:SetSquadronCap( "Beta", CAPZoneRed2, 4000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Beta", 1, 300, 900, 1 )
	--ZONE 3 / Gamma / Beslan
	REDA2ADispatcher:SetSquadronCap( "Gamma", CAPZoneRed3, 4000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Gamma", 1, 300, 900, 1 )  
	--ZONE 4 / Delta / Sochi
	REDA2ADispatcher:SetSquadronCap( "Delta", CAPZoneRed4, 1000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Delta", 1, 300, 900, 1 )
	--ZONE 5 / Theta / Admiral Kuznetsov
	REDA2ADispatcher:SetSquadronCap( "Theta", CAPZoneRedCarrier, 1000, 11000, 750, 900, 800, 1200, "BARO" )
	REDA2ADispatcher:SetSquadronCapInterval( "Theta", 1, 300, 900, 1 )
	-- GCI Squadron execution. //function AI_A2A_DISPATCHER:SetSquadronGci( SquadronName, EngageMinSpeed, EngageMaxSpeed )
	REDA2ADispatcher:SetSquadronGci( "Omicron", 900, 1200 )
end

function SEF_CleanUpAirports()
	CleanUpAirports = CLEANUP_AIRBASE:New( { AIRBASE.Caucasus.Gudauta, 
											 AIRBASE.Caucasus.Nalchik, 
											 AIRBASE.Caucasus.Beslan,											  
											 AIRBASE.Caucasus.Sochi_Adler,											  
											 AIRBASE.Caucasus.Mozdok,
											 
											 AIRBASE.Caucasus.Kutaisi,
											 AIRBASE.Caucasus.Senaki_Kolkhi,
											 AIRBASE.Caucasus.Batumi											 
											 } )
end

function SEF_BLUEDEFENCENETWORK()
	--////ADD TO DEFENCE NETWORK
	BLUEDetectionSetGroup:AddGroupsByName( { "CVN-74 John C. Stennis", "Georgian Fleet" } )
	
	--////REMOVE FROM DEFENCE NETWORK
	--BLUEDetectionSetGroup:RemoveGroupsByName( { "RT AWACS BLUE" } )
	
	--trigger.action.outText("Allied Defence Network Consists Of "..BLUEDetectionSetGroup:Count().." Groups", 15)
end

function SEF_REDDEFENCENETWORK()

	--////CREATE MASTER LIST THEN LOOP THROUGH THE ALIVE UNITS AND ADD TO RED DEFENCE NETWORK
	REDDefenceNetworkGroup = SET_GROUP:New()
	REDDefenceNetworkGroup:FilterPrefixes( { "DF RED EWR", "RED SAM", "CV 1143.5 Admiral Kuznetsov", "Gudauta - Navy 1", "Ochamchira - Navy 1", 
										   "Sochi - Navy 1", "Sukhumi - Navy 1", "Kvemo-Roka - SAM 1", "Gori - SAM 1", "Gori - SAM 2", "Gudauta - SAM 1", 
										   "Ochamchira - SAM 1", "Sukhumi - SAM 1", "Sukhumi - SAM 2", "Tkvarcheli - SAM 1", "Tskhinvali - SAM 1", "Tskhinvali - SAM 2", 
										   "Zemo-Azhara - SAM 1", "Zugdidi - SAM 1", "Zugdidi - SAM 2" } )	
	REDDefenceNetworkGroup:FilterOnce()
	
	REDDefenceNetworkGroup:ForEachGroupAlive(
		function(RedDefenceGroupCheck)
			RedDefenceGroupName = RedDefenceGroupCheck:GetName()			
			REDDetectionSetGroup:AddGroupsByName( { RedDefenceGroupName } )			
		end
	)
	
	--trigger.action.outText("Russian Defence Network Consists Of "..REDDetectionSetGroup:Count().." Groups", 15)	
end

----------------------------------------------------------------------------------------------------------------------------------------------

	--////MAIN
	trigger.action.outSound('Background Chatter.ogg')	
		
	--////GET THE GAME MODE SETUP (FLAG 10000 IN MISSION EDITOR TRIGGERS, 0 FOR MULTIPLAYER, 1 FOR SINGLEPLAYER)
	GameMode = trigger.misc.getUserFlag(10000)	
	
	SEF_REDDISPATCHERON()
	if ( GameMode == 0 ) then
		SEF_REDSQUADRONSMULTIPLAYER()
	else
		SEF_REDSQUADRONSSINGLEPLAYER()
	end
	SEF_BLUEDISPATCHERON()
	
	--////Schedule These Functions To Run 2 seconds later and adjust defence networks per faction as necessary
	timer.scheduleFunction(SEF_BLUEDEFENCENETWORK, 53, timer.getTime() + 2)
	timer.scheduleFunction(SEF_REDDEFENCENETWORK, 53, timer.getTime() + 3)
	
	--SEF_CleanUpAirports()

----------------------------------------------------------------------------------------------------------------------------------------------
--////REFUELLING CAP
-- Setup the Refuelling for squadron "Alpha", at tanker (group) "TankerAlpha" when the fuel in the tank of the CAP defenders is less than 80%.
-- REDA2ADispatcher:SetSquadronFuelThreshold( "Alpha", 0.8 )
-- REDA2ADispatcher:SetSquadronTanker( "Alpha", "TankerAlpha" )

-- Or standard refuel fuel threshold
--REDA2ADispatcher:SetSquadronRefuelThreshold( "Alpha", 0.30 ) -- Go RTB when only 30% of fuel remaining in the tank.
--REDA2ADispatcher:SetSquadronRefuelThreshold( "Beta", 0.30 )
--REDA2ADispatcher:SetSquadronRefuelThreshold( "Gamma", 0.30 )
--REDA2ADispatcher:SetSquadronRefuelThreshold( "Delta", 0.30 )
--//Not sure about GCI fuel thresholds yet so not enabled
--REDA2ADispatcher:SetSquadronRefuelThreshold( "Omicron", 0.50 )
----------------------------------------------------------------------------------------------------------------------------------------------