DELETE FROM `weenie` WHERE `class_Id` = 803995;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803995, 'munchcourseportal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803995,   1,      65536) /* ItemType - Portal */
     , (803995,  16,         32) /* ItemUseable - Remote */
     , (803995,  86,          1) /* MinLevel */
     , (803995,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803995, 111,         32) /* PortalBitmask - NoRecallTie */
     , (803995, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803995,   1, True ) /* Stuck */
     , (803995,  11, False) /* IgnoreCollisions */
     , (803995,  12, True ) /* ReportCollisions */
     , (803995,  13, True ) /* Ethereal */
     , (803995,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803995,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803995,   1, 'Munch''s Portal') /* Name */
     , (803995,  16, 'No Entry') /* LongDesc */
     , (803995,  37, 'MunchCompleted') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803995,   1,   33555923) /* Setup */
     , (803995,   2,  150994947) /* MotionTable */
     , (803995,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803995, 2, 0x158D003A, 187.979919, 27.346519, 149.056107, -0.708034, 0, 0, 0.706179) /* Destination */
/* @teleloc 0x158D003A [187.979919 27.346519 149.056107] -0.708034 0.000000 0.000000 0.706179 */;
