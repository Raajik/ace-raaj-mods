DELETE FROM `weenie` WHERE `class_Id` = 801441;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801441, 'Stoic WIll2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801441,   1,       256) /* ItemType - Gem */
     , (801441,   3,         39) /* PaletteTemplate - Black */
     , (801441,   5,          5) /* EncumbranceVal */
     , (801441,   8,          5) /* Mass */
     , (801441,  11,          1) /* MaxStackSize */
     , (801441,  12,          1) /* StackSize */
     , (801441,  13,          5) /* StackUnitEncumbrance */
     , (801441,  14,          5) /* StackUnitMass */
     , (801441,  15,        250) /* StackUnitValue */
     , (801441,  16,          1) /* ItemUseable - Contained */
     , (801441,  18,          0) /* UiEffects - Lightning */
     , (801441,  19,        250) /* Value */
     , (801441,  33,          1) /* Bonded - Bonded */
     , (801441,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801441,  94,         16) /* TargetType - Creature */
     , (801441, 106,        325) /* ItemSpellcraft */
     , (801441, 107,      10000) /* ItemCurMana */
     , (801441, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801441,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801441,   1, 'Stoic Will NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801441,   1,   33554809) /* Setup */
     , (801441,   3,  536870932) /* SoundTable */
     , (801441,   6,   67111919) /* PaletteBase */
     , (801441,   8,  100688622) /* Icon */
     , (801441,  22,  872415275) /* PhysicsEffectTable */;
