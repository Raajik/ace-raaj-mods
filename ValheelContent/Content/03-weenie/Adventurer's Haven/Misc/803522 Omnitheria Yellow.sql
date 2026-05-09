DELETE FROM `weenie` WHERE `class_Id` = 803522;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803522, 'Yellow Omnitheria of Fury II', 38, '2024-04-18 01:22:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803522,   1,       2048) /* ItemType - Gem */
     , (803522,   3,          2) /* PaletteTemplate - Blue */
     , (803522,   5,         50) /* EncumbranceVal */
     , (803522,   9,  536870912) /* ValidLocations - SigilThree */
     , (803522,  16,          1) /* ItemUseable - No */
     , (803522,  18,          1) /* UiEffects - Magical */
     , (803522,  19,     100000) /* Value */
     , (803522,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803522, 106,        999) /* ItemSpellcraft */
     , (803522, 107,      50000) /* ItemCurMana */
     , (803522, 108,      50000) /* ItemMaxMana */
     , (803522, 158,          7) /* WieldRequirements - Level */
     , (803522, 159,          1) /* WieldSkillType - Axe */
     , (803522, 160,       1500) /* WieldDifficulty */
     , (803522, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803522, 370,        250) /* GearMaxHealth */
     , (803522, 371,        250) /* GearMaxHealth */
     , (803522, 372,        250) /* GearMaxHealth */
     , (803522, 373,        250) /* GearMaxHealth */
     , (803522, 379,        250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803522,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803522,   5,  -0.001) /* ManaRate */
     , (803522,  39,     0.8) /* DefaultScale */
     , (803522, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803522,   1, 'Yellow Omnitheria of Fury II') /* Name */
     , (803522,  16, 'This Aetheria offers class based bonuses depening on level ranges.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803522,   1, 0x02000722) /* Setup */
     , (803522,   3, 0x20000014) /* SoundTable */
     , (803522,   6, 0x04000BEF) /* PaletteBase */
     , (803522,   7, 0x1000010B) /* ClothingBase */
     , (803522,   8, 0x06006BF3) /* Icon */
     , (803522,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803522,  50, 0x06006BF3) /* IconOverlay */
     , (803522,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803522,  5253,      2) /* Sigil of Destruction XV */;