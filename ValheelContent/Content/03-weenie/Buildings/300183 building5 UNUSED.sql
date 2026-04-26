DELETE FROM `weenie` WHERE `class_Id` = 300183;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300183, 'testbuilding5', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300183,   1,        128) /* ItemType - Misc */
     , (300183,  16,         48) /* ItemUseable - ViewedRemote */
     , (300183,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300183, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300183,   1, True ) /* Stuck */
     , (300183,  11, True ) /* IgnoreCollisions */
     , (300183,  13, False) /* Ethereal */
     , (300183,  14, False) /* GravityStatus */
     , (300183,  19, True ) /* Attackable */
     , (300183,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300183,  39,      1) /* DefaultScale */
     , (300183,  44,      -1) /* TimeToRot */
     , (300183,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300183,   1, 'test building 5') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300183,   1,   33561233) /* Setup */
     , (300183,   2,  150995355) /* MotionTable */
     , (300183,   3,  536871001) /* SoundTable */
     , (300183,   8,  100676956) /* Icon */
     , (300183,  22,  872415328) /* PhysicsEffectTable */;