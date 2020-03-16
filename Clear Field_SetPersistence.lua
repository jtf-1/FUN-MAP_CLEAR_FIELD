-----------------------------
-- Edit this value to be appended to the persistence data file name
-----------------------------

local fileSuffix = "jtf-1"

-----------------------------
-- DO NOT CHANGE ANYTHING BELOW
-----------------------------

--Red Persistence
nameClearFieldStaticIntermentFile = "ClearFieldStaticInterment_" .. fileSuffix .. ".lua"
env.info("Clear Field statics save file: " .. nameClearFieldStaticIntermentFile)

nameClearFieldUnitIntermentFile = "ClearFieldUnitInterment_" .. fileSuffix .. ".lua"
env.info("Clear Field units save file: " .. nameClearFieldUnitIntermentFile)

--Blue Persistence
nameSaveStatics = "ClearFieldCTLDSaveStatics_" .. fileSuffix .. ".lua"
env.info("CTLD statics save file: " .. nameSaveStatics)

nameSaveUnitsFile = "ClearFieldCTLDSaveUnits_" .. fileSuffix .. ".lua"
env.info("CTLD units save file: " .. nameSaveUnitsFile)
