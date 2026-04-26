DELETE FROM `weenie` WHERE `class_Id` = 800256;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800256, 'Tradewinds Path1', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800256,   1,      65536) /* ItemType - Portal */
     , (800256,  16,         32) /* ItemUseable - Remote */
     , (800256,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800256, 111,          1) /* PortalBitmask - No Tie, Recall */
     , (800256, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800256,   1, True ) /* Stuck */
     , (800256,  11, False) /* IgnoreCollisions */
     , (800256,  12, True ) /* ReportCollisions */
     , (800256,  13, True ) /* Ethereal */
     , (800256,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800256,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800256,   1, 'City of Tradewind') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800256,   1, 0x020005D5) /* Setup */
     , (800256,   2, 0x09000003) /* MotionTable */
     , (800256,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800256, 2, 0x1393001A, 94.427742, 45.297558, 0.005000, -0.999950, 0.000000, 0.000000, 0.009973) /* Destination */
/* @teleloc   0x1393001A [94.427742 45.297558 0.005000] -0.999950 0.000000 0.000000 0.009973 */;
