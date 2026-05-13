-- Verify Pathwarden chests have Lesser Coalesced Mana (WCID 800000)
SELECT
    object_Id AS ChestId,
    CASE object_Id
        WHEN 33609 THEN 'Aluvian'
        WHEN 33610 THEN 'Gharundim'
        WHEN 33611 THEN 'Sho'
        WHEN 33612 THEN 'Viamontian'
    END AS ChestName,
    weenie_Class_Id,
    stack_Size,
    init_Create,
    max_Create
FROM weenie_properties_generator
WHERE object_Id IN (33609, 33610, 33611, 33612)
  AND weenie_Class_Id = 800000;
