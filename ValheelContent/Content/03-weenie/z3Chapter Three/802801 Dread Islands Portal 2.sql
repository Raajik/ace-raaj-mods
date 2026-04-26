DELETE FROM `weenie` WHERE `class_Id` = 802801;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802801, 'dreadislandsportal2', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802801,   1,      65536) /* ItemType - Portal */
     , (802801,  16,         32) /* ItemUseable - Remote */
     , (802801,  86,        400) /* MinLevel */
     , (802801,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802801, 111,         32) /* PortalBitmask - NoRecall */
     , (802801, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802801,   1, True ) /* Stuck */
     , (802801,  11, False) /* IgnoreCollisions */
     , (802801,  12, True ) /* ReportCollisions */
     , (802801,  13, True ) /* Ethereal */
     , (802801,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802801,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802801,   1, 'Dread Islands Portal') /* Name */
     , (802801,  16, 'You must be deemed worthy by Vincent Lee before you may enter this portal.') /* LongDesc */
     , (802801,  37, 'Chapter3Start') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802801,   1,   33555922) /* Setup */
     , (802801,   2,  150994947) /* MotionTable */
     , (802801,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802801, 2, 0xE4D60014, 58.117764, 82.428085, 8.005001, -0.007978, 0, 0, 0.999968) /* Destination */
/* @teleloc 0xE4D60014 [58.117764 82.428085 8.005001] -0.007978 0.000000 0.000000 0.999968 */;
