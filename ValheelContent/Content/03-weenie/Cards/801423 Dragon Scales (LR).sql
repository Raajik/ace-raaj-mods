DELETE FROM `weenie` WHERE `class_Id` = 801423;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801423, 'Dargon Scales LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801423,   1,       2048) /* ItemType - Gem */
     , (801423,   3,         39) /* PaletteTemplate - Black */
     , (801423,   5,          5) /* EncumbranceVal */
     , (801423,   8,          5) /* Mass */
     , (801423,  11,          1) /* MaxStackSize */
     , (801423,  12,          1) /* StackSize */
     , (801423,  13,          5) /* StackUnitEncumbrance */
     , (801423,  14,          5) /* StackUnitMass */
     , (801423,  15,          200) /* StackUnitValue */
     , (801423,  16,          8) /* ItemUseable - Contained */
     , (801423,  18,        256) /* UiEffects - Magical */
     , (801423,  19,          200) /* Value */
     , (801423,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801423,  33,          1) /* Bonded - Slippery */
     , (801423,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801423,  94,         16) /* TargetType - Creature */
     , (801423, 106,        325) /* ItemSpellcraft */
     , (801423, 107,      10000) /* ItemCurMana */
     , (801423, 108,      10000) /* ItemMaxMana */
     , (801423, 109,          0) /* ItemDifficulty */
     , (801423, 150,        103) /* HookPlacement - Hook */
     , (801423, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801423,  11, True ) /* IgnoreCollisions */
     , (801423,  13, True ) /* Ethereal */
     , (801423,  14, True ) /* GravityStatus */
     , (801423,  19, True ) /* Attackable */
     , (801423,  22, True ) /* Inscribable */
     , (801423,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801423,   1, 'Dragon Scales (LR)') /* Name */
     , (801423,  14, 'This card can be used to cast Prodigal Impenatrability for 15 minutes.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801423,   1, 0x02000179) /* Setup */
     , (801423,   3, 0x20000014) /* SoundTable */
     , (801423,   6, 0x04000BEF) /* PaletteBase */
     , (801423,   8, 0x060062EE) /* Icon */
     , (801423,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801423,  28,       3684) /* Spell - Prodigal Impenetrability */;
