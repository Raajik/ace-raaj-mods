DELETE FROM `weenie` WHERE `class_Id` = 800265;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800265, 'Tradewinds Curse', 7, '2021-11-01 00:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800265,   1,      65536) /* ItemType - Portal */
     , (800265,  16,          1) /* ItemUseable - No */
     , (800265,  44,         35) /* Damage */
     , (800265,  45,         16) /* DamageType - Fire */
     , (800265,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800265, 111,         49) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800265,   1, True ) /* Stuck */
     , (800265,   53, True ) /* Damage By Collision  */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800265,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800265,   1, 'Tradewinds Curse') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800265,   1,   33561060) /* Setup */
     , (800265,   2,  150995314) /* MotionTable */
     , (800265,   8,  100667499) /* Icon */;


