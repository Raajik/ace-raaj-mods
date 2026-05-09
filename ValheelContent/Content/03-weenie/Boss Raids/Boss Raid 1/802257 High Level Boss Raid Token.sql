DELETE FROM `weenie` WHERE `class_Id` = 802257;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802257, 'BossRaid3Token', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802257,   1,        128) /* ItemType - Misc */
     , (802257,   3,         39) /* PaletteTemplate - Black */
     , (802257,   5,          5) /* EncumbranceVal */
     , (802257,   8,          5) /* Mass */
     , (802257,  11,          1) /* MaxStackSize */
     , (802257,  12,          1) /* StackSize */
     , (802257,  13,          5) /* StackUnitEncumbrance */
     , (802257,  14,          5) /* StackUnitMass */
     , (802257,  15,          1) /* StackUnitValue */
     , (802257,  18,          0) /* UiEffects - Undef */
     , (802257,  19,          1) /* Value */
     , (802257,  33,          1) /* Bonded - Bonded */
     , (802257,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802257,  22, True ) /* Inscribable */
     , (802257,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802257,   1, 'High Level Boss Raid Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802257,   1,   33557280) /* Setup */
     , (802257,   3,  536870932) /* SoundTable */
     , (802257,   7,  268437442) /* ClothingBase */
     , (802257,   8,  100671241) /* Icon */
     , (802257,  22,  872415275) /* PhysicsEffectTable */;
