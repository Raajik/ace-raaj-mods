DELETE FROM `weenie` WHERE `class_Id` = 803799;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803799, 'Blue Omnitheria of Defense I', 38, '2024-04-18 01:22:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803799,   1,       2048) /* ItemType - Gem */
     , (803799,   3,          2) /* PaletteTemplate - Blue */
     , (803799,   5,         50) /* EncumbranceVal */
     , (803799,   9,  268435456) /* ValidLocations - SigilThree */
     , (803799,  16,          1) /* ItemUseable - No */
     , (803799,  18,          1) /* UiEffects - Magical */
     , (803799,  19,      35000) /* Value */
     , (803799,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803799, 106,        999) /* ItemSpellcraft */
     , (803799, 107,      50000) /* ItemCurMana */
     , (803799, 108,      50000) /* ItemMaxMana */
     , (803799, 158,          7) /* WieldRequirements - Level */
     , (803799, 159,          1) /* WieldSkillType - Axe */
     , (803799, 160,       1500) /* WieldDifficulty */
     , (803799, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803799, 370,        100) /* GearMaxHealth */
     , (803799, 371,        250) /* GearMaxHealth */
     , (803799, 372,        100) /* GearMaxHealth */
     , (803799, 373,        250) /* GearMaxHealth */
     , (803799, 379,        100) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803799,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803799,   5,  -0.001) /* ManaRate */
     , (803799,  39,     0.8) /* DefaultScale */
     , (803799, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803799,   1, 'Blue Omnitheria of Defense I') /* Name */
     , (803799,  16, 'This Aetheria is helpful for Tank classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803799,   1, 0x02000722) /* Setup */
     , (803799,   3, 0x20000014) /* SoundTable */
     , (803799,   6, 0x04000BEF) /* PaletteBase */
     , (803799,   7, 0x1000010B) /* ClothingBase */
     , (803799,   8, 0x06006BF2) /* Icon */
     , (803799,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803799,  50, 0x06006BF2) /* IconOverlay */
     , (803799,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803799,  5253,      2) /* Sigil of Destruction XV */;