DELETE FROM `weenie` WHERE `class_Id` = 803327;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803327, 'Lesser Advancement Gem', 51, '2024-07-23 04:58:27') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803327,   1,        128) /* ItemType - Gem */
     , (803327,   3,         39) /* PaletteTemplate - Black */
     , (803327,   5,          5) /* EncumbranceVal */
     , (803327,   8,          5) /* Mass */
     , (803327,  11,        100) /* MaxStackSize */
     , (803327,  12,          1) /* StackSize */
     , (803327,  13,          5) /* StackUnitEncumbrance */
     , (803327,  14,          5) /* StackUnitMass */
     , (803327,  15,       5000) /* StackUnitValue */
     , (803327,  18,          1) /* UiEffects - Magical */
     , (803327,  19,       5000) /* Value */
     , (803327,  33,          1) /* Bonded - Bonded */
     , (803327,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803327, 114,          0) /* Attuned - Attuned */
     , (803327, 150,        103) /* HookPlacement - Hook */
     , (803327, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803327,  22, True ) /* Inscribable */
     , (803327,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803327,   1, 'Lesser Advancement Gem') /* Name */
     , (803327,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you Experience.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803327,   1, 0x020007B7) /* Setup */
     , (803327,   3, 0x20000014) /* SoundTable */
     , (803327,   7, 0x100001FD) /* ClothingBase */
     , (803327,   8, 0x06002D2C) /* Icon */
     , (803327,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803327,  52, 0x06003353) /* IconUnderlay */;