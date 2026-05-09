DELETE FROM `weenie` WHERE `class_Id` = 803875;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803875, 'Ultra Yellow Omnitheria of Defense II', 38, '2024-04-18 01:22:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803875,   1,       2048) /* ItemType - Gem */
     , (803875,   3,          2) /* PaletteTemplate - Blue */
     , (803875,   5,         50) /* EncumbranceVal */
     , (803875,   9,  536870912) /* ValidLocations - SigilThree */
     , (803875,  16,          1) /* ItemUseable - No */
     , (803875,  18,          1) /* UiEffects - Magical */
     , (803875,  19,      65000) /* Value */
     , (803875,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803875, 106,        999) /* ItemSpellcraft */
     , (803875, 107,      50000) /* ItemCurMana */
     , (803875, 108,      50000) /* ItemMaxMana */
     , (803875, 158,          7) /* WieldRequirements - Level */
     , (803875, 159,          1) /* WieldSkillType - Axe */
     , (803875, 160,      10000) /* WieldDifficulty */
     , (803875, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803875, 370,       1000) /* GearMaxHealth */
     , (803875, 371,       1250) /* GearMaxHealth */
     , (803875, 372,       1000) /* GearMaxHealth */
     , (803875, 373,       1250) /* GearMaxHealth */
     , (803875, 376,       1000) /* GearMaxHealth */
     , (803875, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803875,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803875,   5,  -0.001) /* ManaRate */
     , (803875,  39,     0.8) /* DefaultScale */
     , (803875, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803875,   1, 'Tradewind Aetheria of Defense II') /* Name */
     , (803875,  16, 'This Aetheria is helpful for Tank classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803875,   1, 0x02000722) /* Setup */
     , (803875,   3, 0x20000014) /* SoundTable */
     , (803875,   6, 0x04000BEF) /* PaletteBase */
     , (803875,   7, 0x1000010B) /* ClothingBase */
     , (803875,   8, 0x06006BF3) /* Icon */
     , (803875,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803875,  50, 0x06006BF3) /* IconOverlay */
     , (803875,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803875,  5253,      2) /* Sigil of Destruction XV */;