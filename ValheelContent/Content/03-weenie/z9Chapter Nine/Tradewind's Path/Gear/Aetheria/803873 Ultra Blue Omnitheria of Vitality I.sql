DELETE FROM `weenie` WHERE `class_Id` = 803873;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803873, 'Ultra Blue Omnitheria of Vitality I', 38, '2024-04-18 01:22:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803873,   1,       2048) /* ItemType - Gem */
     , (803873,   3,          2) /* PaletteTemplate - Blue */
     , (803873,   5,         50) /* EncumbranceVal */
     , (803873,   9,  268435456) /* ValidLocations - SigilThree */
     , (803873,  16,          1) /* ItemUseable - No */
     , (803873,  18,          1) /* UiEffects - Magical */
     , (803873,  19,      35000) /* Value */
     , (803873,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803873, 106,        999) /* ItemSpellcraft */
     , (803873, 107,      50000) /* ItemCurMana */
     , (803873, 108,      50000) /* ItemMaxMana */
     , (803873, 158,          7) /* WieldRequirements - Level */
     , (803873, 159,          1) /* WieldSkillType - Axe */
     , (803873, 160,      10000) /* WieldDifficulty */
     , (803873, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803873, 370,        750) /* GearMaxHealth */
     , (803873, 371,        750) /* GearMaxHealth */
     , (803873, 372,        750) /* GearMaxHealth */
     , (803873, 373,        750) /* GearMaxHealth */
     , (803873, 376,       1000) /* GearMaxHealth */
     , (803873, 379,       1000) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803873,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803873,   5,  -0.001) /* ManaRate */
     , (803873,  39,     0.8) /* DefaultScale */
     , (803873, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803873,   1, 'Tradewind Aetheria of Vitality I') /* Name */
     , (803873,  16, 'This Aetheria is helpful for Healing classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803873,   1, 0x02000722) /* Setup */
     , (803873,   3, 0x20000014) /* SoundTable */
     , (803873,   6, 0x04000BEF) /* PaletteBase */
     , (803873,   7, 0x1000010B) /* ClothingBase */
     , (803873,   8, 0x06006BF2) /* Icon */
     , (803873,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803873,  50, 0x06006BF2) /* IconOverlay */
     , (803873,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803873,  5268,      2) /* Sigil of Fury XV */;