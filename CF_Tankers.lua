env.info("Tankers Loading", false)
-----------------
-- AWACS SPAWN --
-----------------
SPAWN:New('blueEWR_AWACS_MAGIC'):InitLimit(1,99):SpawnScheduled(60,1):InitRepeatOnLanding()
--SPAWN:New('blueEWR_AWACS_DARKSTAR'):InitLimit(1,99):SpawnScheduled(60,1):InitRepeatOnLanding()

-------------------------------
-- Forrestal RECOVERY TANKER --
-------------------------------

local ArcoForrestal=RECOVERYTANKER:New(UNIT:FindByName("CV-59 Forrestal"), "Tanker_S3-B_Arco1")
ArcoForrestal:SetTakeoffAir()
ArcoForrestal:SetTACAN(109, "ARC")
ArcoForrestal:SetRadio(251.250, "AM")
ArcoForrestal:SetCallsign(2,1)
ArcoForrestal:SetSpeed(300)
ArcoForrestal:Start()


-------------------------------
-- Lincoln RECOVERY TANKER --
-------------------------------

local ArcoLincoln=RECOVERYTANKER:New(UNIT:FindByName("CVN-72 Abraham Lincoln"), "Tanker_S3-B_Arco1")
ArcoLincoln:SetTakeoffAir()
ArcoLincoln:SetTACAN(102, "ARC")
ArcoLincoln:SetRadio(251.750, "AM")
ArcoLincoln:SetCallsign(2,2)
ArcoLincoln:SetSpeed(300)
ArcoLincoln:Start()
  
env.info("Tankers Complete", false)

