DELETE FROM `weenie` WHERE `class_Id` = 802172;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802172, 'Stage Two Portal', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802172,   1,      65536) /* ItemType - Portal */
     , (802172,  16,         32) /* ItemUseable - Remote */
     , (802172,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802172, 111,         32) /* PortalBitmask - NoRecall */
     , (802172, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802172,   1, True ) /* Stuck */
     , (802172,  12, True ) /* ReportCollisions */
     , (802172,  13, True ) /* Ethereal */
     , (802172,  14, False) /* GravityStatus */
     , (802172,  15, True ) /* LightsStatus */
     , (802172,  19, True ) /* Attackable */
     , (802172,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802172,  54, -0.100000001490116) /* UseRadius */
     , (802172,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802172,   1, 'Stage Two') /* Name */
     , (802172,  37, 'PartOneDone') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802172,   1,   33554867) /* Setup */
     , (802172,   2,  150994947) /* MotionTable */
     , (802172,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802172, 2, 2449736222, 50, -53.759, 0.005, 0, 0, 0, -1) /* Destination */
/* @teleloc 0x9204021E [50.000000 -53.758999 0.005000] 0.000000 0.000000 0.000000 -1.000000 */;
