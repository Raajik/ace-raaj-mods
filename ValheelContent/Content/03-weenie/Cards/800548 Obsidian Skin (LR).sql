DELETE FROM `weenie` WHERE `class_Id` = 800548;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800548, 'Obsidian Skin', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800548,   1,       2048) /* ItemType - Gem */
     , (800548,   3,         39) /* PaletteTemplate - Black */
     , (800548,   5,          5) /* EncumbranceVal */
     , (800548,   8,          5) /* Mass */
     , (800548,  11,          1) /* MaxStackSize */
     , (800548,  12,          1) /* StackSize */
     , (800548,  13,          5) /* StackUnitEncumbrance */
     , (800548,  14,          5) /* StackUnitMass */
     , (800548,  15,          100) /* StackUnitValue */
     , (800548,  16,          8) /* ItemUseable - Contained */
     , (800548,  17,        108) /* RareId */
     , (800548,  18,        128) /* UiEffects - Frost */
     , (800548,  19,          100) /* Value */
     , (800548,  33,          1) /* Bonded - Bonded */
     , (800548,  92,         -1) /* Structure */
     , (800548,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800548,  94,         16) /* TargetType - Creature */
     , (800548, 106,        325) /* ItemSpellcraft */
     , (800548, 107,      10000) /* ItemCurMana */
     , (800548, 108,      10000) /* ItemMaxMana */
     , (800548, 109,          0) /* ItemDifficulty */
     , (800548, 150,        103) /* HookPlacement - Hook */
     , (800548, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800548,  22, True ) /* Inscribable */
     , (800548,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800548, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800548,   1, 'Obsidian Skin (LR)') /* Name */
     , (800548,  16, 'This card can be used to cast Prodigal Invulnerability for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800548,   1,   33554809) /* Setup */
     , (800548,   3,  536870932) /* SoundTable */
     , (800548,   6,   67111919) /* PaletteBase */
     , (800548,   8,  100688622) /* Icon */
     , (800548,  22,  872415275) /* PhysicsEffectTable */
     , (800548,  28,       3712) /* Spell - Prodigal Invulnerability */;
