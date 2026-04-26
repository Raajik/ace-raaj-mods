DELETE FROM `weenie` WHERE `class_Id` = 801403;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801403, 'Healing Hands LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801403,   1,       2048) /* ItemType - Gem */
     , (801403,   3,         39) /* PaletteTemplate - Black */
     , (801403,   5,          5) /* EncumbranceVal */
     , (801403,   8,          5) /* Mass */
     , (801403,  11,          1) /* MaxStackSize */
     , (801403,  12,          1) /* StackSize */
     , (801403,  13,          5) /* StackUnitEncumbrance */
     , (801403,  14,          5) /* StackUnitMass */
     , (801403,  15,          100) /* StackUnitValue */
     , (801403,  16,          8) /* ItemUseable - Contained */
     , (801403,  17,         93) /* RareId */
     , (801403,  18,        256) /* UiEffects - Magical */
     , (801403,  19,          100) /* Value */
     , (801403,  33,          1) /* Bonded - Slippery */
     , (801403,  92,         -1) /* Structure */
     , (801403,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801403,  94,         16) /* TargetType - Creature */
     , (801403, 106,        325) /* ItemSpellcraft */
     , (801403, 107,      10000) /* ItemCurMana */
     , (801403, 108,      10000) /* ItemMaxMana */
     , (801403, 109,          0) /* ItemDifficulty */
     , (801403, 150,        103) /* HookPlacement - Hook */
     , (801403, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801403,  22, True ) /* Inscribable */
     , (801403,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801403, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801403,   1, 'Healing Hands (LR)') /* Name */
     , (801403,  16, 'This card can be used to cast Prodigal Healing Aptitude for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801403,   1, 0x02000179) /* Setup */
     , (801403,   3, 0x20000014) /* SoundTable */
     , (801403,   6, 0x04000BEF) /* PaletteBase */
     , (801403,   8, 0x060062EE) /* Icon */
     , (801403,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801403,  28,       3707) /* Spell - Incantation of Finesse Weapon Mastery Self */;
