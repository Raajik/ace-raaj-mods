DELETE FROM `weenie` WHERE `class_Id` = 802189;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802189, 'SR Exit Portal', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802189,   1,      65536) /* ItemType - Portal */
     , (802189,  16,         32) /* ItemUseable - Remote */
     , (802189,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802189, 111,         32) /* PortalBitmask - NoRecall */
     , (802189, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802189,   1, True ) /* Stuck */
     , (802189,  12, True ) /* ReportCollisions */
     , (802189,  13, True ) /* Ethereal */
     , (802189,  14, False) /* GravityStatus */
     , (802189,  15, True ) /* LightsStatus */
     , (802189,  19, True ) /* Attackable */
     , (802189,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802189,  54, -0.100000001490116) /* UseRadius */
     , (802189,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802189,   1, 'Exit Portal') /* Name */
     , (802189,  37, 'PartThreeDone') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802189,   1,   33554867) /* Setup */
     , (802189,   2,  150994947) /* MotionTable */
     , (802189,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802189, 2, 459077, 70, -80, 0.005, 1, 0, 0, 0) /* Destination */
/* @teleloc 0x00070145 [70.000000 -80.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
