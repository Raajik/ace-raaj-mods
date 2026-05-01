-- Remove ValheelContent custom Town Network platform weenie (replaced by native portals)
DELETE FROM `weenie` WHERE `class_Id` = 1000005;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 1000005;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 1000005;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 1000005;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 1000005;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 1000005;
