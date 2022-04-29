env.info("RED IADS Loading", false)

-----------------
-- REDFOR IADS --
-----------------
redIADS = SkynetIADS:create('Red IADS')
redIADS:setUpdateInterval(5)
redIADS:addEarlyWarningRadarsByPrefix('rEWR')
redIADS:addSAMSitesByPrefix('rsam')
redIADS:getSAMSitesByNatoName('SA-2'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-3'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-5'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-6'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-8'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-10'):setGoLiveRangeInPercent(80):setActAsEW(true)
redIADS:getSAMSitesByNatoName('SA-11'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-13'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-15'):setGoLiveRangeInPercent(100)
redIADS:getSAMSitesByNatoName('SA-19'):setGoLiveRangeInPercent(100)

--redIADS:addRadioMenu()  

redIADS:activate()  
  
env.info("RED IADS Complete", false)

