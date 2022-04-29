env.info("Tankers Loading", false)

-------------------------------
-- Forrestal RECOVERY TANKER --
-------------------------------

local ArcoRoosevelt=RECOVERYTANKER:New(UNIT:FindByName("CV-59 Forrestal"), "Tanker_S3-B_Arco1")
ArcoRoosevelt:SetTakeoffAir()
ArcoRoosevelt:SetTACAN(109, "ARC")
ArcoRoosevelt:SetRadio(251.250, "AM")
ArcoRoosevelt:SetCallsign(2,1)
ArcoRoosevelt:Start()


-------------------------------
-- Lincoln RECOVERY TANKER --
-------------------------------

local ArcoRoosevelt=RECOVERYTANKER:New(UNIT:FindByName("CVN-72 Abraham Lincoln"), "Tanker_S3-B_Arco1")
ArcoRoosevelt:SetTakeoffAir()
ArcoRoosevelt:SetTACAN(102, "ARC")
ArcoRoosevelt:SetRadio(251.750, "AM")
ArcoRoosevelt:SetCallsign(2,2)
ArcoRoosevelt:Start()
  
env.info("Tankers Complete", false)

