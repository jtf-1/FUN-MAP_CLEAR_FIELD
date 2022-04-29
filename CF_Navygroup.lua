env.info("Navygroup Loading", false)

carrier_menu = MENU_COALITION:New(coalition.side.BLUE,"Carrier Recovery",MainMenu_1)
lincoln_menu = MENU_COALITION:New(coalition.side.BLUE, "CV-72 Lincoln", carrier_menu)
forrestal_menu = MENU_COALITION:New(coalition.side.BLUE, "CV-59 Forrestal", carrier_menu)

Lincoln = GROUP:FindByName('CVN-72 Abraham Lincoln')
CVN72 = NAVYGROUP:New(Lincoln)
CVN72:Activate()
CVN72:SetPatrolAdInfinitum()
CVN72:Cruise(15)

function start_recovery_lincoln() 
 if CVN72:IsSteamingIntoWind() == true then
 local shipheading72 = mist.utils.round(CVN72:GetHeadingIntoWind(),0)
 Message_01 = MESSAGE:New("Lincoln is currently launching/recovering, currently active recovery window closes at time "..timerecovery_end72.." BRC is "..shipheading72, 25):ToBlue()        
else 
 local timenow72=timer.getAbsTime( )
 local timeend72=timenow72+CVN72_WindowTime*60
 local timerecovery_start72 = UTILS.SecondsToClock(timenow72,true)
 local winddir72 = mist.utils.round(CVN72:GetWind(),0)
  timerecovery_end72 = UTILS.SecondsToClock(timeend72,true)
  CVN72:AddTurnIntoWind(timerecovery_start72,timerecovery_end72,29,true,-9)
 Message_01 = MESSAGE:New("Lincoln is turning, Recovery Window is open from "..timerecovery_start72.." until "..timerecovery_end72.." wind is at "..winddir72.." deg", 25):ToBlue()            
  end end
menu_recovery_1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/15min",lincoln_menu,
 function() CVN72_WindowTime = 17 
   Message_10 = MESSAGE:New("A Lincoln recovery window has been requested for 15 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_lincoln, nil , timer.getTime() + 6)  
  end )
menu_recovery_2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/30min",lincoln_menu,
 function() CVN72_WindowTime = 32 
   Message_20 = MESSAGE:New("A Lincoln recovery window has been requested for 30 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_lincoln, nil , timer.getTime() + 6)  
  end )
menu_recovery_3 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/60min",lincoln_menu,
 function() CVN72_WindowTime = 62 
   Message_30 = MESSAGE:New("A Lincoln recovery window has been requested for 60 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_lincoln, nil , timer.getTime() + 6)  
  end )
menu_recovery_4 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/90min",lincoln_menu,
 function() CVN72_WindowTime = 92 
   Message_40 = MESSAGE:New("A Lincoln recovery window has been requested for 90 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_lincoln, nil , timer.getTime() + 6)  
  end )
menu_recovery_5 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"END RECOVERY",lincoln_menu,
 function()
   Message_40 = MESSAGE:New("The Lincoln recovery window has been cancelled", 5):ToBlue()  
   CVN72:TurnIntoWindStop():Cruise(15)
  end )
  
forrestal = GROUP:FindByName('CV-59 Forrestal')
CVN59 = NAVYGROUP:New(forrestal)
CVN59:Activate()
CVN59:SetPatrolAdInfinitum()
CVN59:Cruise(15)

function start_recovery_forrestal() 
 if CVN59:IsSteamingIntoWind() == true then
  local shipheading59 = mist.utils.round(CVN59:GetHeadingIntoWind(),0)
  Message_01 = MESSAGE:New("Forrestal is currently launching/recovering, currently active recovery window closes at time "..timerecovery_end59.." BRC is "..shipheading59, 25):ToBlue()        
else 
 local timenow59=timer.getAbsTime( )
 local timeend59=timenow59+CVN59_WindowTime*60
 local timerecovery_start59 = UTILS.SecondsToClock(timenow59,true)
 local winddir59 = mist.utils.round(CVN59:GetWind(),0)
  timerecovery_end59 = UTILS.SecondsToClock(timeend59,true)
  CVN59:AddTurnIntoWind(timerecovery_start59,timerecovery_end59,29,true,-9)
 Message_01 = MESSAGE:New("Forrestal is turning, Recovery Window is open from "..timerecovery_start59.." until "..timerecovery_end59.." wind is at "..winddir59.." deg", 25):ToBlue()            
  end end
menu_recovery_1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/15min",forrestal_menu,
 function() CVN59_WindowTime = 17 
   Message_10 = MESSAGE:New("A Forrestal recovery window has been requested for 15 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_forrestal, nil , timer.getTime() + 6)  
  end )
menu_recovery_2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/30min",forrestal_menu,
 function() CVN59_WindowTime = 32 
   Message_20 = MESSAGE:New("A Forrestal recovery window has been requested for 30 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_forrestal, nil , timer.getTime() + 6)  
  end )
menu_recovery_3 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/60min",forrestal_menu,
 function() CVN59_WindowTime = 62 
   Message_30 = MESSAGE:New("A Forrestal recovery window has been requested for 60 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_forrestal, nil , timer.getTime() + 6)  
  end )
menu_recovery_4 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Recovery/90min",forrestal_menu,
 function() CVN59_WindowTime = 92 
   Message_40 = MESSAGE:New("A Forrestal recovery window has been requested for 90 minutes", 5):ToBlue()  
    timer.scheduleFunction(start_recovery_forrestal, nil , timer.getTime() + 6)  
  end )
menu_recovery_5 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"END RECOVERY",forrestal_menu,
 function()
   Message_40 = MESSAGE:New("The Forrestal recovery window has been cancelled", 5):ToBlue()  
   CVN59:TurnIntoWindStop():Cruise(15)
  end )
  
env.info("Navygroup Complete", false)

