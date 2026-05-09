DELETE FROM `weenie` WHERE `class_Id` = 801438;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801438, 'Enduring Fortress2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801438,   1,        256) /* ItemType - Gem */
     , (801438,   3,         39) /* PaletteTemplate - Black */
     , (801438,   5,          5) /* EncumbranceVal */
     , (801438,   8,          5) /* Mass */
     , (801438,  11,          1) /* MaxStackSize */
     , (801438,  12,          1) /* StackSize */
     , (801438,  13,          5) /* StackUnitEncumbrance */
     , (801438,  14,          5) /* StackUnitMass */
     , (801438,  15,        250) /* StackUnitValue */
     , (801438,  16,          1) /* ItemUseable - Contained */
     , (801438,  18,          0) /* UiEffects - Lightning */
     , (801438,  19,        250) /* Value */
     , (801438,  33,          1) /* Bonded - Bonded */
     , (801438,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801438,  94,         16) /* TargetType - Creature */
     , (801438, 106,        325) /* ItemSpellcraft */
     , (801438, 107,      10000) /* ItemCurMana */
     , (801438, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801438,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801438,   1, 'Enduring Fortress NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801438,   1,   33554809) /* Setup */
     , (801438,   3,  536870932) /* SoundTable */
     , (801438,   6,   67111919) /* PaletteBase */
     , (801438,   8,  100688622) /* Icon */
     , (801438,  22,  872415275) /* PhysicsEffectTable */;
