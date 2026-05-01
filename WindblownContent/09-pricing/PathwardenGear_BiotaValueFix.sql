-- Update existing Pathwarden gear biotas to Value=100 so old items match new weenie template
-- This updates items already in player inventories, on vendors, etc.

UPDATE biota_properties_int bip
JOIN biota b ON bip.object_Id = b.id
SET bip.value = 100
WHERE bip.type = 19 AND b.weenie_Class_Id IN (
    33597, 33598, 33599, 33600, 33601, 33602, 33603, 33604, 33605, 33606, 33607,
    40439, 40454, 40455, 40456
);

-- Update Pathwarden Trinket to Value=50 (its intended base price)
UPDATE biota_properties_int bip
JOIN biota b ON bip.object_Id = b.id
SET bip.value = 50
WHERE bip.type = 19 AND b.weenie_Class_Id = 41513;
