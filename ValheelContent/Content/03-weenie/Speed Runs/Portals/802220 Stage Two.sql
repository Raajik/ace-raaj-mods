DELETE FROM `weenie` WHERE `class_Id` = 802220;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802220, 'Stage Two Portal3', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802220,   1,      65536) /* ItemType - Portal */
     , (802220,  16,         32) /* ItemUseable - Remote */
     , (802220,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802220, 111,         32) /* PortalBitmask - NoRecall */
     , (802220, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802220,   1, True ) /* Stuck */
     , (802220,  12, True ) /* ReportCollisions */
     , (802220,  13, True ) /* Ethereal */
     , (802220,  14, False) /* GravityStatus */
     , (802220,  15, True ) /* LightsStatus */
     , (802220,  19, True ) /* Attackable */
     , (802220,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802220,  54, -0.100000001490116) /* UseRadius */
     , (802220,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802220,   1, 'Stage Two') /* Name */
     , (802220,  37, 'PartOneDone') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802220,   1,   33554867) /* Setup */
     , (802220,   2,  150994947) /* MotionTable */
     , (802220,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802220, 2, 2449605150, 50, -53.759, 0.005, 0, 0, 0, -1) /* Destination */
/* @teleloc 0x9202021E [50.000000 -53.758999 0.005000] 0.000000 0.000000 0.000000 -1.000000 */;
