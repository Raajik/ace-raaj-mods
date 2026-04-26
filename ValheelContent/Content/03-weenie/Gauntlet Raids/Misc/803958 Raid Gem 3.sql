DELETE FROM `weenie` WHERE `class_Id` = 803958;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803958, 'Raid Gem3', 1, '2024-07-23 04:57:39') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803958,   1,        128) /* ItemType - Gem */
     , (803958,   3,         39) /* PaletteTemplate - Black */
     , (803958,   5,          5) /* EncumbranceVal */
     , (803958,   8,          5) /* Mass */
     , (803958,  11,          1) /* MaxStackSize */
     , (803958,  12,          1) /* StackSize */
     , (803958,  13,          5) /* StackUnitEncumbrance */
     , (803958,  14,          5) /* StackUnitMass */
     , (803958,  15,          1) /* StackUnitValue */
     , (803958,  18,          2) /* UiEffects - Magical */
     , (803958,  19,          1) /* Value */
     , (803958,  33,          1) /* Bonded - Bonded */
     , (803958,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803958, 114,          1) /* Attuned - Attuned */
     , (803958, 150,        103) /* HookPlacement - Hook */
     , (803958, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803958,  22, True ) /* Inscribable */
     , (803958,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803958,   1, 'Raid Gem') /* Name */
     , (803958,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803958,  33, 'RaidGemPickup3') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803958,   1, 0x020007B7) /* Setup */
     , (803958,   3, 0x20000014) /* SoundTable */
     , (803958,   7, 0x100001FD) /* ClothingBase */
     , (803958,   8, 0x06002D2C) /* Icon */
     , (803958,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803958,  52, 0x06003353) /* IconUnderlay */;