DELETE FROM `weenie` WHERE `class_Id` = 801793;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801793, 'Nemesis Hideout', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801793,   1,      65536) /* ItemType - Portal */
     , (801793,  16,         32) /* ItemUseable - Remote */
     , (801793,  86,         700) /* MinLevel */
     , (801793,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801793, 111,         32) /* PortalBitmask - NoRecall */
     , (801793, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801793,   1, True ) /* Stuck */
     , (801793,  11, False) /* IgnoreCollisions */
     , (801793,  12, True ) /* ReportCollisions */
     , (801793,  13, True ) /* Ethereal */
     , (801793,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801793,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801793,   1, 'Nemesis Hideout') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801793,   1,   33554867) /* Setup */
     , (801793,   2,  150994947) /* MotionTable */
     , (801793,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801793, 2, 25887121, 50, -10, 0, -0.003491, 0, 0, -0.999994) /* Destination */
/* @teleloc 0x018B0191 [50.000000 -10.000000 0.000000] -0.003491 0.000000 0.000000 -0.999994 */;
