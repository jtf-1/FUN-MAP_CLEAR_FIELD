env.info("Auftrag Loading", false)

-- Create a new ARMYGROUP object.
local bluearmygroup=ARMYGROUP:New("auftrag_blue_1")
bluearmygroup:SetDefaultFormation(ENUMS.Formation.Vehicle.OnRoad)

-- We set the weapon min/max ranges in nautical miles (NM). Target needs to be not closer than 2 km.
bluearmygroup:AddWeaponRange(0,UTILS.KiloMetersToNM(1))

local bluemission = AUFTRAG:NewARMORATTACK(GROUP:FindByName("auftrag_red_1"),UTILS.KmphToKnots(8),"Vee")

-- Give mission to commander.
bluearmygroup:AddMission(bluemission)


local redarmygroup=ARMYGROUP:New("auftrag_red_1")
redarmygroup:SetDefaultFormation(ENUMS.Formation.Vehicle.OnRoad)
redarmygroup:AddWeaponRange(0,UTILS.KiloMetersToNM(1))
local redmission = AUFTRAG:NewARMORATTACK(GROUP:FindByName("auftrag_blue_1"),UTILS.KmphToKnots(8),"Vee")
redarmygroup:AddMission(redmission)
  
env.info("Auftrag Complete", false)

