DELETE FROM `weenie` WHERE `class_Id` = 802204;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802204, 'Stage Two Portal2', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802204,   1,      65536) /* ItemType - Portal */
     , (802204,  16,         32) /* ItemUseable - Remote */
     , (802204,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802204, 111,         32) /* PortalBitmask - NoRecall */
     , (802204, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802204,   1, True ) /* Stuck */
     , (802204,  12, True ) /* ReportCollisions */
     , (802204,  13, True ) /* Ethereal */
     , (802204,  14, False) /* GravityStatus */
     , (802204,  15, True ) /* LightsStatus */
     , (802204,  19, True ) /* Attackable */
     , (802204,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802204,  54, -0.100000001490116) /* UseRadius */
     , (802204,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802204,   1, 'Stage Two') /* Name */
     , (802204,  37, 'PartOneDone') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802204,   1,   33554867) /* Setup */
     , (802204,   2,  150994947) /* MotionTable */
     , (802204,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802204, 2, 2449670686, 50, -53.759, 0.005, 0, 0, 0, -1) /* Destination */
/* @teleloc 0x9203021E [50.000000 -53.758999 0.005000] 0.000000 0.000000 0.000000 -1.000000 */;
