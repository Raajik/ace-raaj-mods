-- Bestowers' Guild quest QoL.
-- Sell the Skill Puzzle Base Piece so eligible characters do not need weeks of vendor resets
-- to collect all titles they can already earn.

DELETE FROM weenie_properties_create_list
WHERE object_Id IN (9615, 9616, 9617)
  AND destination_Type = 4
  AND weenie_Class_Id = 9594;

INSERT INTO weenie_properties_create_list
    (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES
    (9615, 4, 9594, -1, 0, 0, False), -- Caranis the Dependable
    (9616, 4, 9594, -1, 0, 0, False), -- Nerezi ibn Risad
    (9617, 4, 9594, -1, 0, 0, False); -- Naba Ko-Zin
