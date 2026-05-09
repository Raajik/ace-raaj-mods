DELETE FROM `weenie` WHERE `class_Id` = 803017;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803017, 'Corcimas CastleHC1000', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803017,   1,      65536) /* ItemType - Portal */
     , (803017,  16,         32) /* ItemUseable - Remote */
     , (803017,  86,         1000) /* MinLevel */
     , (803017,  87,         1500) /* MinLevel */
     , (803017,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803017, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (803017, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803017,   1, True ) /* Stuck */
     , (803017,  11, False) /* IgnoreCollisions */
     , (803017,  12, True ) /* ReportCollisions */
     , (803017,  13, True ) /* Ethereal */
     , (803017,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803017,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803017,   1, 'Corcima''s Castle (Level 1000 - 1500)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803017,   1,   33554867) /* Setup */
     , (803017,   2,  150994947) /* MotionTable */
     , (803017,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803017, 2, 0x40E6001E, 95.915298, 133.938934, 160.004990, 0.008094, 0, 0, -0.999967) /* Destination */
/* @teleloc   0x40E6001E [95.915298 133.938934 160.004990] 0.008094 0.000000 0.000000 -0.999967 */;
