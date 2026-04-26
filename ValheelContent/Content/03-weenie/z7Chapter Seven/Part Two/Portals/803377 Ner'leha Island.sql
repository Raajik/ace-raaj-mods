DELETE FROM `weenie` WHERE `class_Id` = 803377;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803377, 'Ner''leha Island', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803377,   1,      65536) /* ItemType - Portal */
     , (803377,  16,         32) /* ItemUseable - Remote */
     , (803377,  86,      10000) /* MinLevel */
     , (803377,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803377, 111,         32) /* PortalBitmask - NoRecall */
     , (803377, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803377,   1, True ) /* Stuck */
     , (803377,  11, False) /* IgnoreCollisions */
     , (803377,  12, True ) /* ReportCollisions */
     , (803377,  13, True ) /* Ethereal */
     , (803377,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803377,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803377,   1, 'Ner''leha Island') /* Name */
     , (803377,  37, 'Ch7Part2') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803377,   1,   33554867) /* Setup */
     , (803377,   2,  150994947) /* MotionTable */
     , (803377,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803377, 2, 0x3C0B0014, 53.645626, 84.673660, 2.007924,  0.702884, 0, 0, -0.711305) /* Destination */
/* @teleloc 0x3C0B0014 [53.645626 84.673660 2.007924] 0.702884 0.000000 0.000000 -0.711305 */;
