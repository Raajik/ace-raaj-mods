DELETE FROM `weenie` WHERE `class_Id` = 802258;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802258, 'BossRaid4Token', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802258,   1,        128) /* ItemType - Misc */
     , (802258,   3,         39) /* PaletteTemplate - Black */
     , (802258,   5,          5) /* EncumbranceVal */
     , (802258,   8,          5) /* Mass */
     , (802258,  11,          1) /* MaxStackSize */
     , (802258,  12,          1) /* StackSize */
     , (802258,  13,          5) /* StackUnitEncumbrance */
     , (802258,  14,          5) /* StackUnitMass */
     , (802258,  15,          1) /* StackUnitValue */
     , (802258,  18,          0) /* UiEffects - Undef */
     , (802258,  19,          1) /* Value */
     , (802258,  33,          1) /* Bonded - Bonded */
     , (802258,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802258,  22, True ) /* Inscribable */
     , (802258,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802258,   1, 'God Mode Boss Raid Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802258,   1,   33557280) /* Setup */
     , (802258,   3,  536870932) /* SoundTable */
     , (802258,   7,  268437442) /* ClothingBase */
     , (802258,   8,  100671241) /* Icon */
     , (802258,  22,  872415275) /* PhysicsEffectTable */;
