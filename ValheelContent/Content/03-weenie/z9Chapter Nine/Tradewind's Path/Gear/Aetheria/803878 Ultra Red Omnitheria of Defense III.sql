DELETE FROM `weenie` WHERE `class_Id` = 803878;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803878, 'Ultra Red Omnitheria of Defense III', 38, '2024-04-18 01:22:13') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803878,   1,       2048) /* ItemType - Gem */
     , (803878,   3,          2) /* PaletteTemplate - Blue */
     , (803878,   5,         50) /* EncumbranceVal */
     , (803878,   9, 1073741824) /* ValidLocations - SigilThree */
     , (803878,  16,          1) /* ItemUseable - No */
     , (803878,  18,          1) /* UiEffects - Magical */
     , (803878,  19,      85000) /* Value */
     , (803878,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803878, 106,        999) /* ItemSpellcraft */
     , (803878, 107,      50000) /* ItemCurMana */
     , (803878, 108,      50000) /* ItemMaxMana */
     , (803878, 158,          7) /* WieldRequirements - Level */
     , (803878, 159,          1) /* WieldSkillType - Axe */
     , (803878, 160,      10000) /* WieldDifficulty */
     , (803878, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803878, 370,       1250) /* GearMaxHealth */
     , (803878, 371,       1500) /* GearMaxHealth */
     , (803878, 372,       1250) /* GearMaxHealth */
     , (803878, 373,       1500) /* GearMaxHealth */
     , (803878, 376,       1250) /* GearMaxHealth */
     , (803878, 379,       1500) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803878,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803878,   5,  -0.001) /* ManaRate */
     , (803878,  39,     0.8) /* DefaultScale */
     , (803878, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803878,   1, 'Tradewind Aetheria of Defense III') /* Name */
     , (803878,  16, 'This Aetheria is helpful for Tank classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803878,   1, 0x02000722) /* Setup */
     , (803878,   3, 0x20000014) /* SoundTable */
     , (803878,   6, 0x04000BEF) /* PaletteBase */
     , (803878,   7, 0x1000010B) /* ClothingBase */
     , (803878,   8, 0x06006BF4) /* Icon */
     , (803878,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803878,  50, 0x06006BF4) /* IconOverlay */
     , (803878,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803878,  5253,      2) /* Sigil of Destruction XV */;