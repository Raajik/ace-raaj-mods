DELETE FROM `weenie` WHERE `class_Id` = 803205;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803205, 'WorldBossGem4', 1, '2024-07-23 04:39:25') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803205,   1,       128) /* ItemType - Gem */
     , (803205,   3,         39) /* PaletteTemplate - Black */
     , (803205,   5,          5) /* EncumbranceVal */
     , (803205,   8,          5) /* Mass */
     , (803205,  11,          1) /* MaxStackSize */
     , (803205,  12,          1) /* StackSize */
     , (803205,  13,          5) /* StackUnitEncumbrance */
     , (803205,  14,          5) /* StackUnitMass */
     , (803205,  15,        500) /* StackUnitValue */
     , (803205,  18,          1) /* UiEffects - Magical */
     , (803205,  19,        500) /* Value */
     , (803205,  33,          1) /* Bonded - Bonded */
     , (803205,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803205,  94,         16) /* TargetType - Creature */
     , (803205, 114,          1) /* Attuned - Attuned */
     , (803205, 150,        103) /* HookPlacement - Hook */
     , (803205, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803205,  22, True ) /* Inscribable */
     , (803205,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803205,   1, 'World Boss Gem') /* Name */
     , (803205,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803205,  33, 'WBKill4') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803205,   1, 0x02000179) /* Setup */
     , (803205,   3, 0x20000014) /* SoundTable */
     , (803205,   6, 0x04000BEF) /* PaletteBase */
     , (803205,   8, 0x00006989) /* Icon */
     , (803205,  22, 0x3400002B) /* PhysicsEffectTable */;
