DELETE FROM `weenie` WHERE `class_Id` = 1000097;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000097, 'platform2', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000097,   1,        128) /* ItemType - Misc */
     , (1000097,  16,         48) /* ItemUseable - ViewedRemote */
     , (1000097,  93,       1048) /* PhysicsState - ReportCollisions, Gravity */
     , (1000097, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000097,   1, True ) /* Stuck */
     , (1000097,  11, True ) /* IgnoreCollisions */
     , (1000097,  13, False) /* Ethereal */
     , (1000097,  14, False) /* GravityStatus */
     , (1000097,  19, True ) /* Attackable */
     , (1000097,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000097,  39,      0.5) /* DefaultScale */
     , (1000097,  44,       -1) /* TimeToRot */
     , (1000097,  54,        1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000097,   1, 'Platform2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000097,   1,   33561584) /* Setup */
     , (1000097,   2,  150995103) /* MotionTable */
     , (1000097,   3,  536870981) /* SoundTable */
     , (1000097,   8,  100667624) /* Icon */
     , (1000097,  22,  872415275) /* PhysicsEffectTable */
     , (1000097,  24,  268435537) /* UseTargetAnimation - Twitch1 */;