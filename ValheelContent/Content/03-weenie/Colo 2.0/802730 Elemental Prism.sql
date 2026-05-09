DELETE FROM `weenie` WHERE `class_Id` = 802730;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802730, 'ElementalPrism', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802730,   1,       2048) /* ItemType - Gem */
     , (802730,   5,          1) /* EncumbranceVal */
     , (802730,  11,          1) /* MaxStackSize */
     , (802730,  12,          1) /* StackSize */
     , (802730,  13,          1) /* StackUnitEncumbrance */
     , (802730,  15,          1) /* StackUnitValue */
     , (802730,  16,          1) /* ItemUseable - No */
     , (802730,  18,          1) /* UiEffects - Magical */
     , (802730,  19,          1) /* Value */
     , (802730,  33,          1) /* Bonded - Bonded */
     , (802730,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802730,  94,          8) /* TargetType - Jewelry */
     , (802730, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802730,  22, True ) /* Inscribable */
     , (802730,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802730,   1, 'Elemental Prism') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802730,   1,   33556407) /* Setup */
     , (802730,   3,  536870932) /* SoundTable */
     , (802730,   7,  268435965) /* ClothingBase */
     , (802730,   8,  100673211) /* Icon */
     , (802730,  22,  872415275) /* PhysicsEffectTable */
     , (802730,  52,  100667859) /* IconUnderlay */;
