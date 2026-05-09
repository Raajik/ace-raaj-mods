DELETE FROM `weenie` WHERE `class_Id` = 803272;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803272, 'WorldBossGem7', 1, '2024-07-23 04:40:38') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803272,   1,       128) /* ItemType - Gem */
     , (803272,   3,         39) /* PaletteTemplate - Black */
     , (803272,   5,          5) /* EncumbranceVal */
     , (803272,   8,          5) /* Mass */
     , (803272,  11,          1) /* MaxStackSize */
     , (803272,  12,          1) /* StackSize */
     , (803272,  13,          5) /* StackUnitEncumbrance */
     , (803272,  14,          5) /* StackUnitMass */
     , (803272,  15,        500) /* StackUnitValue */
     , (803272,  18,          1) /* UiEffects - Magical */
     , (803272,  19,        500) /* Value */
     , (803272,  33,          1) /* Bonded - Bonded */
     , (803272,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803272,  94,         16) /* TargetType - Creature */
     , (803272, 114,          1) /* Attuned - Attuned */
     , (803272, 150,        103) /* HookPlacement - Hook */
     , (803272, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803272,  22, True ) /* Inscribable */
     , (803272,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803272,   1, 'World Boss Gem') /* Name */
     , (803272,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803272,  33, 'WBKill7') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803272,   1, 0x02000179) /* Setup */
     , (803272,   3, 0x20000014) /* SoundTable */
     , (803272,   6, 0x04000BEF) /* PaletteBase */
     , (803272,   8, 0x00006989) /* Icon */
     , (803272,  22, 0x3400002B) /* PhysicsEffectTable */;
