DELETE FROM `weenie` WHERE `class_Id` = 803215;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803215, 'Fragment of Fire', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803215,   1,       2048) /* ItemType - Gem */
     , (803215,   5,          1) /* EncumbranceVal */
     , (803215,  11,          1) /* MaxStackSize */
     , (803215,  12,          1) /* StackSize */
     , (803215,  13,          1) /* StackUnitEncumbrance */
     , (803215,  15,          1) /* StackUnitValue */
     , (803215,  16,          1) /* ItemUseable - No */
     , (803215,  18,         32) /* UiEffects - Magical */
     , (803215,  19,          1) /* Value */
     , (803215,  33,          1) /* Bonded - Bonded */
     , (803215,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803215,  94,          8) /* TargetType - Jewelry */
     , (803215, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803215,  22, True ) /* Inscribable */
     , (803215,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803215,   1, 'Fragment of Fire') /* Name */
     , (803215,  33, 'HarginPickup2') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803215,   1,   33556407) /* Setup */
     , (803215,   3,  536870932) /* SoundTable */
     , (803215,   7,  268435965) /* ClothingBase */
     , (803215,   8,  100673211) /* Icon */
     , (803215,  22,  872415275) /* PhysicsEffectTable */
     , (803215,  52,  100686604) /* IconUnderlay */;
