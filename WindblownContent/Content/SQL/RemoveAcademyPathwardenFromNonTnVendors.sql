-- Remove Academy weapons and Pathwarden armor/robes from all vendor create_lists
-- EXCEPT Town Network Pathwarden vendors (WCIDs 850300, 850301, 850302, 850303).
--
-- Apply: mysql -u USER -p ace_world < RemoveAcademyPathwardenFromNonTnVendors.sql
-- Mirror to wb_ace_world for live when ready. Restart ACE.Server after apply (weenie cache).

DELETE cl FROM weenie_properties_create_list cl
INNER JOIN weenie v ON v.id = cl.object_Id
WHERE v.class_Id NOT IN (850300, 850301, 850302, 850303)
  AND cl.weenie_Class_Id IN (
    12750, 12751, 12752, 12753, 12754, 12755, 12756, 12757, 12758, 12759, 12760,
    41514,
    45531, 45532, 45535, 45536, 45539, 45540, 45543, 45544, 45547, 45548, 45551, 45552, 45555, 45556,
    33597, 33598, 33599, 33600, 33601, 33602, 33603, 33604, 33605, 33606, 33607,
    40439, 40440, 40441, 40442, 40443, 40444, 40445, 40446, 40447, 40448, 40449, 40450, 40451, 40452, 40453, 40454,
    40455, 40456,
    41513
);
