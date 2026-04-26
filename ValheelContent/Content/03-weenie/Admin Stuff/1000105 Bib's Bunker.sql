DELETE FROM `weenie` WHERE `class_Id` = 1000105;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000105, 'bibbunkerportal', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000105,   1,      65536) /* ItemType - Portal */
     , (1000105,  16,         32) /* ItemUseable - Remote */
     , (1000105,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (1000105,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (1000105, 111,         32) /* PortalBitmask - NoRecall */
     , (1000105, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000105,   1, True ) /* Stuck */
     , (1000105,  11, False) /* IgnoreCollisions */
     , (1000105,  12, True ) /* ReportCollisions */
     , (1000105,  13, True ) /* Ethereal */
     , (1000105,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000105,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000105,   1, 'Bib''s Bunker') /* Name */
     , (1000105,  37, 'BibBoosted') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000105,   1,   33555925) /* Setup */
     , (1000105,   2,  150994947) /* MotionTable */
     , (1000105,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (1000105, 2, 3574464531, 51.0523, 62.4215, 4.02137, 0, 0, 0, -1) /* Destination */
/* @teleloc 0xD50E0013 [51.052299 62.421501 4.021370] 0.000000 0.000000 0.000000 -1.000000 */;
