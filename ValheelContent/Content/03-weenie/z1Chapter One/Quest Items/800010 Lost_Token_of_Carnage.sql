DELETE FROM `weenie` WHERE `class_Id` = 800010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800010, 'ace800010-lostokenofcarnage', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800010,   1,        128) /* ItemType - Misc */
     , (800010,   5,         10) /* EncumbranceVal */
     , (800010,  16,          1) /* ItemUseable - No */
     , (800010,  19,          0) /* Value */
     , (800010,  33,          1) /* Bonded - Bonded */
     , (800010,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800010, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800010,  22, True ) /* Inscribable */
     , (800010,  23, True ) /* DestroyOnSell */
     , (800010,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800010,   1, 'Lost Token of Carnage') /* Name */
     , (800010,  14, 'A token that will grant you access to Subway Carnage.') /* Use */
     , (800010,  33, 'LostTokenofCarnage') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800010,   1, 0x02000172) /* Setup */
     , (800010,   3, 0x20000014) /* SoundTable */
     , (800010,   8, 0x06006635) /* Icon */
     , (800010,  22, 0x3400002B) /* PhysicsEffectTable */
     , (800010,  50, 0x06006659) /* IconOverlay */;
