DELETE FROM `weenie` WHERE `class_Id` = 880018;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880018, 'Crum Token', 51, '2023-02-25 11:49:55') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880018,   1,        128) /* ItemType - Misc */
     , (880018,   5,          5) /* EncumbranceVal */
     , (880018,  16,          1) /* ItemUseable - No */
     , (880018,  19,        100) /* Value */
     , (880018,  33,          1) /* Bonded - Bonded */
     , (880018,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (880018, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880018,   1, False) /* Stuck */
     , (880018,  11, True ) /* IgnoreCollisions */
     , (880018,  13, True ) /* Ethereal */
     , (880018,  14, True ) /* GravityStatus */
     , (880018,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880018,   1, 'Crum Token') /* Name */
     , (880018,  14, 'Hand This To Henry Montana for a great reward.') /* Use */
     , (880018,  16, 'A Token dropped from the hardest boss on the starter island.') /* LongDesc */
     , (880018,  33, 'TheCrumTokenPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880018,   1, 0x02000172) /* Setup */
     , (880018,   3, 0x20000014) /* SoundTable */
     , (880018,   8, 0x0600740B) /* Icon */
     , (880018,  22, 0x3400002B) /* PhysicsEffectTable */
     , (880018,  52, 0x060065FC) /* IconUnderlay */;

