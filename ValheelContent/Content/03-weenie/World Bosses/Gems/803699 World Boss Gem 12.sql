DELETE FROM `weenie` WHERE `class_Id` = 803699;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803699, 'WorldBossGem12', 1, '2024-07-23 04:33:17') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803699,   1,        128) /* ItemType - Gem */
     , (803699,   3,         39) /* PaletteTemplate - Black */
     , (803699,   5,          5) /* EncumbranceVal */
     , (803699,   8,          5) /* Mass */
     , (803699,  11,          1) /* MaxStackSize */
     , (803699,  12,          1) /* StackSize */
     , (803699,  13,          5) /* StackUnitEncumbrance */
     , (803699,  14,          5) /* StackUnitMass */
     , (803699,  15,        500) /* StackUnitValue */
     , (803699,  18,          1) /* UiEffects - Magical */
     , (803699,  19,        500) /* Value */
     , (803699,  33,          1) /* Bonded - Bonded */
     , (803699,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803699,  94,         16) /* TargetType - Creature */
     , (803699, 114,          1) /* Attuned - Attuned */
     , (803699, 150,        103) /* HookPlacement - Hook */
     , (803699, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803699,  22, True ) /* Inscribable */
     , (803699,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803699,   1, 'World Boss Gem') /* Name */
     , (803699,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803699,  33, 'WBKill12') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803699,   1, 0x02000179) /* Setup */
     , (803699,   3, 0x20000014) /* SoundTable */
     , (803699,   6, 0x04000BEF) /* PaletteBase */
     , (803699,   8, 0x00006989) /* Icon */
     , (803699,  22, 0x3400002B) /* PhysicsEffectTable */;