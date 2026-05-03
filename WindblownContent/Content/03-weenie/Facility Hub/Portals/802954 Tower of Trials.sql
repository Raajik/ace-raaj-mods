DELETE FROM `weenie` WHERE `class_Id` = 802954;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802954, 'Tower of Trials', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802954,   1,      65536) /* ItemType - Portal */
     , (802954,  16,         32) /* ItemUseable - Remote */
     , (802954,  86,       1000) /* MinLevel */
     , (802954,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802954, 111,         32) /* PortalBitmask - NoRecall */
     , (802954, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802954,   1, True ) /* Stuck */
     , (802954,  11, False) /* IgnoreCollisions */
     , (802954,  12, True ) /* ReportCollisions */
     , (802954,  13, True ) /* Ethereal */
     , (802954,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802954,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802954,   1, 'Tower of Trials') /* Name */
     /* , (802954,  37, 'ArramoraBegins') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802954,   1,   33555923) /* Setup */
     , (802954,   2,  150994947) /* MotionTable */
     , (802954,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802954, 2, 0x8A630290, -64.000000, 159.270996, -49.594997, -0.707107, 0, 0, -0.707107) /* Destination */
/* @teleloc  0x8A630290 [-64.000000 159.270996 -49.594997] -0.707107 0.000000 0.000000 -0.707107 */;
