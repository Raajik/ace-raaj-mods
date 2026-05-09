DELETE FROM `weenie` WHERE `class_Id` = 802382;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802382, 'KedsPendant', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802382,   1,        128) /* ItemType - Misc */
     , (802382,   3,         39) /* PaletteTemplate - Black */
     , (802382,   5,          5) /* EncumbranceVal */
     , (802382,   8,          5) /* Mass */
     , (802382,  11,          1) /* MaxStackSize */
     , (802382,  12,          1) /* StackSize */
     , (802382,  13,          5) /* StackUnitEncumbrance */
     , (802382,  14,          5) /* StackUnitMass */
     , (802382,  15,          1) /* StackUnitValue */
     , (802382,  18,          0) /* UiEffects - Undef */
     , (802382,  19,          1) /* Value */
     , (802382,  33,          1) /* Bonded - Bonded */
     , (802382,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802382, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802382,  22, True ) /* Inscribable */
     , (802382,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802382,   1, 'Ked''s Pendant') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802382,   1,   33557280) /* Setup */
     , (802382,   3,  536870932) /* SoundTable */
     , (802382,   7,  268437442) /* ClothingBase */
     , (802382,   8,  100667518) /* Icon */
     , (802382,  22,  872415275) /* PhysicsEffectTable */;
