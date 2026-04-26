DELETE FROM `weenie` WHERE `class_Id` = 1000001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000001, 'inactiveportal', 7, '2021-11-01 00:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000001,   1,      65536) /* ItemType - Portal */
     , (1000001,  16,          1) /* ItemUseable - No */
     , (1000001,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (1000001, 111,         49) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000001,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000001,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000001,   1, 'Inactive Portal') /* Name */
     , (1000001,  16, 'This portal has been destroyed. It is no longer useable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000001,   1,   33561060) /* Setup */
     , (1000001,   2,  150995314) /* MotionTable */
     , (1000001,   8,  100667499) /* Icon */;
