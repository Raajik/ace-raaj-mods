DELETE FROM `weenie` WHERE `class_Id` = 802259;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802259, 'BossRaid5Token', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802259,   1,        128) /* ItemType - Misc */
     , (802259,   3,         39) /* PaletteTemplate - Black */
     , (802259,   5,          5) /* EncumbranceVal */
     , (802259,   8,          5) /* Mass */
     , (802259,  11,          1) /* MaxStackSize */
     , (802259,  12,          1) /* StackSize */
     , (802259,  13,          5) /* StackUnitEncumbrance */
     , (802259,  14,          5) /* StackUnitMass */
     , (802259,  15,          1) /* StackUnitValue */
     , (802259,  18,          0) /* UiEffects - Undef */
     , (802259,  19,          1) /* Value */
     , (802259,  33,          1) /* Bonded - Bonded */
     , (802259,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802259,  22, True ) /* Inscribable */
     , (802259,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802259,   1, 'Ascended Power Boss Raid Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802259,   1,   33557280) /* Setup */
     , (802259,   3,  536870932) /* SoundTable */
     , (802259,   7,  268437442) /* ClothingBase */
     , (802259,   8,  100671241) /* Icon */
     , (802259,  22,  872415275) /* PhysicsEffectTable */;
