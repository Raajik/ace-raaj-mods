DELETE FROM `weenie` WHERE `class_Id` = 803874;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803874, 'Ultra Yellow Omnitheria of Fury II', 38, '2024-04-18 01:22:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803874,   1,       2048) /* ItemType - Gem */
     , (803874,   3,          2) /* PaletteTemplate - Blue */
     , (803874,   5,         50) /* EncumbranceVal */
     , (803874,   9,  536870912) /* ValidLocations - SigilThree */
     , (803874,  16,          1) /* ItemUseable - No */
     , (803874,  18,          1) /* UiEffects - Magical */
     , (803874,  19,      65000) /* Value */
     , (803874,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803874, 106,        999) /* ItemSpellcraft */
     , (803874, 107,      50000) /* ItemCurMana */
     , (803874, 108,      50000) /* ItemMaxMana */
     , (803874, 158,          7) /* WieldRequirements - Level */
     , (803874, 159,          1) /* WieldSkillType - Axe */
     , (803874, 160,      10000) /* WieldDifficulty */
     , (803874, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803874, 370,       1250) /* GearMaxHealth */
     , (803874, 371,       1000) /* GearMaxHealth */
     , (803874, 372,       1250) /* GearMaxHealth */
     , (803874, 373,       1000) /* GearMaxHealth */
     , (803874, 376,       1000) /* GearMaxHealth */
     , (803874, 379,       1000) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803874,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803874,   5,  -0.001) /* ManaRate */
     , (803874,  39,     0.8) /* DefaultScale */
     , (803874, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803874,   1, 'Tradewind Aetheria of Fury II') /* Name */
     , (803874,  16, 'This Aetheria is helpful for DPS classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803874,   1, 0x02000722) /* Setup */
     , (803874,   3, 0x20000014) /* SoundTable */
     , (803874,   6, 0x04000BEF) /* PaletteBase */
     , (803874,   7, 0x1000010B) /* ClothingBase */
     , (803874,   8, 0x06006BF3) /* Icon */
     , (803874,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803874,  50, 0x06006BF3) /* IconOverlay */
     , (803874,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803874,  5223,      2) /* Sigil of Destruction XV */;