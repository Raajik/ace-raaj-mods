DELETE FROM `weenie` WHERE `class_Id` = 803800;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803800, 'Yellow Omnitheria of Fury II', 38, '2024-04-18 01:22:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803800,   1,       2048) /* ItemType - Gem */
     , (803800,   3,          2) /* PaletteTemplate - Blue */
     , (803800,   5,         50) /* EncumbranceVal */
     , (803800,   9,  536870912) /* ValidLocations - SigilThree */
     , (803800,  16,          1) /* ItemUseable - No */
     , (803800,  18,          1) /* UiEffects - Magical */
     , (803800,  19,      65000) /* Value */
     , (803800,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803800, 106,        999) /* ItemSpellcraft */
     , (803800, 107,      50000) /* ItemCurMana */
     , (803800, 108,      50000) /* ItemMaxMana */
     , (803800, 158,          7) /* WieldRequirements - Level */
     , (803800, 159,          1) /* WieldSkillType - Axe */
     , (803800, 160,       3000) /* WieldDifficulty */
     , (803800, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803800, 370,        500) /* GearMaxHealth */
     , (803800, 371,        250) /* GearMaxHealth */
     , (803800, 372,        500) /* GearMaxHealth */
     , (803800, 373,        250) /* GearMaxHealth */
     , (803800, 379,        250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803800,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803800,   5,  -0.001) /* ManaRate */
     , (803800,  39,     0.8) /* DefaultScale */
     , (803800, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803800,   1, 'Yellow Omnitheria of Fury II') /* Name */
     , (803800,  16, 'This Aetheria is helpful for DPS classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803800,   1, 0x02000722) /* Setup */
     , (803800,   3, 0x20000014) /* SoundTable */
     , (803800,   6, 0x04000BEF) /* PaletteBase */
     , (803800,   7, 0x1000010B) /* ClothingBase */
     , (803800,   8, 0x06006BF3) /* Icon */
     , (803800,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803800,  50, 0x06006BF3) /* IconOverlay */
     , (803800,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803800,  5223,      2) /* Sigil of Destruction XV */;