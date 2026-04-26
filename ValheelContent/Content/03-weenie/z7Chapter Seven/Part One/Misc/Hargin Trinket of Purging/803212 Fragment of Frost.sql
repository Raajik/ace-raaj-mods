DELETE FROM `weenie` WHERE `class_Id` = 803212;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803212, 'Fragment of Frost', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803212,   1,       2048) /* ItemType - Gem */
     , (803212,   5,          1) /* EncumbranceVal */
     , (803212,  11,          1) /* MaxStackSize */
     , (803212,  12,          1) /* StackSize */
     , (803212,  13,          1) /* StackUnitEncumbrance */
     , (803212,  15,          1) /* StackUnitValue */
     , (803212,  16,          1) /* ItemUseable - No */
     , (803212,  18,        128) /* UiEffects - Magical */
     , (803212,  19,          1) /* Value */
     , (803212,  33,          1) /* Bonded - Bonded */
     , (803212,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803212,  94,          8) /* TargetType - Jewelry */
     , (803212, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803212,  22, True ) /* Inscribable */
     , (803212,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803212,   1, 'Fragment of Frost') /* Name */
     , (803212,  33, 'HarginPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803212,   1,   33556407) /* Setup */
     , (803212,   3,  536870932) /* SoundTable */
     , (803212,   7,  268435965) /* ClothingBase */
     , (803212,   8,  100673211) /* Icon */
     , (803212,  22,  872415275) /* PhysicsEffectTable */
     , (803212,  52,  100686604) /* IconUnderlay */;
