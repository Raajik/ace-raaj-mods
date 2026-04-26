DELETE FROM `weenie` WHERE `class_Id` = 801440;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801440, 'Luck Rabbits Foot2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801440,   1,       256) /* ItemType - Gem */
     , (801440,   3,         39) /* PaletteTemplate - Black */
     , (801440,   5,          5) /* EncumbranceVal */
     , (801440,   8,          5) /* Mass */
     , (801440,  11,          1) /* MaxStackSize */
     , (801440,  12,          1) /* StackSize */
     , (801440,  13,          5) /* StackUnitEncumbrance */
     , (801440,  14,          5) /* StackUnitMass */
     , (801440,  15,        250) /* StackUnitValue */
     , (801440,  16,          1) /* ItemUseable - Contained */
     , (801440,  18,          0) /* UiEffects - Lightning */
     , (801440,  19,        250) /* Value */
     , (801440,  33,          1) /* Bonded - Bonded */
     , (801440,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801440,  94,         16) /* TargetType - Creature */
     , (801440, 106,        325) /* ItemSpellcraft */
     , (801440, 107,      10000) /* ItemCurMana */
     , (801440, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801440,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801440,   1, 'Lucky Rabbit''s Foot NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801440,   1,   33554809) /* Setup */
     , (801440,   3,  536870932) /* SoundTable */
     , (801440,   6,   67111919) /* PaletteBase */
     , (801440,   8,  100688622) /* Icon */
     , (801440,  22,  872415275) /* PhysicsEffectTable */;
