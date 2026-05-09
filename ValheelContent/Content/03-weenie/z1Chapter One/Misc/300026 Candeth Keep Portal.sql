DELETE FROM `weenie` WHERE `class_Id` = 300026;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300026, 'aetheriaquestportal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300026,   1,      65536) /* ItemType - Portal */
     , (300026,  16,         32) /* ItemUseable - Remote */
     , (300026,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (300026, 111,          1) /* PortalBitmask - Unrestricted */
     , (300026, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300026,   1, True ) /* Stuck */
     , (300026,  11, False) /* IgnoreCollisions */
     , (300026,  12, True ) /* ReportCollisions */
     , (300026,  13, True ) /* Ethereal */
     , (300026,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300026,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300026,   1, 'Empyrean Facility Upper Level') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300026,   1,   33554867) /* Setup */
     , (300026,   2,  150994947) /* MotionTable */
     , (300026,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300026, 2, 0x2545002e, 120.642, 1.549, 10.112, 0.087156, 0, 0, -0.996195) /* Destination */
/* @teleloc 0x2545002e [130.006 129.677 -0.063] 1 0 0 0*/;
