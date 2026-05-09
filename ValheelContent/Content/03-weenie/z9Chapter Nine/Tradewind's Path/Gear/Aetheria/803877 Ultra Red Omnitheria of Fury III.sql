DELETE FROM `weenie` WHERE `class_Id` = 803877;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803877, 'Ultra Red Omnitheria of Fury III', 38, '2024-04-18 01:22:13') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803877,   1,       2048) /* ItemType - Gem */
     , (803877,   3,          2) /* PaletteTemplate - Blue */
     , (803877,   5,         50) /* EncumbranceVal */
     , (803877,   9, 1073741824) /* ValidLocations - SigilThree */
     , (803877,  16,          1) /* ItemUseable - No */
     , (803877,  18,          1) /* UiEffects - Magical */
     , (803877,  19,      85000) /* Value */
     , (803877,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803877, 106,        999) /* ItemSpellcraft */
     , (803877, 107,      50000) /* ItemCurMana */
     , (803877, 108,      50000) /* ItemMaxMana */
     , (803877, 158,          7) /* WieldRequirements - Level */
     , (803877, 159,          1) /* WieldSkillType - Axe */
     , (803877, 160,      10000) /* WieldDifficulty */
     , (803877, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803877, 370,       1500) /* GearMaxHealth */
     , (803877, 371,       1250) /* GearMaxHealth */
     , (803877, 372,       1500) /* GearMaxHealth */
     , (803877, 373,       1250) /* GearMaxHealth */
     , (803877, 376,       1250) /* GearMaxHealth */
     , (803877, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803877,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803877,   5,  -0.001) /* ManaRate */
     , (803877,  39,     0.8) /* DefaultScale */
     , (803877, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803877,   1, 'Tradewind Aetheria of Fury III') /* Name */
     , (803877,  16, 'This Aetheria is helpful for DPS classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803877,   1, 0x02000722) /* Setup */
     , (803877,   3, 0x20000014) /* SoundTable */
     , (803877,   6, 0x04000BEF) /* PaletteBase */
     , (803877,   7, 0x1000010B) /* ClothingBase */
     , (803877,   8, 0x06006BF4) /* Icon */
     , (803877,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803877,  50, 0x06006BF4) /* IconOverlay */
     , (803877,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803877,  5223,      2) /* Sigil of Destruction XV */;