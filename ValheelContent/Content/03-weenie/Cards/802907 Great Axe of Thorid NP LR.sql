DELETE FROM `weenie` WHERE `class_Id` = 802907;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802907, 'GreatAxeofThoridNPLR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802907,   1,        256) /* ItemType - Gem */
     , (802907,   3,         39) /* PaletteTemplate - Black */
     , (802907,   5,          5) /* EncumbranceVal */
     , (802907,   8,          5) /* Mass */
     , (802907,  11,          1) /* MaxStackSize */
     , (802907,  12,          1) /* StackSize */
     , (802907,  13,          5) /* StackUnitEncumbrance */
     , (802907,  14,          5) /* StackUnitMass */
     , (802907,  15,        250) /* StackUnitValue */
     , (802907,  16,          1) /* ItemUseable - Contained */
     , (802907,  18,          0) /* UiEffects - Lightning */
     , (802907,  19,        250) /* Value */
     , (802907,  33,          1) /* Bonded - Bonded */
     , (802907,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802907,  94,         16) /* TargetType - Creature */
     , (802907, 106,        325) /* ItemSpellcraft */
     , (802907, 107,      10000) /* ItemCurMana */
     , (802907, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802907,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802907,   1, 'Great Axe of Thorid NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802907,   1,   33554809) /* Setup */
     , (802907,   3,  536870932) /* SoundTable */
     , (802907,   6,   67111919) /* PaletteBase */
     , (802907,   8,  100688622) /* Icon */
     , (802907,  22,  872415275) /* PhysicsEffectTable */;
