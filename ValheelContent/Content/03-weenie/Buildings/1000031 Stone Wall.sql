DELETE FROM `weenie` WHERE `class_Id` = 1000031;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000031, 'Stone Wall', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000031,   1,        128) /* ItemType - Misc */
     , (1000031,   8,        500) /* Mass */
     , (1000031,  16,         32) /* ItemUseable - Remote */
     , (1000031,  19,          0) /* Value */
     , (1000031,  38,         50) /* ResistLockpick */
     , (1000031,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000031,   1, True ) /* Stuck */
     , (1000031,  11, False) /* IgnoreCollisions */
     , (1000031,  12, True ) /* ReportCollisions */
     , (1000031,  13, False) /* Ethereal */
     , (1000031,  14, False) /* GravityStatus */
     , (1000031,  19, True ) /* Attackable */
     , (1000031,  24, True ) /* UiHidden */
     , (1000031,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000031,  11,     300) /* ResetInterval */
     , (1000031,  39,       4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000031,   1, 'Stone Wall') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000031,   1,   33560558) /* Setup */
     , (1000031,   2,  150995418) /* MotionTable */
     , (1000031,   3,  536871119) /* SoundTable */
     , (1000031,   8,  100689885) /* Icon */
     , (1000031,  22,  872415325) /* PhysicsEffectTable */;
