DELETE FROM `weenie` WHERE `class_Id` = 803240;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803240, 'Gem of Auns Flame', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803240,   1,       2048) /* ItemType - Gem */
     , (803240,   5,          1) /* EncumbranceVal */
     , (803240,  11,          1) /* MaxStackSize */
     , (803240,  12,          1) /* StackSize */
     , (803240,  13,          1) /* StackUnitEncumbrance */
     , (803240,  15,          1) /* StackUnitValue */
     , (803240,  16,          1) /* ItemUseable - No */
     , (803240,  18,       4096) /* UiEffects - Magical */
     , (803240,  19,          1) /* Value */
     , (803240,  33,          1) /* Bonded - Bonded */
     , (803240,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803240,  94,          8) /* TargetType - Jewelry */
     , (803240, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803240,  22, True ) /* Inscribable */
     , (803240,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803240,   1, 'Gem of Aun''s Flame') /* Name */
     /* , (803240,  33, 'GemOfDarkEssencePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803240,   1,   33556407) /* Setup */
     , (803240,   3,  536870932) /* SoundTable */
     , (803240,   7,  268435965) /* ClothingBase */
     , (803240,   8,  100674860) /* Icon */
     , (803240,  22,  872415275) /* PhysicsEffectTable */
     , (803240,  52,  100676435) /* IconUnderlay */;
