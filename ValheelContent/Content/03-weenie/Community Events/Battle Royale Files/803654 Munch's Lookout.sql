DELETE FROM `weenie` WHERE `class_Id` = 803654;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803654, 'MunchsLookout', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803654,   1,      65536) /* ItemType - Portal */
     , (803654,  16,         32) /* ItemUseable - Remote */
     , (803654,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803654, 111,         32) /* PortalBitmask - NoRecall */
     , (803654, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803654,   1, True ) /* Stuck */
     , (803654,  11, False) /* IgnoreCollisions */
     , (803654,  12, True ) /* ReportCollisions */
     , (803654,  13, True ) /* Ethereal */
     , (803654,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803654,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803654,   1, 'Munch''s Lookout') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803654,   1,   33554867) /* Setup */
     , (803654,   2,  150994947) /* MotionTable */
     , (803654,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803654, 2, 0xCD410023, 107.102364, 54.903728, 80.468559,  0.999968, 0, 0, -0.008001) /* Destination */
/* /teleloc  0xCD410023 [107.102364 54.903728 80.468559] 0.999968 0.000000 0.000000 -0.008001 */;
