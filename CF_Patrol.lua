env.info("Patrol Loading", false)

-- EAST CORRIDOR --
-- ============= --

EastCorridor = GROUP:FindByName("rsam - East Corridor Air Defense")
EastCorridor1 = ZONE:FindByName("EastCorridor1")
EastCorridor2 = ZONE:FindByName("EastCorridor2")

if EastCorridor:IsAlive() then EastCorridor:TaskRouteToZone(EastCorridor1, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0) end -- send group to fist zone and start loop

function SEF_EastCorridor()
  if EastCorridor:IsAlive() then 
    if EastCorridor:IsPartlyOrCompletelyInZone(EastCorridor1)
      then 
        EastCorridor:ClearTasks()
        EastCorridor:TaskRouteToZone(EastCorridor2, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif EastCorridor:IsPartlyOrCompletelyInZone(EastCorridor2)
          then 
            EastCorridor:ClearTasks()
            EastCorridor:TaskRouteToZone(EastCorridor1, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
    end
  end
end

-- WEST CORRIDOR --
-- ============= --

WestCorridor = GROUP:FindByName("rsam - West Corridor Air Defense")
WestCorridor1 = ZONE:FindByName("WestCorridor1")
WestCorridor2 = ZONE:FindByName("WestCorridor2")

if WestCorridor:IsAlive() then WestCorridor:TaskRouteToZone(WestCorridor1, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0) end -- send group to fist zone and start loop

function SEF_WestCorridor()
  if WestCorridor:IsAlive()then  
    if WestCorridor:IsPartlyOrCompletelyInZone(WestCorridor1)
      then 
        WestCorridor:ClearTasks()
        WestCorridor:TaskRouteToZone(WestCorridor2, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif WestCorridor:IsPartlyOrCompletelyInZone(WestCorridor2)
          then 
            WestCorridor:ClearTasks()
            WestCorridor:TaskRouteToZone(WestCorridor1, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
    end
  end
end

-- Gali - Convoy --
-- ============= --

Gali = GROUP:FindByName("Gali - Convoy")
Gali1 = ZONE:FindByName("Gali1")
Gali2 = ZONE:FindByName("Gali2")
Gali3 = ZONE:FindByName("Gali3")

if Gali:IsAlive() then Gali:TaskRouteToZone(Gali1, false, 7, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0) end -- send group to fist zone and start loop

function SEF_Gali() 
  if Gali:IsAlive() then 
    if Gali:IsPartlyOrCompletelyInZone(Gali1)
      then 
        Gali:ClearTasks()
        Gali:TaskRouteToZone(Gali2, false, 5, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Gali:IsPartlyOrCompletelyInZone(Gali2)
          then 
            Gali:ClearTasks()
            Gali:TaskRouteToZone(Gali3, false, 5, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Gali:IsPartlyOrCompletelyInZone(Gali3)
          then
            Gali:ClearTasks()
            Gali:TaskRouteToZone(Gali1, false, 5, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
    end
  end
end

-- Karaleti - Armor --
-- ================ --

Karaleti = GROUP:FindByName("Karaleti - Armor")
Karaleti1 = ZONE:FindByName("Karaleti1")
Karaleti2 = ZONE:FindByName("Karaleti2")
Karaleti3 = ZONE:FindByName("Karaleti3")

if Karaleti:IsAlive() then Karaleti:TaskRouteToZone(Karaleti1, false, 8, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0) end -- send group to fist zone and start loop

function SEF_Karaleti()
  if Karaleti:IsAlive() then 
    if Karaleti:IsPartlyOrCompletelyInZone(Karaleti1)
      then 
        Karaleti:ClearTasks()
        Karaleti:TaskRouteToZone(Karaleti2, false, 8, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Karaleti:IsPartlyOrCompletelyInZone(Karaleti2)
          then 
            Karaleti:ClearTasks()
            Karaleti:TaskRouteToZone(Karaleti3, false, 8, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Karaleti:IsPartlyOrCompletelyInZone(Karaleti3)
          then
            Karaleti:ClearTasks()
            Karaleti:TaskRouteToZone(Karaleti1, false, 8, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
    end
  end
end

-- Tskhinvali - Convoy --
-- =================== --

Tskhinvali = GROUP:FindByName("Tskhinvali - Convoy")
Tskhinvali1 = ZONE:FindByName("Tskhinvali1")
Tskhinvali2 = ZONE:FindByName("Tskhinvali2")
Tskhinvali3 = ZONE:FindByName("Tskhinvali3")

if Tskhinvali:IsAlive() then Tskhinvali:TaskRouteToZone(Tskhinvali1, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0) end -- send group to fist zone and start loop

function SEF_Tskhinvali()
  if Tskhinvali:IsAlive() then 
    if Tskhinvali:IsPartlyOrCompletelyInZone(Tskhinvali1)
      then 
        Tskhinvali:ClearTasks()
        Tskhinvali:TaskRouteToZone(Tskhinvali2, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Tskhinvali:IsPartlyOrCompletelyInZone(Tskhinvali2)
          then 
            Tskhinvali:ClearTasks()
            Tskhinvali:TaskRouteToZone(Tskhinvali3, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Tskhinvali:IsPartlyOrCompletelyInZone(Tskhinvali3)
          then
            Tskhinvali:ClearTasks()
            Tskhinvali:TaskRouteToZone(Tskhinvali1, false, 6, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
    end
  end
end

-- Chuburhindzhi - Armor --
-- =================== --

Chuburhindzhi = GROUP:FindByName("Chuburhindzhi - Armor")
Chuburhindzhi1 = ZONE:FindByName("Chuburhindzhi1")
Chuburhindzhi2 = ZONE:FindByName("Chuburhindzhi2")
Chuburhindzhi3 = ZONE:FindByName("Chuburhindzhi3")

if Chuburhindzhi:IsAlive() then Chuburhindzhi:TaskRouteToZone(Chuburhindzhi1, false, 10, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0) end -- send group to fist zone and start loop

function SEF_Chuburhindzhi()
  if Chuburhindzhi:IsAlive() then 
    if Chuburhindzhi:IsPartlyOrCompletelyInZone(Chuburhindzhi1)
      then 
        Chuburhindzhi:ClearTasks()
        Chuburhindzhi:TaskRouteToZone(Chuburhindzhi2, false, 10, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Chuburhindzhi:IsPartlyOrCompletelyInZone(Chuburhindzhi2)
          then 
            Chuburhindzhi:ClearTasks()
            Chuburhindzhi:TaskRouteToZone(Chuburhindzhi3, false, 10, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Chuburhindzhi:IsPartlyOrCompletelyInZone(Chuburhindzhi3)
          then
            Chuburhindzhi:ClearTasks()
            Chuburhindzhi:TaskRouteToZone(Chuburhindzhi1, false, 10, "On Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
    end
  end
end

-- Sakasheti - Truck --
-- ================= --

Sakasheti = GROUP:FindByName("Sakasheti - Truck")
Sakasheti1 = ZONE:FindByName("Sakasheti1")
Sakasheti2 = ZONE:FindByName("Sakasheti2")
Sakasheti3 = ZONE:FindByName("Sakasheti3")
Sakasheti4 = ZONE:FindByName("Sakasheti4")

if Sakasheti:IsAlive() then Sakasheti:TaskRouteToZone(Sakasheti1, false, 15, "Off Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0) end -- send group to fist zone and start loop

function SEF_Sakasheti()
  if Sakasheti:IsAlive() then 
    if Sakasheti:IsPartlyOrCompletelyInZone(Sakasheti1)
      then 
        Sakasheti:ClearTasks()
        Sakasheti:TaskRouteToZone(Sakasheti2, false, 15, "Off Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Sakasheti:IsPartlyOrCompletelyInZone(Sakasheti2)
          then 
            Sakasheti:ClearTasks()
            Sakasheti:TaskRouteToZone(Sakasheti3, false, 15, "Off Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Sakasheti:IsPartlyOrCompletelyInZone(Sakasheti3)
          then
            Sakasheti:ClearTasks()
            Sakasheti:TaskRouteToZone(Sakasheti4, false, 15, "Off Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
      elseif Sakasheti:IsPartlyOrCompletelyInZone(Sakasheti4)
          then
            Sakasheti:ClearTasks()
            Sakasheti:TaskRouteToZone(Sakasheti1, false, 15, "Off Road"):OptionAlarmStateRed():OptionDisperseOnAttack(0)
    end
  end
end

-- Sukhumi - Navy --
-- ============== --

Sukhumi = GROUP:FindByName("Sukhumi - Navy")
Sukhumi1 = ZONE:FindByName("Sukhumi1")
Sukhumi2 = ZONE:FindByName("Sukhumi2")
Sukhumi3 = ZONE:FindByName("Sukhumi3")
Sukhumi4 = ZONE:FindByName("Sukhumi4")

if Sukhumi:IsAlive() then Sukhumi:TaskRouteToZone(Sukhumi1, false, 20):OptionAlarmStateRed() end -- send group to fist zone and start loop

function SEF_Sukhumi()
  if Sukhumi:IsAlive() then 
    if Sukhumi:IsPartlyOrCompletelyInZone(Sukhumi1)
      then 
        Sukhumi:ClearTasks()
        Sukhumi:TaskRouteToZone(Sukhumi2, false, 20):OptionAlarmStateRed()
      elseif Sukhumi:IsPartlyOrCompletelyInZone(Sukhumi2)
          then 
            Sukhumi:ClearTasks()
            Sukhumi:TaskRouteToZone(Sukhumi3, false, 20):OptionAlarmStateRed()
      elseif Sukhumi:IsPartlyOrCompletelyInZone(Sukhumi3)
          then
            Sukhumi:ClearTasks()
            Sukhumi:TaskRouteToZone(Sukhumi4, false, 20):OptionAlarmStateRed()
      elseif Sukhumi:IsPartlyOrCompletelyInZone(Sukhumi4)
          then
            Sukhumi:ClearTasks()
            Sukhumi:TaskRouteToZone(Sukhumi1, false, 20):OptionAlarmStateRed()
    end
  end
end

-- Gudauta - Navy --
-- ============== --

Gudauta = GROUP:FindByName("Gudauta - Navy")
Gudauta1 = ZONE:FindByName("Gudauta1")
Gudauta2 = ZONE:FindByName("Gudauta2")

if Gudauta:IsAlive() then Gudauta:TaskRouteToZone(Gudauta1, false, 15):OptionAlarmStateRed() end -- send group to fist zone and start loop

function SEF_Gudauta()
  if Gudauta:IsAlive()then  
    if Gudauta:IsPartlyOrCompletelyInZone(Gudauta1)
      then 
        Gudauta:ClearTasks()
        Gudauta:TaskRouteToZone(Gudauta2, false, 15):OptionAlarmStateRed()
      elseif Gudauta:IsPartlyOrCompletelyInZone(Gudauta2)
          then 
            Gudauta:ClearTasks()
            Gudauta:TaskRouteToZone(Gudauta1, false, 15):OptionAlarmStateRed()
    end
  end
end

-- Sochi - Navy --
-- ============ --

Sochi = GROUP:FindByName("Sochi - Navy")
Sochi1 = ZONE:FindByName("Sochi1")
Sochi2 = ZONE:FindByName("Sochi2")

if Sochi:IsAlive() then Sochi:TaskRouteToZone(Sochi1, false, 15):OptionAlarmStateRed() end -- send group to fist zone and start loop

function SEF_Sochi()
  if Sochi:IsAlive()then  
    if Sochi:IsPartlyOrCompletelyInZone(Sochi1)
      then 
        Sochi:ClearTasks()
        Sochi:TaskRouteToZone(Sochi2, false, 15):OptionAlarmStateRed()
      elseif Sochi:IsPartlyOrCompletelyInZone(Sochi2)
          then 
            Sochi:ClearTasks()
            Sochi:TaskRouteToZone(Sochi1, false, 15):OptionAlarmStateRed()
    end
  end
end

-- Pitsunda - Cargo Ship --
-- ===================== --

Pitsunda = GROUP:FindByName("Pitsunda - Cargo Ship")
Pitsunda1 = ZONE:FindByName("Pitsunda1")
Pitsunda2 = ZONE:FindByName("Pitsunda2")
Pitsunda3 = ZONE:FindByName("Pitsunda3")
Pitsunda4 = ZONE:FindByName("Pitsunda4")

if Pitsunda:IsAlive() then Pitsunda:TaskRouteToZone(Pitsunda1, false, 5) end -- send group to fist zone and start loop

function SEF_Pitsunda()
  if Pitsunda:IsAlive() then 
    if Pitsunda:IsPartlyOrCompletelyInZone(Pitsunda1)
      then 
        Pitsunda:ClearTasks()
        Pitsunda:TaskRouteToZone(Pitsunda2, false, 5)
      elseif Pitsunda:IsPartlyOrCompletelyInZone(Pitsunda2)
          then 
            Pitsunda:ClearTasks()
            Pitsunda:TaskRouteToZone(Pitsunda3, false, 5)
      elseif Pitsunda:IsPartlyOrCompletelyInZone(Pitsunda3)
          then
            Pitsunda:ClearTasks()
            Pitsunda:TaskRouteToZone(Pitsunda4, false, 5)
      elseif Pitsunda:IsPartlyOrCompletelyInZone(Pitsunda4)
          then
            Pitsunda:ClearTasks()
            Pitsunda:TaskRouteToZone(Pitsunda1, false, 5)
    end
  end
end

-- Lazarevskoe - Cargo Ship --
-- ======================== --

Lazarevskoe = GROUP:FindByName("Lazarevskoe - Cargo Ship")
Lazarevskoe1 = ZONE:FindByName("Lazarevskoe1")
Lazarevskoe2 = ZONE:FindByName("Lazarevskoe2")

if Lazarevskoe:IsAlive() then Lazarevskoe:TaskRouteToZone(Lazarevskoe1, false, 5) end -- send group to fist zone and start loop

function SEF_Lazarevskoe()
  if Lazarevskoe:IsAlive()then  
    if Lazarevskoe:IsPartlyOrCompletelyInZone(Lazarevskoe1)
      then 
        Lazarevskoe:ClearTasks()
        Lazarevskoe:TaskRouteToZone(Lazarevskoe2, false, 5)
      elseif Lazarevskoe:IsPartlyOrCompletelyInZone(Lazarevskoe2)
          then 
            Lazarevskoe:ClearTasks()
            Lazarevskoe:TaskRouteToZone(Lazarevskoe1, false, 5)
    end
  end
end

--   Schedules  --
-- ============ --

SCHEDULER:New(nil, SEF_EastCorridor, nil, 5, 180, 0, nil)
SCHEDULER:New(nil, SEF_WestCorridor, nil, 6, 180, 0, nil)
SCHEDULER:New(nil, SEF_Gali, nil, 7, 180, .2, nil)
SCHEDULER:New(nil, SEF_Karaleti, nil, 8, 180, .2, nil)
SCHEDULER:New(nil, SEF_Tskhinvali, nil, 9, 180, .2, nil)
SCHEDULER:New(nil, SEF_Chuburhindzhi, nil, 180, 30, .2, nil)
SCHEDULER:New(nil, SEF_Sakasheti, nil, 11, 180, .2, nil)
SCHEDULER:New(nil, SEF_Sukhumi, nil, 12, 180, 0, nil)
SCHEDULER:New(nil, SEF_Gudauta, nil, 13, 180, 0, nil)
SCHEDULER:New(nil, SEF_Sochi, nil, 14, 180, 0, nil)
SCHEDULER:New(nil, SEF_Pitsunda, nil, 15, 180, 0, nil)
SCHEDULER:New(nil, SEF_Lazarevskoe, nil, 16, 180, 0, nil)


env.info("Patrol Complete", false)