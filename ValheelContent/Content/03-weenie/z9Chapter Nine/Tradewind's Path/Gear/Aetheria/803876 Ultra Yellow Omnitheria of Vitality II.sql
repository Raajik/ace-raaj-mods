DELETE FROM `weenie` WHERE `class_Id` = 803876;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803876, 'Ultra Yellow Omnitheria of Vitality II', 38, '2024-04-18 01:22:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803876,   1,       2048) /* ItemType - Gem */
     , (803876,   3,          2) /* PaletteTemplate - Blue */
     , (803876,   5,         50) /* EncumbranceVal */
     , (803876,   9,  536870912) /* ValidLocations - SigilThree */
     , (803876,  16,          1) /* ItemUseable - No */
     , (803876,  18,          1) /* UiEffects - Magical */
     , (803876,  19,      65000) /* Value */
     , (803876,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803876, 106,        999) /* ItemSpellcraft */
     , (803876, 107,      50000) /* ItemCurMana */
     , (803876, 108,      50000) /* ItemMaxMana */
     , (803876, 158,          7) /* WieldRequirements - Level */
     , (803876, 159,          1) /* WieldSkillType - Axe */
     , (803876, 160,      10000) /* WieldDifficulty */
     , (803876, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803876, 370,       1000) /* GearMaxHealth */
     , (803876, 371,       1000) /* GearMaxHealth */
     , (803876, 372,       1000) /* GearMaxHealth */
     , (803876, 373,       1000) /* GearMaxHealth */
     , (803876, 376,       1250) /* GearMaxHealth */
     , (803876, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803876,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803876,   5,  -0.001) /* ManaRate */
     , (803876,  39,     0.8) /* DefaultScale */
     , (803876, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803876,   1, 'Tradewind Aetheria of Vitality II') /* Name */
     , (803876,  16, 'This Aetheria is helpful for Healing classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803876,   1, 0x02000722) /* Setup */
     , (803876,   3, 0x20000014) /* SoundTable */
     , (803876,   6, 0x04000BEF) /* PaletteBase */
     , (803876,   7, 0x1000010B) /* ClothingBase */
     , (803876,   8, 0x06006BF3) /* Icon */
     , (803876,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803876,  50, 0x06006BF3) /* IconOverlay */
     , (803876,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803876,  5268,      2) /* Sigil of Destruction XV */;