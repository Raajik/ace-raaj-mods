DELETE FROM `weenie` WHERE `class_Id` = 803871;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803871, 'Ultra Blue Omnitheria of Fury I', 38, '2024-04-18 01:22:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803871,   1,       2048) /* ItemType - Gem */
     , (803871,   3,          2) /* PaletteTemplate - Blue */
     , (803871,   5,         50) /* EncumbranceVal */
     , (803871,   9,  268435456) /* ValidLocations - SigilThree */
     , (803871,  16,          1) /* ItemUseable - No */
     , (803871,  18,          1) /* UiEffects - Magical */
     , (803871,  19,      35000) /* Value */
     , (803871,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803871, 106,        999) /* ItemSpellcraft */
     , (803871, 107,      50000) /* ItemCurMana */
     , (803871, 108,      50000) /* ItemMaxMana */
     , (803871, 158,          7) /* WieldRequirements - Level */
     , (803871, 159,          1) /* WieldSkillType - Axe */
     , (803871, 160,      10000) /* WieldDifficulty */
     , (803871, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803871, 370,       1000) /* GearMaxHealth */
     , (803871, 371,        750) /* GearMaxHealth */
     , (803871, 372,       1000) /* GearMaxHealth */
     , (803871, 373,        750) /* GearMaxHealth */
     , (803871, 376,        750) /* GearMaxHealth */
     , (803871, 379,        750) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803871,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803871,   5,  -0.001) /* ManaRate */
     , (803871,  39,     0.8) /* DefaultScale */
     , (803871, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803871,   1, 'Tradewind Aetheria of Fury I') /* Name */
     , (803871,  16, 'This Aetheria is helpful for DPS classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803871,   1, 0x02000722) /* Setup */
     , (803871,   3, 0x20000014) /* SoundTable */
     , (803871,   6, 0x04000BEF) /* PaletteBase */
     , (803871,   7, 0x1000010B) /* ClothingBase */
     , (803871,   8, 0x06006BF2) /* Icon */
     , (803871,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803871,  50, 0x06006BF2) /* IconOverlay */
     , (803871,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803871,  5223,      2) /* Sigil of Destruction XV */;