-- Fix Pathwarden Vendor create_lists: replace missing/wrong WCIDs with correct ones
-- Removes bad WCIDs (40440=crystallineportal, 40441-40442=missing, 40443=armorupgradekit,
-- 40444-40450=missing/wrong, 40451-40453=missing, 40454=robe used as trinket)
-- Inserts correct Pathwarden armor: robes 40439/40454/40455/40456,
-- hauberks 33597-33600, leggings 33601-33604, sollerets 33605, gauntlets 33606,
-- helm 33607, trinket 41513

DELETE FROM weenie_properties_create_list
WHERE object_Id IN (850300,850301,850302,850303)
  AND weenie_Class_Id IN (40440,40441,40442,40443,40444,40445,40446,40447,40448,40449,40450,40451,40452,40453,40454);

-- Kaelith (850300)
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES
 (850300, 4, 40439, 1, 0,  8000, False) /* Pathwarden Robe (Aluvian) */
,(850300, 4, 40454, 1, 0,  8200, False) /* Pathwarden Robe (Gharu'ndim) */
,(850300, 4, 40455, 1, 0,  8400, False) /* Pathwarden Robe (Sho) */
,(850300, 4, 40456, 1, 0,  8600, False) /* Pathwarden Robe (Viamontian) */
,(850300, 4, 33597, 1, 0,  8800, False) /* Pathwarden Plate Hauberk */
,(850300, 4, 33598, 1, 0,  9000, False) /* Pathwarden Scale Hauberk */
,(850300, 4, 33599, 1, 0,  9200, False) /* Pathwarden Yoroi Hauberk */
,(850300, 4, 33600, 1, 0,  9400, False) /* Pathwarden Diforsa Hauberk */
,(850300, 4, 33601, 1, 0,  9600, False) /* Pathwarden Plate Leggings */
,(850300, 4, 33602, 1, 0,  9800, False) /* Pathwarden Scale Leggings */
,(850300, 4, 33603, 1, 0, 10000, False) /* Pathwarden Yoroi Leggings */
,(850300, 4, 33604, 1, 0, 10200, False) /* Pathwarden Diforsa Leggings */
,(850300, 4, 33605, 1, 0, 10400, False) /* Pathwarden Sollerets */
,(850300, 4, 33606, 1, 0, 10600, False) /* Pathwarden Gauntlets */
,(850300, 4, 33607, 1, 0, 10800, False) /* Pathwarden Helm */
,(850300, 4, 41513, 1, 0, 11000, False) /* Pathwarden Trinket */;

-- Thornwick (850301)
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES
 (850301, 4, 40439, 1, 0,  8600, False) /* Pathwarden Robe (Aluvian) */
,(850301, 4, 40454, 1, 0,  8800, False) /* Pathwarden Robe (Gharu'ndim) */
,(850301, 4, 40455, 1, 0,  9000, False) /* Pathwarden Robe (Sho) */
,(850301, 4, 40456, 1, 0,  9200, False) /* Pathwarden Robe (Viamontian) */
,(850301, 4, 33597, 1, 0,  9400, False) /* Pathwarden Plate Hauberk */
,(850301, 4, 33598, 1, 0,  9600, False) /* Pathwarden Scale Hauberk */
,(850301, 4, 33599, 1, 0,  9800, False) /* Pathwarden Yoroi Hauberk */
,(850301, 4, 33600, 1, 0, 10000, False) /* Pathwarden Diforsa Hauberk */
,(850301, 4, 33601, 1, 0, 10200, False) /* Pathwarden Plate Leggings */
,(850301, 4, 33602, 1, 0, 10400, False) /* Pathwarden Scale Leggings */
,(850301, 4, 33603, 1, 0, 10600, False) /* Pathwarden Yoroi Leggings */
,(850301, 4, 33604, 1, 0, 10800, False) /* Pathwarden Diforsa Leggings */
,(850301, 4, 33605, 1, 0, 11000, False) /* Pathwarden Sollerets */
,(850301, 4, 33606, 1, 0, 11200, False) /* Pathwarden Gauntlets */
,(850301, 4, 33607, 1, 0, 11400, False) /* Pathwarden Helm */
,(850301, 4, 41513, 1, 0, 11600, False) /* Pathwarden Trinket */;

-- Mirelle (850302)
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES
 (850302, 4, 40439, 1, 0,  8400, False) /* Pathwarden Robe (Aluvian) */
,(850302, 4, 40454, 1, 0,  8600, False) /* Pathwarden Robe (Gharu'ndim) */
,(850302, 4, 40455, 1, 0,  8800, False) /* Pathwarden Robe (Sho) */
,(850302, 4, 40456, 1, 0,  9000, False) /* Pathwarden Robe (Viamontian) */
,(850302, 4, 33597, 1, 0,  9200, False) /* Pathwarden Plate Hauberk */
,(850302, 4, 33598, 1, 0,  9400, False) /* Pathwarden Scale Hauberk */
,(850302, 4, 33599, 1, 0,  9600, False) /* Pathwarden Yoroi Hauberk */
,(850302, 4, 33600, 1, 0,  9800, False) /* Pathwarden Diforsa Hauberk */
,(850302, 4, 33601, 1, 0, 10000, False) /* Pathwarden Plate Leggings */
,(850302, 4, 33602, 1, 0, 10200, False) /* Pathwarden Scale Leggings */
,(850302, 4, 33603, 1, 0, 10400, False) /* Pathwarden Yoroi Leggings */
,(850302, 4, 33604, 1, 0, 10600, False) /* Pathwarden Diforsa Leggings */
,(850302, 4, 33605, 1, 0, 10800, False) /* Pathwarden Sollerets */
,(850302, 4, 33606, 1, 0, 11000, False) /* Pathwarden Gauntlets */
,(850302, 4, 33607, 1, 0, 11200, False) /* Pathwarden Helm */
,(850302, 4, 41513, 1, 0, 11400, False) /* Pathwarden Trinket */;

-- Eldrin (850303)
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES
 (850303, 4, 40439, 1, 0,  9000, False) /* Pathwarden Robe (Aluvian) */
,(850303, 4, 40454, 1, 0,  9200, False) /* Pathwarden Robe (Gharu'ndim) */
,(850303, 4, 40455, 1, 0,  9400, False) /* Pathwarden Robe (Sho) */
,(850303, 4, 40456, 1, 0,  9600, False) /* Pathwarden Robe (Viamontian) */
,(850303, 4, 33597, 1, 0,  9800, False) /* Pathwarden Plate Hauberk */
,(850303, 4, 33598, 1, 0, 10000, False) /* Pathwarden Scale Hauberk */
,(850303, 4, 33599, 1, 0, 10200, False) /* Pathwarden Yoroi Hauberk */
,(850303, 4, 33600, 1, 0, 10400, False) /* Pathwarden Diforsa Hauberk */
,(850303, 4, 33601, 1, 0, 10600, False) /* Pathwarden Plate Leggings */
,(850303, 4, 33602, 1, 0, 10800, False) /* Pathwarden Scale Leggings */
,(850303, 4, 33603, 1, 0, 11000, False) /* Pathwarden Yoroi Leggings */
,(850303, 4, 33604, 1, 0, 11200, False) /* Pathwarden Diforsa Leggings */
,(850303, 4, 33605, 1, 0, 11400, False) /* Pathwarden Sollerets */
,(850303, 4, 33606, 1, 0, 11600, False) /* Pathwarden Gauntlets */
,(850303, 4, 33607, 1, 0, 11800, False) /* Pathwarden Helm */
,(850303, 4, 41513, 1, 0, 12000, False) /* Pathwarden Trinket */;
