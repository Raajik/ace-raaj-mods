DELETE FROM `weenie` WHERE `class_Id` = 803248;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803248, 'WorldBossGem6', 1, '2024-07-23 04:40:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803248,   1,       128) /* ItemType - Gem */
     , (803248,   3,         39) /* PaletteTemplate - Black */
     , (803248,   5,          5) /* EncumbranceVal */
     , (803248,   8,          5) /* Mass */
     , (803248,  11,          1) /* MaxStackSize */
     , (803248,  12,          1) /* StackSize */
     , (803248,  13,          5) /* StackUnitEncumbrance */
     , (803248,  14,          5) /* StackUnitMass */
     , (803248,  15,        500) /* StackUnitValue */
     , (803248,  18,          1) /* UiEffects - Magical */
     , (803248,  19,        500) /* Value */
     , (803248,  33,          1) /* Bonded - Bonded */
     , (803248,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803248,  94,         16) /* TargetType - Creature */
     , (803248, 114,          1) /* Attuned - Attuned */
     , (803248, 150,        103) /* HookPlacement - Hook */
     , (803248, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803248,  22, True ) /* Inscribable */
     , (803248,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803248,   1, 'World Boss Gem') /* Name */
     , (803248,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803248,  33, 'WBKill6') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803248,   1, 0x02000179) /* Setup */
     , (803248,   3, 0x20000014) /* SoundTable */
     , (803248,   6, 0x04000BEF) /* PaletteBase */
     , (803248,   8, 0x00006989) /* Icon */
     , (803248,  22, 0x3400002B) /* PhysicsEffectTable */;
