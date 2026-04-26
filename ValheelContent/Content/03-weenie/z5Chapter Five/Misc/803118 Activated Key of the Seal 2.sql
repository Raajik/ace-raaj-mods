DELETE FROM `weenie` WHERE `class_Id` = 803118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803118, 'Activated Key of the Seal2', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803118,   1,        128) /* ItemType - Misc */
     , (803118,   3,         39) /* PaletteTemplate - Black */
     , (803118,   5,          5) /* EncumbranceVal */
     , (803118,   8,          5) /* Mass */
     , (803118,  11,          1) /* MaxStackSize */
     , (803118,  12,          1) /* StackSize */
     , (803118,  13,          5) /* StackUnitEncumbrance */
     , (803118,  14,          5) /* StackUnitMass */
     , (803118,  15,          1) /* StackUnitValue */
     , (803118,  18,          1) /* UiEffects - Undef */
     , (803118,  19,          1) /* Value */
     , (803118,  33,          1) /* Bonded - Bonded */
     , (803118,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803118,  22, True ) /* Inscribable */
     , (803118,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803118,   1, 'Activated Key of the Seal') /* Name */
     , (803118,  33, 'ActKeyPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803118,   1,   33554784) /* Setup */
     , (803118,   3,  536870932) /* SoundTable */
     , (803118,   7,  268437442) /* ClothingBase */
     , (803118,   8,  100668436) /* Icon */
     , (803118,  22,  872415275) /* PhysicsEffectTable */;
