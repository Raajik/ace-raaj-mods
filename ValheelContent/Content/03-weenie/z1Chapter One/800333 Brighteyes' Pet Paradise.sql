DELETE FROM `weenie` WHERE `class_Id` = 800333;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800333, 'Brighteyes'' Pet Paradise2', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800333,   1,      65536) /* ItemType - Portal */
     , (800333,  16,         32) /* ItemUseable - Remote */
     , (800333,  86,        180) /* MinLevel */
     , (800333,  87,        250) /* MaxLevel */
     , (800333,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800333, 111,         32) /* PortalBitmask - NoRecall */
     , (800333, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800333,   1, True ) /* Stuck */
     , (800333,  11, False) /* IgnoreCollisions */
     , (800333,  12, True ) /* ReportCollisions */
     , (800333,  13, True ) /* Ethereal */
     , (800333,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800333,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800333,   1, 'Brighteyes'' Pet Paradise') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800333,   1,   33555923) /* Setup */
     , (800333,   2,  150994947) /* MotionTable */
     , (800333,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800333, 2, 17105781, 100, -210, 0, 0.707107, 0, 0, -0.707107) /* Destination */
/* @teleloc 0x01050375 [100.000000 -210.000000 0.000000] 0.707107 0.000000 0.000000 -0.707107 */;
