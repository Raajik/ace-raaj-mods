DELETE FROM `weenie` WHERE `class_Id` = 300184;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300184, 'testbuilding6', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300184,   1,        128) /* ItemType - Misc */
     , (300184,  16,         48) /* ItemUseable - ViewedRemote */
     , (300184,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300184, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300184,   1, True ) /* Stuck */
     , (300184,  11, True ) /* IgnoreCollisions */
     , (300184,  13, False) /* Ethereal */
     , (300184,  14, False) /* GravityStatus */
     , (300184,  19, True ) /* Attackable */
     , (300184,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300184,  39,      1) /* DefaultScale */
     , (300184,  44,      -1) /* TimeToRot */
     , (300184,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300184,   1, 'test building 6') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300184,   1,   33560389) /* Setup */
     , (300184,   2,  150995355) /* MotionTable */
     , (300184,   3,  536871001) /* SoundTable */
     , (300184,   8,  100676956) /* Icon */
     , (300184,  22,  872415328) /* PhysicsEffectTable */;