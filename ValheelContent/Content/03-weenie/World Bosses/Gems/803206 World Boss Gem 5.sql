DELETE FROM `weenie` WHERE `class_Id` = 803206;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803206, 'WorldBossGem5', 1, '2024-07-23 04:40:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803206,   1,       128) /* ItemType - Gem */
     , (803206,   3,         39) /* PaletteTemplate - Black */
     , (803206,   5,          5) /* EncumbranceVal */
     , (803206,   8,          5) /* Mass */
     , (803206,  11,          1) /* MaxStackSize */
     , (803206,  12,          1) /* StackSize */
     , (803206,  13,          5) /* StackUnitEncumbrance */
     , (803206,  14,          5) /* StackUnitMass */
     , (803206,  15,        500) /* StackUnitValue */
     , (803206,  18,          1) /* UiEffects - Magical */
     , (803206,  19,        500) /* Value */
     , (803206,  33,          1) /* Bonded - Bonded */
     , (803206,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803206,  94,         16) /* TargetType - Creature */
     , (803206, 114,          1) /* Attuned - Attuned */
     , (803206, 150,        103) /* HookPlacement - Hook */
     , (803206, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803206,  22, True ) /* Inscribable */
     , (803206,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803206,   1, 'World Boss Gem') /* Name */
     , (803206,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803206,  33, 'WBKill5') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803206,   1, 0x02000179) /* Setup */
     , (803206,   3, 0x20000014) /* SoundTable */
     , (803206,   6, 0x04000BEF) /* PaletteBase */
     , (803206,   8, 0x00006989) /* Icon */
     , (803206,  22, 0x3400002B) /* PhysicsEffectTable */;
