DELETE FROM `weenie` WHERE `class_Id` = 801405;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801405, 'Imperial Lifestaff LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801405,   1,       2048) /* ItemType - Gem */
     , (801405,   3,         39) /* PaletteTemplate - Black */
     , (801405,   5,          5) /* EncumbranceVal */
     , (801405,   8,          5) /* Mass */
     , (801405,  11,          1) /* MaxStackSize */
     , (801405,  12,          1) /* StackSize */
     , (801405,  13,          5) /* StackUnitEncumbrance */
     , (801405,  14,          5) /* StackUnitMass */
     , (801405,  15,          100) /* StackUnitValue */
     , (801405,  16,          8) /* ItemUseable - Contained */
     , (801405,  17,         93) /* RareId */
     , (801405,  18,        256) /* UiEffects - Magical */
     , (801405,  19,          100) /* Value */
     , (801405,  33,          1) /* Bonded - Slippery */
     , (801405,  92,         -1) /* Structure */
     , (801405,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801405,  94,         16) /* TargetType - Creature */
     , (801405, 106,        325) /* ItemSpellcraft */
     , (801405, 107,      10000) /* ItemCurMana */
     , (801405, 108,      10000) /* ItemMaxMana */
     , (801405, 109,          0) /* ItemDifficulty */
     , (801405, 150,        103) /* HookPlacement - Hook */
     , (801405, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801405,  22, True ) /* Inscribable */
     , (801405,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801405, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801405,   1, 'Imperial Lifestaff (LR)') /* Name */
     , (801405,  16, 'This card can be used to cast Prodigal Life Magic for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801405,   1, 0x02000179) /* Setup */
     , (801405,   3, 0x20000014) /* SoundTable */
     , (801405,   6, 0x04000BEF) /* PaletteBase */
     , (801405,   8, 0x060062EE) /* Icon */
     , (801405,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801405,  28,       3717) /* Spell - Incantation of Finesse Weapon Mastery Self */;
