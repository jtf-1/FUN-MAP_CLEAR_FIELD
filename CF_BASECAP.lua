env.info("BASECAP Loading", false)


function SEF_BASECAP_REMOVE ()
  env.info("BASECAP Remove Starting", false)
  
  BlueBaseCAP=SET_GROUP:New():FilterPrefixes("bSAM-BASECAP#"):FilterActive(true):FilterOnce()
  Crates=SET_STATIC:New():FilterPrefixes("Cargo Static Group"):FilterOnce()
   
   local BlueBaseCAPcount=BlueBaseCAP:Count()
    for i = 1, BlueBaseCAPcount do
      local grpObj = BlueBaseCAP:GetRandom()
      --env.info(grpObj:GetName())
      grpObj:Destroy(true)
    end
    
   local Cratescount=Crates:Count()
    for i = 1, Cratescount do
      local grpObj = Crates:GetRandom()
      --env.info(grpObj:GetName())
      grpObj:Destroy(true)
    end
   
  BlueBaseCAP=SET_GROUP:New():FilterPrefixes("bSAM-BASECAP#"):FilterActive(true):FilterOnce()
    
  local BlueBaseCAPcount=BlueBaseCAP:Count()
    for i = 1, BlueBaseCAPcount do
      local grpObj = BlueBaseCAP:GetRandom()
      --env.info(grpObj:GetName())
      grpObj:Destroy(true)
    end    
         
  timer.scheduleFunction(SEF_BASECAP_REMOVE, nil, timer.getTime() + 7200)
  env.info("BASECAP Remove Complete", false)
end

function SEF_BASECAP_RESPAWN ()
  env.info("BASECAP Repawn Starting", false)
     if file_exists("ClearFieldMkIIAirbases.lua") then

    dofile("ClearFieldMkIIAirbases.lua")
  
    AirbaseTableLength = SEF_GetTableLength(ClearFieldMkIIAirbases)
  
    for i = 1, AirbaseTableLength do
     BaseName = ClearFieldMkIIAirbases[i].Airbase
     BaseCoalition = ClearFieldMkIIAirbases[i].Coalition
    
     if ( BaseCoalition == 1) then
     elseif ( BaseCoalition == 2 ) then      
      SEF_CAPAIRBASE(BaseName, 2)  
      else      
      end
    end
  else
    ClearFieldMkIIAirbases = {}
    AirbaseTableLength = 0
  end
  env.info("BASECAP Respawn Complete", false) 
  timer.scheduleFunction(SEF_BASECAP_RESPAWN, nil, timer.getTime() + 7200)
end
  
timer.scheduleFunction(SEF_BASECAP_REMOVE, nil, timer.getTime() + 15)
timer.scheduleFunction(SEF_BASECAP_RESPAWN, nil, timer.getTime() + 20)

AdminOptions = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, "Admin Options", ClearFieldMkIIOptions)
RemoveBlueBaseCAP  = missionCommands.addCommandForCoalition(coalition.side.BLUE, "Remove BLUE BASECAP", AdminOptions, function() SEF_BASECAP_REMOVE () end, nil)
RespawnBlueBaseCAP  = missionCommands.addCommandForCoalition(coalition.side.BLUE, "Respawn BLUE BASECAP", AdminOptions, function() SEF_BASECAP_RESPAWN () end, nil)

env.info("BASECAP Complete", false)

