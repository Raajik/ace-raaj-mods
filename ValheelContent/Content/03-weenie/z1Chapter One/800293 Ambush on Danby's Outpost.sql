DELETE FROM `weenie` WHERE `class_Id` = 800293;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800293, 'Ambush on Danby''s Outpost', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800293,   1,      65536) /* ItemType - Portal */
     , (800293,  16,         32) /* ItemUseable - Remote */
     , (800293,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800293,  86,        225) /* MinLevel */
     , (800293,  87,        275) /* MaxLevel */
     , (800293,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800293, 111,          32) /* PortalBitmask - Unrestricted */
     , (800293, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800293,   1, True ) /* Stuck */
     , (800293,  11, False) /* IgnoreCollisions */
     , (800293,  12, True ) /* ReportCollisions */
     , (800293,  13, True ) /* Ethereal */
     , (800293,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800293,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800293,   1, 'Ambush on Danby''s Outpost') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800293,   1,   33555925) /* Setup */
     , (800293,   2,  150994947) /* MotionTable */
     , (800293,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800293, 2, 1536950310, 107.511, 129.946, 14.005, -0.011519, 0, 0, 0.999934) /* Destination */
/* @teleloc 0x5B9C0026 [107.511002 129.945999 14.005000] -0.011519 0.000000 0.000000 0.999934 */;
