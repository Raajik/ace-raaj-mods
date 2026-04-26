DELETE FROM `weenie` WHERE `class_Id` = 800318;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800318, 'Fortress Defenders Attackers', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800318,   1,      65536) /* ItemType - Portal */
     , (800318,  16,         32) /* ItemUseable - Remote */
     , (800318,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800318,  86,        275) /* MinLevel */
     , (800318,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800318, 111,         16) /* PortalBitmask - No Summon */
     , (800318, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800318,   1, True ) /* Stuck */
     , (800318,  11, False) /* IgnoreCollisions */
     , (800318,  12, True ) /* ReportCollisions */
     , (800318,  13, True ) /* Ethereal */
     , (800318,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800318,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800318,   1, 'Fortress Defenders Attackers') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800318,   1, 0x020005D5) /* Setup */
     , (800318,   2, 0x09000003) /* MotionTable */
     , (800318,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800318, 2, 0xEC0D0033, 147.925949, 49.121048, 0.005000, -0.999807, 0.000000, 0.000000, -0.019659) /* Destination */
/* @teleloc  0xEC0D0033 [147.925949 49.121048 0.005000] -0.999807 0.000000 0.000000 -0.019659 */;
