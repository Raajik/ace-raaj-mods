DELETE FROM `weenie` WHERE `class_Id` = 801406;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801406, 'Critter Whisperer LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801406,   1,       2048) /* ItemType - Gem */
     , (801406,   3,         39) /* PaletteTemplate - Black */
     , (801406,   5,          5) /* EncumbranceVal */
     , (801406,   8,          5) /* Mass */
     , (801406,  11,          1) /* MaxStackSize */
     , (801406,  12,          1) /* StackSize */
     , (801406,  13,          5) /* StackUnitEncumbrance */
     , (801406,  14,          5) /* StackUnitMass */
     , (801406,  15,          100) /* StackUnitValue */
     , (801406,  16,          8) /* ItemUseable - Contained */
     , (801406,  17,         93) /* RareId */
     , (801406,  18,        256) /* UiEffects - Magical */
     , (801406,  19,          100) /* Value */
     , (801406,  33,          1) /* Bonded - Slippery */
     , (801406,  92,         -1) /* Structure */
     , (801406,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801406,  94,         16) /* TargetType - Creature */
     , (801406, 106,        325) /* ItemSpellcraft */
     , (801406, 107,      10000) /* ItemCurMana */
     , (801406, 108,      10000) /* ItemMaxMana */
     , (801406, 109,          0) /* ItemDifficulty */
     , (801406, 150,        103) /* HookPlacement - Hook */
     , (801406, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801406,  22, True ) /* Inscribable */
     , (801406,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801406, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801406,   1, 'Critter Whisperer (LR)') /* Name */
     , (801406,  16, 'This card can be used to cast Prodigal Creature Magic for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801406,   1, 0x02000179) /* Setup */
     , (801406,   3, 0x20000014) /* SoundTable */
     , (801406,   6, 0x04000BEF) /* PaletteBase */
     , (801406,   8, 0x060062EE) /* Icon */
     , (801406,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801406,  28,       3695) /* Spell - Incantation of Finesse Weapon Mastery Self */;
