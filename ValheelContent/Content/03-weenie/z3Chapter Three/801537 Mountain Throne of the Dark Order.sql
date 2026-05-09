DELETE FROM `weenie` WHERE `class_Id` = 801537;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801537, 'Mountain Throne of the Dark Order', 7, '2021-11-01 00:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801537,   1,      65536) /* ItemType - Portal */
     , (801537,  16,         32) /* ItemUseable - Remote */
     , (801537,  86,        400) /* MinLevel */
     , (801537,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801537, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (801537, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801537,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801537,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801537,   1, 'Mountain Throne of the Dark Order') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801537,   1,   33554867) /* Setup */
     , (801537,   2,  150994947) /* MotionTable */
     , (801537,   6,   67109370) /* PaletteBase */
     , (801537,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801537, 2, 3855810615, 147.977737, 156.034012, 219.673523, 0.721488, 0, 0, -0.692427) /* Destination */
/* @teleloc 0xE5D30037 [147.977737 156.034012 219.673523] 0.721488 0.000000 0.000000 -0.692427 */;
