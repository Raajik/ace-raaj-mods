DELETE FROM `weenie` WHERE `class_Id` = 803280;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803280, 'Imperial Gods Hall', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803280,   1,      65536) /* ItemType - Portal */
     , (803280,  16,         32) /* ItemUseable - Remote */
     , (803280,  86,      10000) /* MinLevel */
     , (803280,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803280, 111,         32) /* PortalBitmask - NoRecall */
     , (803280, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803280,   1, True ) /* Stuck */
     , (803280,  11, False) /* IgnoreCollisions */
     , (803280,  12, True ) /* ReportCollisions */
     , (803280,  13, True ) /* Ethereal */
     , (803280,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803280,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803280,   1, 'Imperial Gods Hall') /* Name */
     /* , (803280,  37, 'DarkPortal') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803280,   1,   33554867) /* Setup */
     , (803280,   2,  150994947) /* MotionTable */
     , (803280,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803280, 2, 0x770401AD, 10.550986, -29.927437, 0.005000,  -0.684709, 0, 0, 0.728817) /* Destination */
/* @teleloc 0x770401AD [10.550986 -29.927437 0.005000] -0.684709 0.000000 0.000000 0.728817 */;
