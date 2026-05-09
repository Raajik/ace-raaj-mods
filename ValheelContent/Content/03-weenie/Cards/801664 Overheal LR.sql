DELETE FROM `weenie` WHERE `class_Id` = 801664;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801664, 'Overheal LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801664,   1,       2048) /* ItemType - Gem */
     , (801664,   3,         39) /* PaletteTemplate - Black */
     , (801664,   5,          5) /* EncumbranceVal */
     , (801664,   8,          5) /* Mass */
     , (801664,  11,          1) /* MaxStackSize */
     , (801664,  12,          1) /* StackSize */
     , (801664,  13,          5) /* StackUnitEncumbrance */
     , (801664,  14,          5) /* StackUnitMass */
     , (801664,  15,          100) /* StackUnitValue */
     , (801664,  16,          8) /* ItemUseable - Contained */
     , (801664,  17,        108) /* RareId */
     , (801664,  18,        128) /* UiEffects - Frost */
     , (801664,  19,          100) /* Value */
     , (801664,  33,          1) /* Bonded - Bonded */
     , (801664,  92,         -1) /* Structure */
     , (801664,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801664,  94,         16) /* TargetType - Creature */
     , (801664, 106,        325) /* ItemSpellcraft */
     , (801664, 107,      10000) /* ItemCurMana */
     , (801664, 108,      10000) /* ItemMaxMana */
     , (801664, 109,          0) /* ItemDifficulty */
     , (801664, 150,        103) /* HookPlacement - Hook */
     , (801664, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801664,  22, True ) /* Inscribable */
     , (801664,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801664, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801664,   1, 'Overheal (LR)') /* Name */
     , (801664,  16, 'This card can be used to cast Prodigal Invulnerability for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801664,   1,   33554809) /* Setup */
     , (801664,   3,  536870932) /* SoundTable */
     , (801664,   6,   67111919) /* PaletteBase */
     , (801664,   8,  100688622) /* Icon */
     , (801664,  22,  872415275) /* PhysicsEffectTable */
     , (801664,  28,       4311) /* Spell - Prodigal Invulnerability */;
