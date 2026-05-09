DELETE FROM `weenie` WHERE `class_Id` = 803274;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803274, 'WorldBossGem9', 1, '2024-07-23 04:42:39') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803274,   1,       128) /* ItemType - Gem */
     , (803274,   3,         39) /* PaletteTemplate - Black */
     , (803274,   5,          5) /* EncumbranceVal */
     , (803274,   8,          5) /* Mass */
     , (803274,  11,          1) /* MaxStackSize */
     , (803274,  12,          1) /* StackSize */
     , (803274,  13,          5) /* StackUnitEncumbrance */
     , (803274,  14,          5) /* StackUnitMass */
     , (803274,  15,        500) /* StackUnitValue */
     , (803274,  18,          1) /* UiEffects - Magical */
     , (803274,  19,        500) /* Value */
     , (803274,  33,          1) /* Bonded - Bonded */
     , (803274,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803274,  94,         16) /* TargetType - Creature */
     , (803274, 114,          1) /* Attuned - Attuned */
     , (803274, 150,        103) /* HookPlacement - Hook */
     , (803274, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803274,  22, True ) /* Inscribable */
     , (803274,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803274,   1, 'World Boss Gem') /* Name */
     , (803274,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803274,  33, 'WBKill9') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803274,   1, 0x02000179) /* Setup */
     , (803274,   3, 0x20000014) /* SoundTable */
     , (803274,   6, 0x04000BEF) /* PaletteBase */
     , (803274,   8, 0x00006989) /* Icon */
     , (803274,  22, 0x3400002B) /* PhysicsEffectTable */;
