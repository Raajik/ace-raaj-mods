DELETE FROM `weenie` WHERE `class_Id` = 300186;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300186, 'testbuilding8', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300186,   1,        128) /* ItemType - Misc */
     , (300186,  16,         48) /* ItemUseable - ViewedRemote */
     , (300186,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300186, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300186,   1, True ) /* Stuck */
     , (300186,  11, True ) /* IgnoreCollisions */
     , (300186,  13, False) /* Ethereal */
     , (300186,  14, False) /* GravityStatus */
     , (300186,  19, True ) /* Attackable */
     , (300186,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300186,  39,      1) /* DefaultScale */
     , (300186,  44,      -1) /* TimeToRot */
     , (300186,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300186,   1, 'test building 8') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300186,   1,   33558385) /* Setup */
     , (300186,   2,  150995103) /* MotionTable */
     , (300186,   3,  536870981) /* SoundTable */
     , (300186,   8,  100667624) /* Icon */
     , (300186,  22,  872415275) /* PhysicsEffectTable */
     , (300186,  24,  268435537) /* UseTargetAnimation - Twitch1 */;