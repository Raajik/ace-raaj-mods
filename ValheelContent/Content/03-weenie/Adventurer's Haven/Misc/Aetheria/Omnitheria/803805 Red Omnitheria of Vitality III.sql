DELETE FROM `weenie` WHERE `class_Id` = 803805;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803805, 'Red Omnitheria of Vitality III', 38, '2024-04-18 01:22:13') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803805,   1,       2048) /* ItemType - Gem */
     , (803805,   3,          2) /* PaletteTemplate - Blue */
     , (803805,   5,         50) /* EncumbranceVal */
     , (803805,   9, 1073741824) /* ValidLocations - SigilThree */
     , (803805,  16,          1) /* ItemUseable - No */
     , (803805,  18,          1) /* UiEffects - Magical */
     , (803805,  19,      85000) /* Value */
     , (803805,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803805, 106,        999) /* ItemSpellcraft */
     , (803805, 107,      50000) /* ItemCurMana */
     , (803805, 108,      50000) /* ItemMaxMana */
     , (803805, 158,          7) /* WieldRequirements - Level */
     , (803805, 159,          1) /* WieldSkillType - Axe */
     , (803805, 160,       6000) /* WieldDifficulty */
     , (803805, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803805, 370,        500) /* GearMaxHealth */
     , (803805, 371,        500) /* GearMaxHealth */
     , (803805, 372,        500) /* GearMaxHealth */
     , (803805, 373,        500) /* GearMaxHealth */
     , (803805, 376,        750) /* GearMaxHealth */
     , (803805, 379,        750) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803805,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803805,   5,  -0.001) /* ManaRate */
     , (803805,  39,     0.8) /* DefaultScale */
     , (803805, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803805,   1, 'Red Omnitheria of Vitality III') /* Name */
     , (803805,  16, 'This Aetheria is helpful for Healing classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803805,   1, 0x02000722) /* Setup */
     , (803805,   3, 0x20000014) /* SoundTable */
     , (803805,   6, 0x04000BEF) /* PaletteBase */
     , (803805,   7, 0x1000010B) /* ClothingBase */
     , (803805,   8, 0x06006BF4) /* Icon */
     , (803805,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803805,  50, 0x06006BF4) /* IconOverlay */
     , (803805,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803805,  5268,      2) /* Sigil of Destruction XV */;