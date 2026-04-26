DELETE FROM `weenie` WHERE `class_Id` = 803374;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803374, 'WorldBossGem11', 1, '2024-07-23 04:44:34') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803374,   1,       128) /* ItemType - Gem */
     , (803374,   3,         39) /* PaletteTemplate - Black */
     , (803374,   5,          5) /* EncumbranceVal */
     , (803374,   8,          5) /* Mass */
     , (803374,  11,          1) /* MaxStackSize */
     , (803374,  12,          1) /* StackSize */
     , (803374,  13,          5) /* StackUnitEncumbrance */
     , (803374,  14,          5) /* StackUnitMass */
     , (803374,  15,        500) /* StackUnitValue */
     , (803374,  18,          1) /* UiEffects - Magical */
     , (803374,  19,        500) /* Value */
     , (803374,  33,          1) /* Bonded - Bonded */
     , (803374,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803374,  94,         16) /* TargetType - Creature */
     , (803374, 114,          1) /* Attuned - Attuned */
     , (803374, 150,        103) /* HookPlacement - Hook */
     , (803374, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803374,  22, True ) /* Inscribable */
     , (803374,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803374,   1, 'World Boss Gem') /* Name */
     , (803374,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803374,  33, 'WBKill11') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803374,   1, 0x02000179) /* Setup */
     , (803374,   3, 0x20000014) /* SoundTable */
     , (803374,   6, 0x04000BEF) /* PaletteBase */
     , (803374,   8, 0x00006989) /* Icon */
     , (803374,  22, 0x3400002B) /* PhysicsEffectTable */;
