DELETE FROM `weenie` WHERE `class_Id` = 803067;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803067, 'BlackOre', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803067,   1,       2048) /* ItemType - Gem */
     , (803067,   5,          1) /* EncumbranceVal */
     , (803067,  11,          1) /* MaxStackSize */
     , (803067,  12,          1) /* StackSize */
     , (803067,  13,          1) /* StackUnitEncumbrance */
     , (803067,  15,          1) /* StackUnitValue */
     , (803067,  16,          1) /* ItemUseable - No */
     , (803067,  18,          0) /* UiEffects - Magical */
     , (803067,  19,          1) /* Value */
     , (803067,  33,          1) /* Bonded - Bonded */
     , (803067,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803067,  94,          8) /* TargetType - Jewelry */
     , (803067, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803067,  22, True ) /* Inscribable */
     , (803067,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803067,   1, 'Black Ore') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803067,   1,   33556407) /* Setup */
     , (803067,   3,  536870932) /* SoundTable */
     , (803067,   7,  268435965) /* ClothingBase */
     , (803067,   8,  100673875) /* Icon */
     , (803067,  22,  872415275) /* PhysicsEffectTable */
     , (803067,  52,  100686604) /* IconUnderlay */;
