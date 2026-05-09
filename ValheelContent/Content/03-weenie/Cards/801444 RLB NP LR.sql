DELETE FROM `weenie` WHERE `class_Id` = 801444;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801444, 'Robins Long Bow2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801444,   1,       256) /* ItemType - Gem */
     , (801444,   3,         39) /* PaletteTemplate - Black */
     , (801444,   5,          5) /* EncumbranceVal */
     , (801444,   8,          5) /* Mass */
     , (801444,  11,          1) /* MaxStackSize */
     , (801444,  12,          1) /* StackSize */
     , (801444,  13,          5) /* StackUnitEncumbrance */
     , (801444,  14,          5) /* StackUnitMass */
     , (801444,  15,        250) /* StackUnitValue */
     , (801444,  16,          1) /* ItemUseable - Contained */
     , (801444,  18,          0) /* UiEffects - Lightning */
     , (801444,  19,        250) /* Value */
     , (801444,  33,          1) /* Bonded - Bonded */
     , (801444,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801444,  94,         16) /* TargetType - Creature */
     , (801444, 106,        325) /* ItemSpellcraft */
     , (801444, 107,      10000) /* ItemCurMana */
     , (801444, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801444,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801444,   1, 'Robin''s Long Bow NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801444,   1,   33554809) /* Setup */
     , (801444,   3,  536870932) /* SoundTable */
     , (801444,   6,   67111919) /* PaletteBase */
     , (801444,   8,  100688622) /* Icon */
     , (801444,  22,  872415275) /* PhysicsEffectTable */;
