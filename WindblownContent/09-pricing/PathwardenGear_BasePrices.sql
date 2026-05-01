-- Set base pyreal values for Pathwarden starter gear so vendor prices are consistent.
-- Pricing mods (LLL economy, WorldEvents Sale, QOL inflation) apply multipliers on top.
-- Academy weapons already have retail values (200-275) and do not need updates.

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
-- Pathwarden Robes (Aluvian, Gharu'ndim, Sho, Viamontian)
 (40439, 19, 100)
,(40454, 19, 100)
,(40455, 19, 100)
,(40456, 19, 100)
-- Pathwarden Armor (Plate, Scale, Yoroi, Diforsa + leggings + sollerets + gauntlets + helm)
,(33597, 19, 100)
,(33598, 19, 100)
,(33599, 19, 100)
,(33600, 19, 100)
,(33601, 19, 100)
,(33602, 19, 100)
,(33603, 19, 100)
,(33604, 19, 100)
,(33605, 19, 100)
,(33606, 19, 100)
,(33607, 19, 100)
ON DUPLICATE KEY UPDATE value = 100;
