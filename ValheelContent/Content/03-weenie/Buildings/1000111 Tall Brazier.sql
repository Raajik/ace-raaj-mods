DELETE FROM `weenie` WHERE `class_Id` = 1000111;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000111, 'Tall Brazier', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000111,   1,        128) /* ItemType - Misc */
     , (1000111,   8,        500) /* Mass */
     , (1000111,  16,         32) /* ItemUseable - Remote */
     , (1000111,  19,          0) /* Value */
     , (1000111,  38,         50) /* ResistLockpick */
     , (1000111,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000111,   1, True ) /* Stuck */
     , (1000111,  11, False) /* IgnoreCollisions */
     , (1000111,  12, True ) /* ReportCollisions */
     , (1000111,  13, False) /* Ethereal */
     , (1000111,  14, False) /* GravityStatus */
     , (1000111,  19, True ) /* Attackable */
     , (1000111,  24, True ) /* UiHidden */
     , (1000111,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000111,  11,     300) /* ResetInterval */
     , (1000111,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000111,   1, 'Short Brazier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000111,   1,   33558565) /* Setup */
     , (1000111,   2,  150995355) /* MotionTable */
     , (1000111,   3,  536871001) /* SoundTable */
     , (1000111,   8,  100676956) /* Icon */
     , (1000111,  22,  872415328) /* PhysicsEffectTable */;
