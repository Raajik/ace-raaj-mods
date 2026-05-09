DELETE FROM `weenie` WHERE `class_Id` = 803803;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803803, 'Red Omnitheria of Fury III', 38, '2024-04-18 01:22:13') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803803,   1,       2048) /* ItemType - Gem */
     , (803803,   3,          2) /* PaletteTemplate - Blue */
     , (803803,   5,         50) /* EncumbranceVal */
     , (803803,   9, 1073741824) /* ValidLocations - SigilThree */
     , (803803,  16,          1) /* ItemUseable - No */
     , (803803,  18,          1) /* UiEffects - Magical */
     , (803803,  19,      85000) /* Value */
     , (803803,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803803, 106,        999) /* ItemSpellcraft */
     , (803803, 107,      50000) /* ItemCurMana */
     , (803803, 108,      50000) /* ItemMaxMana */
     , (803803, 158,          7) /* WieldRequirements - Level */
     , (803803, 159,          1) /* WieldSkillType - Axe */
     , (803803, 160,       6000) /* WieldDifficulty */
     , (803803, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803803, 370,        750) /* GearMaxHealth */
     , (803803, 371,        500) /* GearMaxHealth */
     , (803803, 372,        750) /* GearMaxHealth */
     , (803803, 373,        500) /* GearMaxHealth */
     , (803803, 379,        500) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803803,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803803,   5,  -0.001) /* ManaRate */
     , (803803,  39,     0.8) /* DefaultScale */
     , (803803, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803803,   1, 'Red Omnitheria of Fury III') /* Name */
     , (803803,  16, 'This Aetheria is helpful for DPS classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803803,   1, 0x02000722) /* Setup */
     , (803803,   3, 0x20000014) /* SoundTable */
     , (803803,   6, 0x04000BEF) /* PaletteBase */
     , (803803,   7, 0x1000010B) /* ClothingBase */
     , (803803,   8, 0x06006BF4) /* Icon */
     , (803803,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803803,  50, 0x06006BF4) /* IconOverlay */
     , (803803,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803803,  5223,      2) /* Sigil of Destruction XV */;