DELETE FROM `weenie` WHERE `class_Id` = 803804;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803804, 'Red Omnitheria of Defense III', 38, '2024-04-18 01:22:13') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803804,   1,       2048) /* ItemType - Gem */
     , (803804,   3,          2) /* PaletteTemplate - Blue */
     , (803804,   5,         50) /* EncumbranceVal */
     , (803804,   9, 1073741824) /* ValidLocations - SigilThree */
     , (803804,  16,          1) /* ItemUseable - No */
     , (803804,  18,          1) /* UiEffects - Magical */
     , (803804,  19,      85000) /* Value */
     , (803804,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803804, 106,        999) /* ItemSpellcraft */
     , (803804, 107,      50000) /* ItemCurMana */
     , (803804, 108,      50000) /* ItemMaxMana */
     , (803804, 158,          7) /* WieldRequirements - Level */
     , (803804, 159,          1) /* WieldSkillType - Axe */
     , (803804, 160,       6000) /* WieldDifficulty */
     , (803804, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803804, 370,        500) /* GearMaxHealth */
     , (803804, 371,        750) /* GearMaxHealth */
     , (803804, 372,        500) /* GearMaxHealth */
     , (803804, 373,        750) /* GearMaxHealth */
     , (803804, 379,        500) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803804,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803804,   5,  -0.001) /* ManaRate */
     , (803804,  39,     0.8) /* DefaultScale */
     , (803804, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803804,   1, 'Red Omnitheria of Defense III') /* Name */
     , (803804,  16, 'This Aetheria is helpful for Tank classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803804,   1, 0x02000722) /* Setup */
     , (803804,   3, 0x20000014) /* SoundTable */
     , (803804,   6, 0x04000BEF) /* PaletteBase */
     , (803804,   7, 0x1000010B) /* ClothingBase */
     , (803804,   8, 0x06006BF4) /* Icon */
     , (803804,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803804,  50, 0x06006BF4) /* IconOverlay */
     , (803804,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803804,  5253,      2) /* Sigil of Destruction XV */;