DELETE FROM `weenie` WHERE `class_Id` = 1000003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000003, 'platformbase', 26, '2020-01-08 07:59:45') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000003,   1,        128) /* ItemType - Misc */
     , (1000003,  16,         48) /* ItemUseable - ViewedRemote */
     , (1000003,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (1000003, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000003,   1, True ) /* Stuck */
     , (1000003,  11, True ) /* IgnoreCollisions */
     , (1000003,  13, False) /* Ethereal */
     , (1000003,  14, False) /* GravityStatus */
     , (1000003,  19, True ) /* Attackable */
     , (1000003,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000003,  39,      1) /* DefaultScale */
     , (1000003,  44,      -1) /* TimeToRot */
     , (1000003,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000003,   1, 'Platform base') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000003,   1,   33561585) /* Setup */
     , (1000003,   2,  150995103) /* MotionTable */
     , (1000003,   3,  536870981) /* SoundTable */
     , (1000003,   8,  100667624) /* Icon */
     , (1000003,  22,  872415275) /* PhysicsEffectTable */
     , (1000003,  24,  268435537) /* UseTargetAnimation - Twitch1 */;