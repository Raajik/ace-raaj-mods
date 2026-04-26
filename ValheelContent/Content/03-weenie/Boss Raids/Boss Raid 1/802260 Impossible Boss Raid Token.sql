DELETE FROM `weenie` WHERE `class_Id` = 802260;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802260, 'BossRaid6Token', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802260,   1,        128) /* ItemType - Misc */
     , (802260,   3,         39) /* PaletteTemplate - Black */
     , (802260,   5,          5) /* EncumbranceVal */
     , (802260,   8,          5) /* Mass */
     , (802260,  11,          1) /* MaxStackSize */
     , (802260,  12,          1) /* StackSize */
     , (802260,  13,          5) /* StackUnitEncumbrance */
     , (802260,  14,          5) /* StackUnitMass */
     , (802260,  15,          1) /* StackUnitValue */
     , (802260,  18,          0) /* UiEffects - Undef */
     , (802260,  19,          1) /* Value */
     , (802260,  33,          1) /* Bonded - Bonded */
     , (802260,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802260,  22, True ) /* Inscribable */
     , (802260,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802260,   1, 'Impossible Boss Raid Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802260,   1,   33557280) /* Setup */
     , (802260,   3,  536870932) /* SoundTable */
     , (802260,   7,  268437442) /* ClothingBase */
     , (802260,   8,  100671241) /* Icon */
     , (802260,  22,  872415275) /* PhysicsEffectTable */;
