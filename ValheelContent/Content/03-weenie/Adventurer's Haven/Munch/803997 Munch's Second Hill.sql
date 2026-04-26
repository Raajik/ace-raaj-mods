DELETE FROM `weenie` WHERE `class_Id` = 803997;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803997, 'munchsecondhill', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803997,   1,      65536) /* ItemType - Portal */
     , (803997,  16,         32) /* ItemUseable - Remote */
     , (803997,  86,          1) /* MinLevel */
     , (803997,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803997, 111,         32) /* PortalBitmask - NoRecallTie */
     , (803997, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803997,   1, True ) /* Stuck */
     , (803997,  11, False) /* IgnoreCollisions */
     , (803997,  12, True ) /* ReportCollisions */
     , (803997,  13, True ) /* Ethereal */
     , (803997,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803997,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803997,   1, 'Munch''s Second Hill') /* Name */
     , (803997,  16, 'No Entry') /* LongDesc */
     , (803997,  37, 'Munch2Completed') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803997,   1,   33555923) /* Setup */
     , (803997,   2,  150994947) /* MotionTable */
     , (803997,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803997, 2, 0x11890009, 33.593185, 10.624552, 142.004990, -0.025174, 0, 0, -0.999683) /* Destination */
/* @teleloc 0x11890009 [33.593185 10.624552 142.004990] -0.025174 0.000000 0.000000 -0.999683 */;
