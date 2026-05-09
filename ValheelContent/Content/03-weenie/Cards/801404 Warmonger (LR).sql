DELETE FROM `weenie` WHERE `class_Id` = 801404;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801404, 'Warmonger LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801404,   1,       2048) /* ItemType - Gem */
     , (801404,   3,         39) /* PaletteTemplate - Black */
     , (801404,   5,          5) /* EncumbranceVal */
     , (801404,   8,          5) /* Mass */
     , (801404,  11,          1) /* MaxStackSize */
     , (801404,  12,          1) /* StackSize */
     , (801404,  13,          5) /* StackUnitEncumbrance */
     , (801404,  14,          5) /* StackUnitMass */
     , (801404,  15,          100) /* StackUnitValue */
     , (801404,  16,          8) /* ItemUseable - Contained */
     , (801404,  17,         93) /* RareId */
     , (801404,  18,        256) /* UiEffects - Magical */
     , (801404,  19,          100) /* Value */
     , (801404,  33,          1) /* Bonded - Slippery */
     , (801404,  92,         -1) /* Structure */
     , (801404,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801404,  94,         16) /* TargetType - Creature */
     , (801404, 106,        325) /* ItemSpellcraft */
     , (801404, 107,      10000) /* ItemCurMana */
     , (801404, 108,      10000) /* ItemMaxMana */
     , (801404, 109,          0) /* ItemDifficulty */
     , (801404, 150,        103) /* HookPlacement - Hook */
     , (801404, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801404,  22, True ) /* Inscribable */
     , (801404,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801404, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801404,   1, 'Warmonger (LR)') /* Name */
     , (801404,  16, 'This card can be used to cast Prodigal War Magic for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801404,   1, 0x02000179) /* Setup */
     , (801404,   3, 0x20000014) /* SoundTable */
     , (801404,   6, 0x04000BEF) /* PaletteBase */
     , (801404,   8, 0x060062EE) /* Icon */
     , (801404,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801404,  28,       3743) /* Spell - Incantation of Finesse Weapon Mastery Self */;
