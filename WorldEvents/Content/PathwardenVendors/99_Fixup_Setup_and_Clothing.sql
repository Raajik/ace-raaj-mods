-- Fix TN Pathwarden Vendors: Setup DID + Wielded Clothing
-- Apply to ace_world after WorldEvents vendor SQL has been loaded

-- 1. Fix female vendor Setup DIDs (33554434 invalid in this dat, use 33554510 like retail female NPCs)
UPDATE weenie_properties_d_i_d SET value = 33554510 WHERE object_Id = 850301 AND type = 1;
UPDATE weenie_properties_d_i_d SET value = 33554510 WHERE object_Id = 850302 AND type = 1;

-- 2. Add wielded Pathwarden clothing to all 4 vendors
-- Kaelith (850300) - male, Aluvian robe
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES (850300, 2, 40439, 1, 0, 0, False);  /* Pathwarden Robe (wielded) */

-- Thornwick (850301) - female, Gharu'ndim robe
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES (850301, 2, 40454, 1, 0, 0, False);  /* Pathwarden Robe (wielded) */

-- Mirelle (850302) - female, Sho robe
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES (850302, 2, 40455, 1, 0, 0, False);  /* Pathwarden Robe (wielded) */

-- Eldrin (850303) - male, Viamontian robe
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES (850303, 2, 40456, 1, 0, 0, False);  /* Pathwarden Robe (wielded) */
