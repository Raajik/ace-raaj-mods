DELETE FROM `weenie` WHERE `class_Id` = 800533;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800533, 'Arcane Empire', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800533,   1,       2048) /* ItemType - Gem */
     , (800533,   3,         39) /* PaletteTemplate - Black */
     , (800533,   5,          5) /* EncumbranceVal */
     , (800533,   8,          5) /* Mass */
     , (800533,  11,          1) /* MaxStackSize */
     , (800533,  12,          1) /* StackSize */
     , (800533,  13,          5) /* StackUnitEncumbrance */
     , (800533,  14,          5) /* StackUnitMass */
     , (800533,  15,          0) /* StackUnitValue */
     , (800533,  16,          8) /* ItemUseable - Contained */
     , (800533,  18,         32) /* UiEffects - Magical */
     , (800533,  19,          0) /* Value */
     , (800533,  33,          1) /* Bonded - Bonded */
     , (800533,  92,         -1) /* Structure */
     , (800533,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800533,  94,         16) /* TargetType - Creature */
     , (800533, 106,        325) /* ItemSpellcraft */
     , (800533, 107,      10000) /* ItemCurMana */
     , (800533, 108,      10000) /* ItemMaxMana */
     , (800533, 109,          0) /* ItemDifficulty */
     , (800533, 150,        103) /* HookPlacement - Hook */
     , (800533, 151,         11) /* HookType - Floor, Wall, Yard */
     , (800533, 280,         10) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800533,  22, True ) /* Inscribable */
     , (800533,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800533, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800533,   1, 'Arcane Empire (LR)') /* Name */
     , (800533,  16, 'This card can be used to cast Prodigal Arcane Enlightenment for 15 minutes.') /* LongDesc */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800533,   1, 0x02000179) /* Setup */
     , (800533,   3, 0x20000014) /* SoundTable */
     , (800533,   6, 0x04000BEF) /* PaletteBase */
     , (800533,   8, 0x060062EE) /* Icon */
     , (800533,  22, 0x3400002B) /* PhysicsEffectTable */
     , (800533,  28,       3682) /* Spell - Incantation of Arcane Enlightenment Self */;
