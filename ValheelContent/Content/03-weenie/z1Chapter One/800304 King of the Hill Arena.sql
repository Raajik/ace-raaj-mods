DELETE FROM `weenie` WHERE `class_Id` = 800304;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800304, 'King of the Hill Arena', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800304,   1,      65536) /* ItemType - Portal */
     , (800304,  16,         32) /* ItemUseable - Remote */
     , (800304,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800304,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800304, 111,         16) /* PortalBitmask - No Summon */
     , (800304, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800304,   1, True ) /* Stuck */
     , (800304,  11, False) /* IgnoreCollisions */
     , (800304,  12, True ) /* ReportCollisions */
     , (800304,  13, True ) /* Ethereal */
     , (800304,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800304,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800304,   1, 'King of the Hill Arena') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800304,   1, 0x020005D5) /* Setup */
     , (800304,   2, 0x09000003) /* MotionTable */
     , (800304,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800304, 2, 0x02BE011D, 51.672859, -51.429386, 0.005000, -0.925397, 0.000000, 0.000000, -0.378998) /* Destination */
/* @teleloc  0x02BE011D [51.672859 -51.429386 0.005000] -0.925397 0.000000 0.000000 -0.378998 */;
