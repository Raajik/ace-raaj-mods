-- Statue replica "small" mobs (quest bronze salvage): corpse create_list uses destination_Type = 9
-- (Treasure) with shade as drop probability. Vanilla used shade = 0.05 (5%). Set shade = 0 so
-- ACE CreateListSelect always includes the row (Creature_Equipment.CreateListSelect: no RNG when
-- shade == 0 for Treasure rows).
--
-- Mob (object_Id) -> salvage WCID:
--   19267 statuereplicaextremegrievversmall   -> 19249 Bronze Nuts and Bolts
--   19270 statuereplicaextremeshadowsmall      -> 19250 Bronze Nuts and Bolts
--   19273 statuereplicaextremevirindismall     -> 19251 Bronze Nuts and Bolts
--   19276 statuereplicahighgolemsmall           -> 19252 Bronze Spring
--   19279 statuereplicahighsclavussmall         -> 19253 Bronze Spring
--   19282 statuereplicahighskeletonsmall        -> 19254 Bronze Spring
--   19285 statuereplicahightumeroksmall         -> 19255 Bronze Spring
--   19288 statuereplicalowdrudgesmall           -> 19215 Bronze Gear
--   19291 statuereplicalowgromniesmall          -> 19216 Bronze Gear
--   19294 statuereplicalowmosswartsmall         -> 19217 Bronze Gear
--   19297 statuereplicalowreedsharksmall        -> 19218 Bronze Gear
--   19300 statuereplicamidbanderlingsmall       -> 19209 Bronze Coil
--   19303 statuereplicamidbentensmall            -> 19210 Bronze Coil
--   19306 statuereplicamidsclavussmall           -> 19211 Bronze Coil
--   19309 statuereplicamidskeletonsmall          -> 19212 Bronze Coil
--   19312 statuereplicamidthorstensmall            -> 19213 Bronze Coil
--   19315 statuereplicamidzharalimsmall          -> 19214 Bronze Coil
--
-- Rollback: restore from WindblownContent/sql-backups/2026-05-03/pre-statue-replica-bronze-salvage-create-list.sql

UPDATE weenie_properties_create_list
SET shade = 0
WHERE destination_Type = 9
  AND object_Id IN (19267,19270,19273,19276,19279,19282,19285,19288,19291,19294,19297,19300,19303,19306,19309,19312,19315)
  AND weenie_Class_Id IN (19209,19210,19211,19212,19213,19214,19215,19216,19217,19218,19249,19250,19251,19252,19253,19254,19255);
