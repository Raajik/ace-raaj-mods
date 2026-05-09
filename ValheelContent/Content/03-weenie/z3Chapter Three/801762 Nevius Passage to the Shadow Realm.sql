DELETE FROM `weenie` WHERE `class_Id` = 801762;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801762, 'NeviusPassage2', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801762,   1,      65536) /* ItemType - Portal */
     , (801762,  16,         32) /* ItemUseable - Remote */
     , (801762,  86,        415) /* MinLevel */
     , (801762,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801762, 111,         16) /* PortalBitmask - Unrestricted */
     , (801762, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801762,   1, True ) /* Stuck */
     , (801762,  11, False) /* IgnoreCollisions */
     , (801762,  12, True ) /* ReportCollisions */
     , (801762,  13, True ) /* Ethereal */
     , (801762,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801762,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801762,   1, 'Nevius Passage to the Shadow Realm') /* Name */
     , (801762,  16, 'You must be Prestige level 1 to enter.') /* LongDesc */
     , (801762,  37, 'PrestigeComplete') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801762,   1,   33555923) /* Setup */
     , (801762,   2,  150994947) /* MotionTable */
     , (801762,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801762, 2, 21758296, 170, -170, 0, -0.707107, 0, 0, -0.707107) /* Destination */
/* @teleloc 0x014C0158 [170.000000 -170.000000 0.000000] -0.707107 0.000000 0.000000 -0.707107 */;
