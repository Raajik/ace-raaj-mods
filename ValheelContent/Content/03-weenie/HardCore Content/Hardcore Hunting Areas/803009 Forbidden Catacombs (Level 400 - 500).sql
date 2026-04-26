DELETE FROM `weenie` WHERE `class_Id` = 803009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803009, 'Forbidden CatacombsHC', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803009,   1,      65536) /* ItemType - Portal */
     , (803009,  16,         32) /* ItemUseable - Remote */
     , (803009,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803009, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (803009, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803009,   1, True ) /* Stuck */
     , (803009,  11, False) /* IgnoreCollisions */
     , (803009,  12, True ) /* ReportCollisions */
     , (803009,  13, True ) /* Ethereal */
     , (803009,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803009,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803009,   1, 'Forbidden Catacombs (Level 400 - 700)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803009,   1,   33554867) /* Setup */
     , (803009,   2,  150994947) /* MotionTable */
     , (803009,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803009, 2, 0x604B049C, 129.902664, -139.864120, 0.005000, 0.709394, 0, 0, -0.704812) /* Destination */
/* @teleloc  0x604B049C [129.902664 -139.864120 0.005000] 0.709394 0.000000 0.000000 -0.704812 */;
