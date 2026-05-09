DELETE FROM `weenie` WHERE `class_Id` = 801707;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801707, 'Infested Small Ruin', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801707,   1,      65536) /* ItemType - Portal */
     , (801707,  16,         32) /* ItemUseable - Remote */
     , (801707,  86,        400) /* MinLevel */
     , (801707,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801707, 111,         16) /* PortalBitmask - Unrestricted */
     , (801707, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801707,   1, True ) /* Stuck */
     , (801707,  11, False) /* IgnoreCollisions */
     , (801707,  12, True ) /* ReportCollisions */
     , (801707,  13, True ) /* Ethereal */
     , (801707,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801707,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801707,   1, 'Infested Small Ruin') /* Name */
     , (801707,  16, 'You must be Prestige level 1 to enter.') /* LongDesc */
     , (801707,  37, 'PrestigeComplete') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801707,   1,   33555923) /* Setup */
     , (801707,   2,  150994947) /* MotionTable */
     , (801707,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801707, 2, 21496121, 50, -30, 0, 0.71934, 0, 0, -0.694658) /* Destination */
/* @teleloc 0x01480139 [50.000000 -30.000000 0.000000] 0.719340 0.000000 0.000000 -0.694658 */;
