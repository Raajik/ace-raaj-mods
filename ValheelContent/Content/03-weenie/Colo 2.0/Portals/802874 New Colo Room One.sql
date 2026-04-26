DELETE FROM `weenie` WHERE `class_Id` = 802874;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802874, 'New Colo Room One', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802874,   1,      65536) /* ItemType - Portal */
     , (802874,  16,         32) /* ItemUseable - Remote */
     , (802874,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802874, 111,         32) /* PortalBitmask - Unrestricted */
     , (802874, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802874,   1, True ) /* Stuck */
     , (802874,  11, False) /* IgnoreCollisions */
     , (802874,  12, True ) /* ReportCollisions */
     , (802874,  13, True ) /* Ethereal */
     , (802874,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802874,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802874,   1, 'New Colosseum Room One') /* Name */
     , (802874,  16, 'It is highly recommended that you be level 10,000, Prestige 300+, and in a full Fellowship for this fight.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802874,   1,  33561552) /* Setup */
     , (802874,   2,  0x09000016) /* MotionTable */
     , (802874,   3,  536871119) /* SoundTable */
     , (802874,   8,  100689885) /* Icon */
     , (802874,  22,  0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802874, 2, 0x00B00168, 30.000000, -1483.000000, 0.005000, 1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc 0x00B00168 [30.000000 -1483.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
