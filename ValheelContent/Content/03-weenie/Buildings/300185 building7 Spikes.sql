DELETE FROM `weenie` WHERE `class_Id` = 300185;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300185, 'testbuilding7', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300185,   1,        128) /* ItemType - Misc */
     , (300185,  16,         48) /* ItemUseable - ViewedRemote */
     , (300185,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300185, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300185,   1, True ) /* Stuck */
     , (300185,  11, True ) /* IgnoreCollisions */
     , (300185,  13, False) /* Ethereal */
     , (300185,  14, False) /* GravityStatus */
     , (300185,  19, True ) /* Attackable */
     , (300185,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300185,  39,      1) /* DefaultScale */
     , (300185,  44,      -1) /* TimeToRot */
     , (300185,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300185,   1, 'test building 7') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300185,   1,   33558695) /* Setup */
     , (300185,   2,  150995103) /* MotionTable */
     , (300185,   3,  536870981) /* SoundTable */
     , (300185,   8,  100667624) /* Icon */
     , (300185,  22,  872415275) /* PhysicsEffectTable */
     , (300185,  24,  268435537) /* UseTargetAnimation - Twitch1 */;