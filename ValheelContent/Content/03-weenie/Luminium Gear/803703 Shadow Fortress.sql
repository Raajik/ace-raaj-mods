DELETE FROM `weenie` WHERE `class_Id` = 803703;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803703, 'ShadowFortressPortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803703,   1,      65536) /* ItemType - Portal */
     , (803703,  16,         32) /* ItemUseable - Remote */
     , (803703,  86,       4500) /* MinLevel */
     , (803703,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803703, 111,         32) /* PortalBitmask - NoRecall */
     , (803703, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803703,   1, True ) /* Stuck */
     , (803703,  11, False) /* IgnoreCollisions */
     , (803703,  12, True ) /* ReportCollisions */
     , (803703,  13, True ) /* Ethereal */
     , (803703,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803703,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803703,   1, 'Shadow Fortress') /* Name */
     /* , (803703,  37, 'ArramoraBegins') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803703,   1,   33555923) /* Setup */
     , (803703,   2,  150994947) /* MotionTable */
     , (803703,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803703, 2, 0x228E003A, 184.735168, 34.654034, 260.005005, -0.996647, 0, 0, -0.081816) /* Destination */
/* @teleloc  0x228E003A [184.735168 34.654034 260.005005] -0.996647 0.000000 0.000000 -0.081816 */;
