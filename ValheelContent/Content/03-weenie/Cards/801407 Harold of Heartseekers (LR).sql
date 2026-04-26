DELETE FROM `weenie` WHERE `class_Id` = 801407;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801407, 'Harold of Heartseekers LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801407,   1,       2048) /* ItemType - Gem */
     , (801407,   3,         39) /* PaletteTemplate - Black */
     , (801407,   5,          5) /* EncumbranceVal */
     , (801407,   8,          5) /* Mass */
     , (801407,  11,          1) /* MaxStackSize */
     , (801407,  12,          1) /* StackSize */
     , (801407,  13,          5) /* StackUnitEncumbrance */
     , (801407,  14,          5) /* StackUnitMass */
     , (801407,  15,          100) /* StackUnitValue */
     , (801407,  16,          8) /* ItemUseable - Contained */
     , (801407,  17,         93) /* RareId */
     , (801407,  18,        256) /* UiEffects - Magical */
     , (801407,  19,          100) /* Value */
     , (801407,  33,          1) /* Bonded - Slippery */
     , (801407,  92,         -1) /* Structure */
     , (801407,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801407,  94,         16) /* TargetType - Creature */
     , (801407, 106,        325) /* ItemSpellcraft */
     , (801407, 107,      10000) /* ItemCurMana */
     , (801407, 108,      10000) /* ItemMaxMana */
     , (801407, 109,          0) /* ItemDifficulty */
     , (801407, 150,        103) /* HookPlacement - Hook */
     , (801407, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801407,  22, True ) /* Inscribable */
     , (801407,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801407, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801407,   1, 'Harold of Heartseekers (LR)') /* Name */
     , (801407,  16, 'This card can be used to cast Prodigal Item Magic for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801407,   1, 0x02000179) /* Setup */
     , (801407,   3, 0x20000014) /* SoundTable */
     , (801407,   6, 0x04000BEF) /* PaletteBase */
     , (801407,   8, 0x060062EE) /* Icon */
     , (801407,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801407,  28,       3713) /* Spell - Incantation of Finesse Weapon Mastery Self */;
