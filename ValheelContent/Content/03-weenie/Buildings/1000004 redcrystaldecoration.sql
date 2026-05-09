DELETE FROM `weenie` WHERE `class_Id` = 1000004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000004, 'redcrystaldecoration', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000004,   1,        128) /* ItemType - Misc */
     , (1000004,  16,         48) /* ItemUseable - ViewedRemote */
     , (1000004,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (1000004, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000004,   1, True ) /* Stuck */
     , (1000004,  11, True ) /* IgnoreCollisions */
     , (1000004,  13, False) /* Ethereal */
     , (1000004,  14, False) /* GravityStatus */
     , (1000004,  19, True ) /* Attackable */
     , (1000004,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000004,  39,      1) /* DefaultScale */
     , (1000004,  44,      -1) /* TimeToRot */
     , (1000004,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000004,   1, 'Red Crystal Decoration') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000004,   1,   33561586) /* Setup */
     , (1000004,   2,  150995103) /* MotionTable */
     , (1000004,   3,  536870981) /* SoundTable */
     , (1000004,   8,  100667624) /* Icon */
     , (1000004,  22,  872415275) /* PhysicsEffectTable */
     , (1000004,  24,  268435537) /* UseTargetAnimation - Twitch1 */;