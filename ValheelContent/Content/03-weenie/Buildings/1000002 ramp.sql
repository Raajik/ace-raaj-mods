DELETE FROM `weenie` WHERE `class_Id` = 1000002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000002, 'ramp', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000002,   1,        128) /* ItemType - Misc */
     , (1000002,  16,         48) /* ItemUseable - ViewedRemote */
     , (1000002,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (1000002, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000002,   1, True ) /* Stuck */
     , (1000002,  11, True ) /* IgnoreCollisions */
     , (1000002,  13, False) /* Ethereal */
     , (1000002,  14, False) /* GravityStatus */
     , (1000002,  19, True ) /* Attackable */
     , (1000002,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000002,  39,      1) /* DefaultScale */
     , (1000002,  44,      -1) /* TimeToRot */
     , (1000002,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000002,   1, 'Ramp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000002,   1,   33561583) /* Setup */
     , (1000002,   2,  150995103) /* MotionTable */
     , (1000002,   3,  536870981) /* SoundTable */
     , (1000002,   8,  100667624) /* Icon */
     , (1000002,  22,  872415275) /* PhysicsEffectTable */
     , (1000002,  24,  268435537) /* UseTargetAnimation - Twitch1 */;