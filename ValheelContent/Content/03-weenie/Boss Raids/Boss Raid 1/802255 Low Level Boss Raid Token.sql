DELETE FROM `weenie` WHERE `class_Id` = 802255;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802255, 'BossRaid1Token', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802255,   1,        128) /* ItemType - Misc */
     , (802255,   3,         39) /* PaletteTemplate - Black */
     , (802255,   5,          5) /* EncumbranceVal */
     , (802255,   8,          5) /* Mass */
     , (802255,  11,          1) /* MaxStackSize */
     , (802255,  12,          1) /* StackSize */
     , (802255,  13,          5) /* StackUnitEncumbrance */
     , (802255,  14,          5) /* StackUnitMass */
     , (802255,  15,          1) /* StackUnitValue */
     , (802255,  18,          0) /* UiEffects - Undef */
     , (802255,  19,          1) /* Value */
     , (802255,  33,          1) /* Bonded - Bonded */
     , (802255,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802255,  22, True ) /* Inscribable */
     , (802255,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802255,   1, 'Low Level Boss Raid Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802255,   1,   33557280) /* Setup */
     , (802255,   3,  536870932) /* SoundTable */
     , (802255,   7,  268437442) /* ClothingBase */
     , (802255,   8,  100671241) /* Icon */
     , (802255,  22,  872415275) /* PhysicsEffectTable */;
