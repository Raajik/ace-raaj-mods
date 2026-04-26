DELETE FROM `weenie` WHERE `class_Id` = 1000088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000089, 'IceBrazier3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000089,   1,        128) /* ItemType - Misc */
     , (1000089,   3,         13) /* PaletteTemplate - White */
     , (1000089,   8,        500) /* Mass */
     , (1000089,  16,         32) /* ItemUseable - Remote */
     , (1000089,  19,          0) /* Value */
     , (1000089,  38,         50) /* ResistLockpick */
     , (1000089,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000089,   1, True ) /* Stuck */
     , (1000089,  11, False) /* IgnoreCollisions */
     , (1000089,  12, True ) /* ReportCollisions */
     , (1000089,  13, False) /* Ethereal */
     , (1000089,  14, False) /* GravityStatus */
     , (1000089,  19, True ) /* Attackable */
     , (1000089,  24, True ) /* UiHidden */
     , (1000089,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000089,  11,     300) /* ResetInterval */
     , (1000089,  39,       0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000089,   1, 'Ice Brazier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000089,   1,  33561552) /* Setup */
     , (1000089,   2,  0x09000016) /* MotionTable */
     , (1000089,   3,  536871119) /* SoundTable */
     , (1000089,   8,  100689885) /* Icon */
     , (1000089,  22,  0x3400002B) /* PhysicsEffectTable */;
