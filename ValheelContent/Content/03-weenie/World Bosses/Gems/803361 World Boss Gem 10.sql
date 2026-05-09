DELETE FROM `weenie` WHERE `class_Id` = 803361;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803361, 'WorldBossGem10', 1, '2024-07-23 04:43:10') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803361,   1,       128) /* ItemType - Gem */
     , (803361,   3,         39) /* PaletteTemplate - Black */
     , (803361,   5,          5) /* EncumbranceVal */
     , (803361,   8,          5) /* Mass */
     , (803361,  11,          1) /* MaxStackSize */
     , (803361,  12,          1) /* StackSize */
     , (803361,  13,          5) /* StackUnitEncumbrance */
     , (803361,  14,          5) /* StackUnitMass */
     , (803361,  15,        500) /* StackUnitValue */
     , (803361,  18,          1) /* UiEffects - Magical */
     , (803361,  19,        500) /* Value */
     , (803361,  33,          1) /* Bonded - Bonded */
     , (803361,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803361,  94,         16) /* TargetType - Creature */
     , (803361, 114,          1) /* Attuned - Attuned */
     , (803361, 150,        103) /* HookPlacement - Hook */
     , (803361, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803361,  22, True ) /* Inscribable */
     , (803361,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803361,   1, 'World Boss Gem') /* Name */
     , (803361,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803361,  33, 'WBKill10') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803361,   1, 0x02000179) /* Setup */
     , (803361,   3, 0x20000014) /* SoundTable */
     , (803361,   6, 0x04000BEF) /* PaletteBase */
     , (803361,   8, 0x00006989) /* Icon */
     , (803361,  22, 0x3400002B) /* PhysicsEffectTable */;
