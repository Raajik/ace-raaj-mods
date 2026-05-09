DELETE FROM `weenie` WHERE `class_Id` = 803203;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803203, 'WorldBossGem2', 1, '2024-07-23 04:36:49') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803203,   1,       128) /* ItemType - Gem */
     , (803203,   3,         39) /* PaletteTemplate - Black */
     , (803203,   5,          5) /* EncumbranceVal */
     , (803203,   8,          5) /* Mass */
     , (803203,  11,          1) /* MaxStackSize */
     , (803203,  12,          1) /* StackSize */
     , (803203,  13,          5) /* StackUnitEncumbrance */
     , (803203,  14,          5) /* StackUnitMass */
     , (803203,  15,        500) /* StackUnitValue */
     , (803203,  18,          1) /* UiEffects - Magical */
     , (803203,  19,        500) /* Value */
     , (803203,  33,          1) /* Bonded - Bonded */
     , (803203,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803203,  94,         16) /* TargetType - Creature */
     , (803203, 114,          1) /* Attuned - Attuned */
     , (803203, 150,        103) /* HookPlacement - Hook */
     , (803203, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803203,  22, True ) /* Inscribable */
     , (803203,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803203,   1, 'World Boss Gem') /* Name */
     , (803203,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803203,  33, 'WBKill2') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803203,   1, 0x02000179) /* Setup */
     , (803203,   3, 0x20000014) /* SoundTable */
     , (803203,   6, 0x04000BEF) /* PaletteBase */
     , (803203,   8, 0x00006989) /* Icon */
     , (803203,  22, 0x3400002B) /* PhysicsEffectTable */;
