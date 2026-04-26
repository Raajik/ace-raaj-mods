DELETE FROM `weenie` WHERE `class_Id` = 801408;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801408, 'Dark Arts LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801408,   1,       2048) /* ItemType - Gem */
     , (801408,   3,         39) /* PaletteTemplate - Black */
     , (801408,   5,          5) /* EncumbranceVal */
     , (801408,   8,          5) /* Mass */
     , (801408,  11,          1) /* MaxStackSize */
     , (801408,  12,          1) /* StackSize */
     , (801408,  13,          5) /* StackUnitEncumbrance */
     , (801408,  14,          5) /* StackUnitMass */
     , (801408,  15,          100) /* StackUnitValue */
     , (801408,  16,          8) /* ItemUseable - Contained */
     , (801408,  17,         93) /* RareId */
     , (801408,  18,        256) /* UiEffects - Magical */
     , (801408,  19,          100) /* Value */
     , (801408,  33,          1) /* Bonded - Slippery */
     , (801408,  92,         -1) /* Structure */
     , (801408,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801408,  94,         16) /* TargetType - Creature */
     , (801408, 106,        325) /* ItemSpellcraft */
     , (801408, 107,      10000) /* ItemCurMana */
     , (801408, 108,      10000) /* ItemMaxMana */
     , (801408, 109,          0) /* ItemDifficulty */
     , (801408, 150,        103) /* HookPlacement - Hook */
     , (801408, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801408,  22, True ) /* Inscribable */
     , (801408,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801408, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801408,   1, 'Dark Arts (LR)') /* Name */
     , (801408,  16, 'This card can be used to cast Prodigal Void Magic for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801408,   1, 0x02000179) /* Setup */
     , (801408,   3, 0x20000014) /* SoundTable */
     , (801408,   6, 0x04000BEF) /* PaletteBase */
     , (801408,   8, 0x060062EE) /* Icon */
     , (801408,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801408,  28,       5436) /* Spell - Incantation of Finesse Weapon Mastery Self */;
