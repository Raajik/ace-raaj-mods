DELETE FROM `weenie` WHERE `class_Id` = 803742;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803742, 'WorldBossGem13', 1, '2024-07-23 04:35:46') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803742,   1,       128) /* ItemType - Gem */
     , (803742,   3,         39) /* PaletteTemplate - Black */
     , (803742,   5,          5) /* EncumbranceVal */
     , (803742,   8,          5) /* Mass */
     , (803742,  11,          1) /* MaxStackSize */
     , (803742,  12,          1) /* StackSize */
     , (803742,  13,          5) /* StackUnitEncumbrance */
     , (803742,  14,          5) /* StackUnitMass */
     , (803742,  15,        500) /* StackUnitValue */
     , (803742,  18,          1) /* UiEffects - Magical */
     , (803742,  19,        500) /* Value */
     , (803742,  33,          1) /* Bonded - Bonded */
     , (803742,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803742,  94,         16) /* TargetType - Creature */
     , (803742, 114,          1) /* Attuned - Attuned */
     , (803742, 150,        103) /* HookPlacement - Hook */
     , (803742, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803742,  22, True ) /* Inscribable */
     , (803742,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803742,   1, 'World Boss Gem') /* Name */
     , (803742,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803742,  33, 'WBKill13') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803742,   1, 0x02000179) /* Setup */
     , (803742,   3, 0x20000014) /* SoundTable */
     , (803742,   6, 0x04000BEF) /* PaletteBase */
     , (803742,   8, 0x00006989) /* Icon */
     , (803742,  22, 0x3400002B) /* PhysicsEffectTable */;
