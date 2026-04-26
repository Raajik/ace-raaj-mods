DELETE FROM `weenie` WHERE `class_Id` = 803990;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803990, 'Raid Gem4', 1, '2024-07-23 04:57:39') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803990,   1,        128) /* ItemType - Gem */
     , (803990,   3,         39) /* PaletteTemplate - Black */
     , (803990,   5,          5) /* EncumbranceVal */
     , (803990,   8,          5) /* Mass */
     , (803990,  11,          1) /* MaxStackSize */
     , (803990,  12,          1) /* StackSize */
     , (803990,  13,          5) /* StackUnitEncumbrance */
     , (803990,  14,          5) /* StackUnitMass */
     , (803990,  15,          1) /* StackUnitValue */
     , (803990,  18,          2) /* UiEffects - Magical */
     , (803990,  19,          1) /* Value */
     , (803990,  33,          1) /* Bonded - Bonded */
     , (803990,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803990, 114,          1) /* Attuned - Attuned */
     , (803990, 150,        103) /* HookPlacement - Hook */
     , (803990, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803990,  22, True ) /* Inscribable */
     , (803990,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803990,   1, 'Raid Gem') /* Name */
     , (803990,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803990,  33, 'RaidGemPickup4') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803990,   1, 0x020007B7) /* Setup */
     , (803990,   3, 0x20000014) /* SoundTable */
     , (803990,   7, 0x100001FD) /* ClothingBase */
     , (803990,   8, 0x06002D2C) /* Icon */
     , (803990,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803990,  52, 0x06003353) /* IconUnderlay */;