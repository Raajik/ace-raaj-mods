DELETE FROM `weenie` WHERE `class_Id` = 801788;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801788, 'Infested Dungeon Muddy', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801788,   1,      65536) /* ItemType - Portal */
     , (801788,  16,         32) /* ItemUseable - Remote */
     , (801788,  86,         700) /* MinLevel */
     , (801788,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801788, 111,         32) /* PortalBitmask - NoRecall */
     , (801788, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801788,   1, True ) /* Stuck */
     , (801788,  11, False) /* IgnoreCollisions */
     , (801788,  12, True ) /* ReportCollisions */
     , (801788,  13, True ) /* Ethereal */
     , (801788,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801788,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801788,   1, 'Infested Dungeon Muddy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801788,   1,   33555922) /* Setup */
     , (801788,   2,  150994947) /* MotionTable */
     , (801788,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801788, 2, 28705024, 0.24, -0.7, 0, 0.008552, 0, 0, -0.999964) /* Destination */
/* @teleloc 0x01B60100 [0.240000 -0.700000 0.000000] 0.008552 0.000000 0.000000 -0.999964 */;
