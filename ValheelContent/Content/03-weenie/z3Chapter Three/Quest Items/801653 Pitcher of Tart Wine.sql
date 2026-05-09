DELETE FROM `weenie` WHERE `class_Id` = 801653;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801653, 'Pitcher of Tart Wine', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801653,   1,       2048) /* ItemType - Gem */
     , (801653,   3,         39) /* PaletteTemplate - Black */
     , (801653,   5,          5) /* EncumbranceVal */
     , (801653,   8,          5) /* Mass */
     , (801653,  11,          1) /* MaxStackSize */
     , (801653,  12,          1) /* StackSize */
     , (801653,  13,          5) /* StackUnitEncumbrance */
     , (801653,  14,          5) /* StackUnitMass */
     , (801653,  15,        200) /* StackUnitValue */
     , (801653,  16,          8) /* ItemUseable - Contained */
     , (801653,  18,        256) /* UiEffects - Magical */
     , (801653,  19,        200) /* Value */
     , (801653,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801653,  33,          1) /* Bonded - Slippery */
     , (801653,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801653,  94,         16) /* TargetType - Creature */
     , (801653, 106,        325) /* ItemSpellcraft */
     , (801653, 107,      10000) /* ItemCurMana */
     , (801653, 108,      10000) /* ItemMaxMana */
     , (801653, 109,          0) /* ItemDifficulty */
     , (801653, 114,          2) /* Attuned - Attuned */
     , (801653, 150,        103) /* HookPlacement - Hook */
     , (801653, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801653,  11, True ) /* IgnoreCollisions */
     , (801653,  13, True ) /* Ethereal */
     , (801653,  14, True ) /* GravityStatus */
     , (801653,  19, True ) /* Attackable */
     , (801653,  22, True ) /* Inscribable */
     , (801653,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801653,   1, 'Pitcher of Tart Wine') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801653,   1, 0x02000179) /* Setup */
     , (801653,   3, 0x20000014) /* SoundTable */
     , (801653,   6, 0x04000BEF) /* PaletteBase */
     , (801653,   8, 25186) /* Icon */
     , (801653,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801653,  28,       3736) /* Spell - Prodigal Sprint */;
