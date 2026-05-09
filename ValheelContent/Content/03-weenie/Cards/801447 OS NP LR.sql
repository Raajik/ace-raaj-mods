DELETE FROM `weenie` WHERE `class_Id` = 801447;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801447, 'Obsidian Skin2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801447,   1,       256) /* ItemType - Gem */
     , (801447,   3,         39) /* PaletteTemplate - Black */
     , (801447,   5,          5) /* EncumbranceVal */
     , (801447,   8,          5) /* Mass */
     , (801447,  11,          1) /* MaxStackSize */
     , (801447,  12,          1) /* StackSize */
     , (801447,  13,          5) /* StackUnitEncumbrance */
     , (801447,  14,          5) /* StackUnitMass */
     , (801447,  15,        250) /* StackUnitValue */
     , (801447,  16,          1) /* ItemUseable - Contained */
     , (801447,  18,          0) /* UiEffects - Lightning */
     , (801447,  19,        250) /* Value */
     , (801447,  33,          1) /* Bonded - Bonded */
     , (801447,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801447,  94,         16) /* TargetType - Creature */
     , (801447, 106,        325) /* ItemSpellcraft */
     , (801447, 107,      10000) /* ItemCurMana */
     , (801447, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801447,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801447,   1, 'Obsidian Skin NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801447,   1,   33554809) /* Setup */
     , (801447,   3,  536870932) /* SoundTable */
     , (801447,   6,   67111919) /* PaletteBase */
     , (801447,   8,  100688622) /* Icon */
     , (801447,  22,  872415275) /* PhysicsEffectTable */;
