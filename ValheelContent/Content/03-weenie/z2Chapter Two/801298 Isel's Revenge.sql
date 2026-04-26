DELETE FROM `weenie` WHERE `class_Id` = 801298;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801298, 'Isel''s Revenge2', 7, '2021-11-17 16:56:08') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801298,   1,      65536) /* ItemType - Portal */
     , (801298,  16,         32) /* ItemUseable - Remote */
     , (801298,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801298, 111,         49) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */
     , (801298, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801298,   1, True ) /* Stuck */
     , (801298,  11, True ) /* IgnoreCollisions */
     , (801298,  13, True ) /* Ethereal */
     , (801298,  14, False ) /* GravityStatus */
     , (801298,  19, False ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801298,  54,     0.8) /* UseRadius */
     , (801298,  76,       1) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801298,   1, 'Isel''s Revenge') /* Name */
     , (801298,  37, 'IRFlag') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801298,   1,   33561586) /* Setup */
     , (801298,   3,  536871008) /* SoundTable */
     , (801298,   8,  100674152) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801298, 2, 9240983, 29.649435, -9.551848, -29.995001, -0.006626, 0, 0, 0.999978) /* Destination */
/* @teleloc 0x008D0197 [29.649435 -9.551848 -29.995001] -0.006626 0.000000 0.000000 0.999978 */;
