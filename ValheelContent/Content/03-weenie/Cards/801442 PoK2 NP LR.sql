DELETE FROM `weenie` WHERE `class_Id` = 801442;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801442, 'Power of Kings2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801442,   1,       256) /* ItemType - Gem */
     , (801442,   3,         39) /* PaletteTemplate - Black */
     , (801442,   5,          5) /* EncumbranceVal */
     , (801442,   8,          5) /* Mass */
     , (801442,  11,          1) /* MaxStackSize */
     , (801442,  12,          1) /* StackSize */
     , (801442,  13,          5) /* StackUnitEncumbrance */
     , (801442,  14,          5) /* StackUnitMass */
     , (801442,  15,        250) /* StackUnitValue */
     , (801442,  16,          1) /* ItemUseable - Contained */
     , (801442,  18,          0) /* UiEffects - Lightning */
     , (801442,  19,        250) /* Value */
     , (801442,  33,          1) /* Bonded - Bonded */
     , (801442,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801442,  94,         16) /* TargetType - Creature */
     , (801442, 106,        325) /* ItemSpellcraft */
     , (801442, 107,      10000) /* ItemCurMana */
     , (801442, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801442,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801442,   1, 'Power of Kings NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801442,   1,   33554809) /* Setup */
     , (801442,   3,  536870932) /* SoundTable */
     , (801442,   6,   67111919) /* PaletteBase */
     , (801442,   8,  100688622) /* Icon */
     , (801442,  22,  872415275) /* PhysicsEffectTable */;
