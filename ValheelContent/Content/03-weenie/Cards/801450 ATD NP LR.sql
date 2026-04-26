DELETE FROM `weenie` WHERE `class_Id` = 801450;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801450, 'A Thousand Daggers2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801450,   1,       256) /* ItemType - Gem */
     , (801450,   3,         39) /* PaletteTemplate - Black */
     , (801450,   5,          5) /* EncumbranceVal */
     , (801450,   8,          5) /* Mass */
     , (801450,  11,          1) /* MaxStackSize */
     , (801450,  12,          1) /* StackSize */
     , (801450,  13,          5) /* StackUnitEncumbrance */
     , (801450,  14,          5) /* StackUnitMass */
     , (801450,  15,        250) /* StackUnitValue */
     , (801450,  16,          1) /* ItemUseable - Contained */
     , (801450,  18,          0) /* UiEffects - Lightning */
     , (801450,  19,        250) /* Value */
     , (801450,  33,          1) /* Bonded - Bonded */
     , (801450,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801450,  94,         16) /* TargetType - Creature */
     , (801450, 106,        325) /* ItemSpellcraft */
     , (801450, 107,      10000) /* ItemCurMana */
     , (801450, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801450,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801450,   1, 'A Thousand Daggers NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801450,   1,   33554809) /* Setup */
     , (801450,   3,  536870932) /* SoundTable */
     , (801450,   6,   67111919) /* PaletteBase */
     , (801450,   8,  100688622) /* Icon */
     , (801450,  22,  872415275) /* PhysicsEffectTable */;
