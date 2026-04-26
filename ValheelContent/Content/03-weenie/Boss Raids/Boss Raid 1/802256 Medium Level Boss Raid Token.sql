DELETE FROM `weenie` WHERE `class_Id` = 802256;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802256, 'BossRaid2Token', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802256,   1,        128) /* ItemType - Misc */
     , (802256,   3,         39) /* PaletteTemplate - Black */
     , (802256,   5,          5) /* EncumbranceVal */
     , (802256,   8,          5) /* Mass */
     , (802256,  11,          1) /* MaxStackSize */
     , (802256,  12,          1) /* StackSize */
     , (802256,  13,          5) /* StackUnitEncumbrance */
     , (802256,  14,          5) /* StackUnitMass */
     , (802256,  15,          1) /* StackUnitValue */
     , (802256,  18,          0) /* UiEffects - Undef */
     , (802256,  19,          1) /* Value */
     , (802256,  33,          1) /* Bonded - Bonded */
     , (802256,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802256,  22, True ) /* Inscribable */
     , (802256,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802256,   1, 'Medium Level Boss Raid Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802256,   1,   33557280) /* Setup */
     , (802256,   3,  536870932) /* SoundTable */
     , (802256,   7,  268437442) /* ClothingBase */
     , (802256,   8,  100671241) /* Icon */
     , (802256,  22,  872415275) /* PhysicsEffectTable */;
