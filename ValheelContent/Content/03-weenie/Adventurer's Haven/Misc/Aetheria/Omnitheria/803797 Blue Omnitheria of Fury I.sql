DELETE FROM `weenie` WHERE `class_Id` = 803797;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803797, 'Blue Omnitheria of Fury I', 38, '2024-04-18 01:22:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803797,   1,       2048) /* ItemType - Gem */
     , (803797,   3,          2) /* PaletteTemplate - Blue */
     , (803797,   5,         50) /* EncumbranceVal */
     , (803797,   9,  268435456) /* ValidLocations - SigilThree */
     , (803797,  16,          1) /* ItemUseable - No */
     , (803797,  18,          1) /* UiEffects - Magical */
     , (803797,  19,      35000) /* Value */
     , (803797,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803797, 106,        999) /* ItemSpellcraft */
     , (803797, 107,      50000) /* ItemCurMana */
     , (803797, 108,      50000) /* ItemMaxMana */
     , (803797, 158,          7) /* WieldRequirements - Level */
     , (803797, 159,          1) /* WieldSkillType - Axe */
     , (803797, 160,       1500) /* WieldDifficulty */
     , (803797, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803797, 370,        250) /* GearMaxHealth */
     , (803797, 371,        100) /* GearMaxHealth */
     , (803797, 372,        250) /* GearMaxHealth */
     , (803797, 373,        100) /* GearMaxHealth */
     , (803797, 379,        100) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803797,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803797,   5,  -0.001) /* ManaRate */
     , (803797,  39,     0.8) /* DefaultScale */
     , (803797, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803797,   1, 'Blue Omnitheria of Fury I') /* Name */
     , (803797,  16, 'This Aetheria is helpful for DPS classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803797,   1, 0x02000722) /* Setup */
     , (803797,   3, 0x20000014) /* SoundTable */
     , (803797,   6, 0x04000BEF) /* PaletteBase */
     , (803797,   7, 0x1000010B) /* ClothingBase */
     , (803797,   8, 0x06006BF2) /* Icon */
     , (803797,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803797,  50, 0x06006BF2) /* IconOverlay */
     , (803797,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803797,  5223,      2) /* Sigil of Destruction XV */;