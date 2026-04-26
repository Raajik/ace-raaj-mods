DELETE FROM `weenie` WHERE `class_Id` = 803204;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803204, 'WorldBossGem3', 1, '2024-07-23 04:38:46') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803204,   1,       128) /* ItemType - Gem */
     , (803204,   3,         39) /* PaletteTemplate - Black */
     , (803204,   5,          5) /* EncumbranceVal */
     , (803204,   8,          5) /* Mass */
     , (803204,  11,          1) /* MaxStackSize */
     , (803204,  12,          1) /* StackSize */
     , (803204,  13,          5) /* StackUnitEncumbrance */
     , (803204,  14,          5) /* StackUnitMass */
     , (803204,  15,        500) /* StackUnitValue */
     , (803204,  18,          1) /* UiEffects - Magical */
     , (803204,  19,        500) /* Value */
     , (803204,  33,          1) /* Bonded - Bonded */
     , (803204,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803204,  94,         16) /* TargetType - Creature */
     , (803204, 114,          1) /* Attuned - Attuned */
     , (803204, 150,        103) /* HookPlacement - Hook */
     , (803204, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803204,  22, True ) /* Inscribable */
     , (803204,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803204,   1, 'World Boss Gem') /* Name */
     , (803204,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803204,  33, 'WBKill3') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803204,   1, 0x02000179) /* Setup */
     , (803204,   3, 0x20000014) /* SoundTable */
     , (803204,   6, 0x04000BEF) /* PaletteBase */
     , (803204,   8, 0x00006989) /* Icon */
     , (803204,  22, 0x3400002B) /* PhysicsEffectTable */;
