DELETE FROM `weenie` WHERE `class_Id` = 803331;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803331, 'Raid Gem', 1, '2024-07-23 05:02:19') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803331,   1,        128) /* ItemType - Gem */
     , (803331,   3,         39) /* PaletteTemplate - Black */
     , (803331,   5,          5) /* EncumbranceVal */
     , (803331,   8,          5) /* Mass */
     , (803331,  11,          1) /* MaxStackSize */
     , (803331,  12,          1) /* StackSize */
     , (803331,  13,          5) /* StackUnitEncumbrance */
     , (803331,  14,          5) /* StackUnitMass */
     , (803331,  15,          1) /* StackUnitValue */
     , (803331,  18,          2) /* UiEffects - Magical */
     , (803331,  19,          1) /* Value */
     , (803331,  33,          1) /* Bonded - Bonded */
     , (803331,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803331, 114,          1) /* Attuned - Attuned */
     , (803331, 150,        103) /* HookPlacement - Hook */
     , (803331, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803331,  22, True ) /* Inscribable */
     , (803331,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803331,   1, 'Raid Gem') /* Name */
     , (803331,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803331,  33, 'RaidGemPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803331,   1, 0x020007B7) /* Setup */
     , (803331,   3, 0x20000014) /* SoundTable */
     , (803331,   7, 0x100001FD) /* ClothingBase */
     , (803331,   8, 0x06002D2C) /* Icon */
     , (803331,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803331,  52, 0x06003353) /* IconUnderlay */;