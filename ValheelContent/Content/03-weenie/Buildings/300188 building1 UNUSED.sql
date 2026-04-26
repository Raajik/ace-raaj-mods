DELETE FROM `weenie` WHERE `class_Id` = 300188;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300188, 'testbuilding9', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300188,   1,        128) /* ItemType - Misc */
     , (300188,  16,         48) /* ItemUseable - ViewedRemote */
     , (300188,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300188, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300188,   1, True ) /* Stuck */
     , (300188,  11, True ) /* IgnoreCollisions */
     , (300188,  13, False) /* Ethereal */
     , (300188,  14, False) /* GravityStatus */
     , (300188,  19, True ) /* Attackable */
     , (300188,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300188,  39,      1) /* DefaultScale */
     , (300188,  44,      -1) /* TimeToRot */
     , (300188,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300188,   1, 'test building 9') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300188,   1,   33561188) /* Setup */
     , (300188,   2,  150995355) /* MotionTable */
     , (300188,   3,  536871001) /* SoundTable */
     , (300188,   8,  100676956) /* Icon */
     , (300188,  22,  872415328) /* PhysicsEffectTable */;