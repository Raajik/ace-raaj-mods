DELETE FROM `weenie` WHERE `class_Id` = 800496;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800496, 'New Vhorma', 7, '2020-01-08 07:59:44') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800496,   1,      65536) /* ItemType - Portal */
     , (800496,  16,         32) /* ItemUseable - Remote */
     , (800496,  86,        275) /* MinLevel */
     , (800496,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800496, 111,         32) /* PortalBitmask - NoRecall */
     , (800496, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800496,   1, True ) /* Stuck */
     , (800496,  11, False) /* IgnoreCollisions */
     , (800496,  12, True ) /* ReportCollisions */
     , (800496,  13, True ) /* Ethereal */
     , (800496,  14, True ) /* GravityStatus */
     , (800496,  15, True ) /* LightsStatus */
     , (800496,  19, True ) /* Attackable */
     , (800496,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800496,  54, -0.100000001490116) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800496,   1, 'New Vhorma') /* Name */
     , (800496,  16, 'You must be flagged by the Guardian of New Vhorma to enter this portal.') /* LongDesc */
     , (800496,  37, 'AccessToNewVhorma') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800496,   1,   33555923) /* Setup */
     , (800496,   2,  150994947) /* MotionTable */
     , (800496,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800496, 2, 4057595955, 163.562, 70.9545, 0.005, -0.76653, 0, 0, 0.642208) /* Destination */
/* @teleloc 0xF1DA0033 [163.561996 70.954498 0.005000] -0.766530 0.000000 0.000000 0.642208 */;
