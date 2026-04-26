DELETE FROM `weenie` WHERE `class_Id` = 803273;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803273, 'WorldBossGem8', 1, '2024-07-23 04:42:11') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803273,   1,       128) /* ItemType - Gem */
     , (803273,   3,         39) /* PaletteTemplate - Black */
     , (803273,   5,          5) /* EncumbranceVal */
     , (803273,   8,          5) /* Mass */
     , (803273,  11,          1) /* MaxStackSize */
     , (803273,  12,          1) /* StackSize */
     , (803273,  13,          5) /* StackUnitEncumbrance */
     , (803273,  14,          5) /* StackUnitMass */
     , (803273,  15,        500) /* StackUnitValue */
     , (803273,  18,          1) /* UiEffects - Magical */
     , (803273,  19,        500) /* Value */
     , (803273,  33,          1) /* Bonded - Bonded */
     , (803273,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803273,  94,         16) /* TargetType - Creature */
     , (803273, 114,          1) /* Attuned - Attuned */
     , (803273, 150,        103) /* HookPlacement - Hook */
     , (803273, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803273,  22, True ) /* Inscribable */
     , (803273,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803273,   1, 'World Boss Gem') /* Name */
     , (803273,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803273,  33, 'WBKill8') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803273,   1, 0x02000179) /* Setup */
     , (803273,   3, 0x20000014) /* SoundTable */
     , (803273,   6, 0x04000BEF) /* PaletteBase */
     , (803273,   8, 0x00006989) /* Icon */
     , (803273,  22, 0x3400002B) /* PhysicsEffectTable */;
