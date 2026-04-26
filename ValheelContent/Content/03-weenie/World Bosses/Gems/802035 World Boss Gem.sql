DELETE FROM `weenie` WHERE `class_Id` = 802035;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802035, 'WorldBossGem', 1, '2024-07-23 04:30:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802035,   1,       128) /* ItemType - Gem */
     , (802035,   3,         39) /* PaletteTemplate - Black */
     , (802035,   5,          5) /* EncumbranceVal */
     , (802035,   8,          5) /* Mass */
     , (802035,  11,          1) /* MaxStackSize */
     , (802035,  12,          1) /* StackSize */
     , (802035,  13,          5) /* StackUnitEncumbrance */
     , (802035,  14,          5) /* StackUnitMass */
     , (802035,  15,        500) /* StackUnitValue */
     , (802035,  18,          1) /* UiEffects - Magical */
     , (802035,  19,        500) /* Value */
     , (802035,  33,          1) /* Bonded - Bonded */
     , (802035,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802035,  94,         16) /* TargetType - Creature */
     , (802035, 114,          1) /* Attuned - Attuned */
     , (802035, 150,        103) /* HookPlacement - Hook */
     , (802035, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802035,  22, True ) /* Inscribable */
     , (802035,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802035,   1, 'World Boss Gem') /* Name */
     , (802035,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (802035,  33, 'WBKill') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802035,   1, 0x02000179) /* Setup */
     , (802035,   3, 0x20000014) /* SoundTable */
     , (802035,   6, 0x04000BEF) /* PaletteBase */
     , (802035,   8, 0x00006989) /* Icon */
     , (802035,  22, 0x3400002B) /* PhysicsEffectTable */;
