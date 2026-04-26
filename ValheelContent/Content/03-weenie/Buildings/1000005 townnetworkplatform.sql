DELETE FROM `weenie` WHERE `class_Id` = 1000005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000005, 'townnetworkplatform', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000005,   1,        128) /* ItemType - Misc */
     , (1000005,  16,         48) /* ItemUseable - ViewedRemote */
     , (1000005,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (1000005, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000005,   1, True ) /* Stuck */
     , (1000005,  11, True ) /* IgnoreCollisions */
     , (1000005,  13, False) /* Ethereal */
     , (1000005,  14, False) /* GravityStatus */
     , (1000005,  19, True ) /* Attackable */
     , (1000005,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000005,  39,      1) /* DefaultScale */
     , (1000005,  44,      -1) /* TimeToRot */
     , (1000005,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000005,   1, 'Town Network Platform') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000005,   1,   33561059) /* Setup */
     , (1000005,   2,  150995103) /* MotionTable */
     , (1000005,   3,  536870981) /* SoundTable */
     , (1000005,   8,  100667624) /* Icon */
     , (1000005,  22,  872415275) /* PhysicsEffectTable */
     , (1000005,  24,  268435537) /* UseTargetAnimation - Twitch1 */;