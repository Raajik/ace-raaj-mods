DELETE FROM `weenie` WHERE `class_Id` = 801443;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801443, 'Robins Skill2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801443,   1,       256) /* ItemType - Gem */
     , (801443,   3,         39) /* PaletteTemplate - Black */
     , (801443,   5,          5) /* EncumbranceVal */
     , (801443,   8,          5) /* Mass */
     , (801443,  11,          1) /* MaxStackSize */
     , (801443,  12,          1) /* StackSize */
     , (801443,  13,          5) /* StackUnitEncumbrance */
     , (801443,  14,          5) /* StackUnitMass */
     , (801443,  15,        250) /* StackUnitValue */
     , (801443,  16,          1) /* ItemUseable - Contained */
     , (801443,  18,          0) /* UiEffects - Lightning */
     , (801443,  19,        250) /* Value */
     , (801443,  33,          1) /* Bonded - Bonded */
     , (801443,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801443,  94,         16) /* TargetType - Creature */
     , (801443, 106,        325) /* ItemSpellcraft */
     , (801443, 107,      10000) /* ItemCurMana */
     , (801443, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801443,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801443,   1, 'Robin''s Skill NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801443,   1,   33554809) /* Setup */
     , (801443,   3,  536870932) /* SoundTable */
     , (801443,   6,   67111919) /* PaletteBase */
     , (801443,   8,  100688622) /* Icon */
     , (801443,  22,  872415275) /* PhysicsEffectTable */;
