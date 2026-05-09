DELETE FROM `weenie` WHERE `class_Id` = 803232;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803232, 'Encapsulated Darkness', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803232,   1,       2048) /* ItemType - Gem */
     , (803232,   5,          1) /* EncumbranceVal */
     , (803232,  11,          1) /* MaxStackSize */
     , (803232,  12,          1) /* StackSize */
     , (803232,  13,          1) /* StackUnitEncumbrance */
     , (803232,  15,          1) /* StackUnitValue */
     , (803232,  16,          1) /* ItemUseable - No */
     , (803232,  18,       4096) /* UiEffects - Magical */
     , (803232,  19,          1) /* Value */
     , (803232,  33,          1) /* Bonded - Bonded */
     , (803232,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803232,  94,          8) /* TargetType - Jewelry */
     , (803232, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803232,  22, True ) /* Inscribable */
     , (803232,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803232,   1, 'Encapsulated Darkness') /* Name */
     , (803232,  33, 'EcapsulatedDarknessPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803232,   1,   33556407) /* Setup */
     , (803232,   3,  536870932) /* SoundTable */
     , (803232,   7,  268435965) /* ClothingBase */
     , (803232,   8,  100670992) /* Icon */
     , (803232,  22,  872415275) /* PhysicsEffectTable */
     , (803232,  52,  100686604) /* IconUnderlay */;
