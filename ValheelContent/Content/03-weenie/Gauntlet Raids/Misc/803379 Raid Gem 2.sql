DELETE FROM `weenie` WHERE `class_Id` = 803379;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803379, 'Raid Gem2', 1, '2024-07-23 04:57:39') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803379,   1,        128) /* ItemType - Gem */
     , (803379,   3,         39) /* PaletteTemplate - Black */
     , (803379,   5,          5) /* EncumbranceVal */
     , (803379,   8,          5) /* Mass */
     , (803379,  11,          1) /* MaxStackSize */
     , (803379,  12,          1) /* StackSize */
     , (803379,  13,          5) /* StackUnitEncumbrance */
     , (803379,  14,          5) /* StackUnitMass */
     , (803379,  15,          1) /* StackUnitValue */
     , (803379,  18,          2) /* UiEffects - Magical */
     , (803379,  19,          1) /* Value */
     , (803379,  33,          1) /* Bonded - Bonded */
     , (803379,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803379, 114,          1) /* Attuned - Attuned */
     , (803379, 150,        103) /* HookPlacement - Hook */
     , (803379, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803379,  22, True ) /* Inscribable */
     , (803379,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803379,   1, 'Raid Gem') /* Name */
     , (803379,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you with great rewards.') /* LongDesc */
     , (803379,  33, 'RaidGemPickup2') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803379,   1, 0x020007B7) /* Setup */
     , (803379,   3, 0x20000014) /* SoundTable */
     , (803379,   7, 0x100001FD) /* ClothingBase */
     , (803379,   8, 0x06002D2C) /* Icon */
     , (803379,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803379,  52, 0x06003353) /* IconUnderlay */;