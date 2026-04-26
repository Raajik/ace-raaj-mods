DELETE FROM `weenie` WHERE `class_Id` = 803879;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803879, 'Ultra Red Omnitheria of Vitality III', 38, '2024-04-18 01:22:13') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803879,   1,       2048) /* ItemType - Gem */
     , (803879,   3,          2) /* PaletteTemplate - Blue */
     , (803879,   5,         50) /* EncumbranceVal */
     , (803879,   9, 1073741824) /* ValidLocations - SigilThree */
     , (803879,  16,          1) /* ItemUseable - No */
     , (803879,  18,          1) /* UiEffects - Magical */
     , (803879,  19,      85000) /* Value */
     , (803879,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803879, 106,        999) /* ItemSpellcraft */
     , (803879, 107,      50000) /* ItemCurMana */
     , (803879, 108,      50000) /* ItemMaxMana */
     , (803879, 158,          7) /* WieldRequirements - Level */
     , (803879, 159,          1) /* WieldSkillType - Axe */
     , (803879, 160,      10000) /* WieldDifficulty */
     , (803879, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803879, 370,       1250) /* GearMaxHealth */
     , (803879, 371,       1250) /* GearMaxHealth */
     , (803879, 372,       1250) /* GearMaxHealth */
     , (803879, 373,       1250) /* GearMaxHealth */
     , (803879, 376,       1500) /* GearMaxHealth */
     , (803879, 379,       1500) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803879,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803879,   5,  -0.001) /* ManaRate */
     , (803879,  39,     0.8) /* DefaultScale */
     , (803879, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803879,   1, 'Tradewind Aetheria of Vitality III') /* Name */
     , (803879,  16, 'This Aetheria is helpful for Healing classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803879,   1, 0x02000722) /* Setup */
     , (803879,   3, 0x20000014) /* SoundTable */
     , (803879,   6, 0x04000BEF) /* PaletteBase */
     , (803879,   7, 0x1000010B) /* ClothingBase */
     , (803879,   8, 0x06006BF4) /* Icon */
     , (803879,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803879,  50, 0x06006BF4) /* IconOverlay */
     , (803879,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803879,  5268,      2) /* Sigil of Destruction XV */;