DELETE FROM `weenie` WHERE `class_Id` = 802263;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802263, 'Dark Crypt NP', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802263,   1,       256) /* ItemType - Gem */
     , (802263,   3,         39) /* PaletteTemplate - Black */
     , (802263,   5,          5) /* EncumbranceVal */
     , (802263,   8,          5) /* Mass */
     , (802263,  11,          1) /* MaxStackSize */
     , (802263,  12,          1) /* StackSize */
     , (802263,  13,          5) /* StackUnitEncumbrance */
     , (802263,  14,          5) /* StackUnitMass */
     , (802263,  15,        250) /* StackUnitValue */
     , (802263,  16,          1) /* ItemUseable - Contained */
     , (802263,  18,          0) /* UiEffects - Lightning */
     , (802263,  19,        250) /* Value */
     , (802263,  33,          1) /* Bonded - Bonded */
     , (802263,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802263,  94,         16) /* TargetType - Creature */
     , (802263, 106,        325) /* ItemSpellcraft */
     , (802263, 107,      10000) /* ItemCurMana */
     , (802263, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802263,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802263,   1, 'Dark Crypt NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802263,   1,   33554809) /* Setup */
     , (802263,   3,  536870932) /* SoundTable */
     , (802263,   6,   67111919) /* PaletteBase */
     , (802263,   8,  100688622) /* Icon */
     , (802263,  22,  872415275) /* PhysicsEffectTable */;
