DELETE FROM `weenie` WHERE `class_Id` = 802389;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802389, 'Activated Key of the Seal', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802389,   1,        128) /* ItemType - Misc */
     , (802389,   3,         39) /* PaletteTemplate - Black */
     , (802389,   5,          5) /* EncumbranceVal */
     , (802389,   8,          5) /* Mass */
     , (802389,  11,          1) /* MaxStackSize */
     , (802389,  12,          1) /* StackSize */
     , (802389,  13,          5) /* StackUnitEncumbrance */
     , (802389,  14,          5) /* StackUnitMass */
     , (802389,  15,          1) /* StackUnitValue */
     , (802389,  18,          1) /* UiEffects - Undef */
     , (802389,  19,          1) /* Value */
     , (802389,  33,          1) /* Bonded - Bonded */
     , (802389,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802389, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802389,  22, True ) /* Inscribable */
     , (802389,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802389,   1, 'Activated Key of the Seal') /* Name */
     , (802389,  33, 'ActKeyPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802389,   1,   33554784) /* Setup */
     , (802389,   3,  536870932) /* SoundTable */
     , (802389,   7,  268437442) /* ClothingBase */
     , (802389,   8,  100668436) /* Icon */
     , (802389,  22,  872415275) /* PhysicsEffectTable */;
