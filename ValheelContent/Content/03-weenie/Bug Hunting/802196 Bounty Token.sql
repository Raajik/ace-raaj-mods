DELETE FROM `weenie` WHERE `class_Id` = 802196;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802196, 'BountyToken', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802196,   1,        128) /* ItemType - Misc */
     , (802196,   3,         39) /* PaletteTemplate - Black */
     , (802196,   5,          5) /* EncumbranceVal */
     , (802196,   8,          5) /* Mass */
     , (802196,  11,          1) /* MaxStackSize */
     , (802196,  12,          1) /* StackSize */
     , (802196,  13,          5) /* StackUnitEncumbrance */
     , (802196,  14,          5) /* StackUnitMass */
     , (802196,  15,          1) /* StackUnitValue */
     , (802196,  18,          0) /* UiEffects - Undef */
     , (802196,  19,          1) /* Value */
     , (802196,  33,          1) /* Bonded - Bonded */
     , (802196,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802196,  22, True ) /* Inscribable */
     , (802196,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802196,   1, 'Bounty Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802196,   1,   33557280) /* Setup */
     , (802196,   3,  536870932) /* SoundTable */
     , (802196,   7,  268437442) /* ClothingBase */
     , (802196,   8,  100671241) /* Icon */
     , (802196,  22,  872415275) /* PhysicsEffectTable */;
