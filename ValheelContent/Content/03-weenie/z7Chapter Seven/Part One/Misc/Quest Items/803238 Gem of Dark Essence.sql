DELETE FROM `weenie` WHERE `class_Id` = 803238;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803238, 'Gem of Dark Essence', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803238,   1,       2048) /* ItemType - Gem */
     , (803238,   5,          1) /* EncumbranceVal */
     , (803238,  11,          1) /* MaxStackSize */
     , (803238,  12,          1) /* StackSize */
     , (803238,  13,          1) /* StackUnitEncumbrance */
     , (803238,  15,          1) /* StackUnitValue */
     , (803238,  16,          1) /* ItemUseable - No */
     , (803238,  18,       4096) /* UiEffects - Magical */
     , (803238,  19,          1) /* Value */
     , (803238,  33,          1) /* Bonded - Bonded */
     , (803238,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803238,  94,          8) /* TargetType - Jewelry */
     , (803238, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803238,  22, True ) /* Inscribable */
     , (803238,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803238,   1, 'Gem of Dark Essence') /* Name */
     , (803238,  33, 'GemOfDarkEssencePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803238,   1,   33556407) /* Setup */
     , (803238,   3,  536870932) /* SoundTable */
     , (803238,   7,  268435965) /* ClothingBase */
     , (803238,   8,  100670993) /* Icon */
     , (803238,  22,  872415275) /* PhysicsEffectTable */
     , (803238,  52,  100686604) /* IconUnderlay */;
