DELETE FROM `weenie` WHERE `class_Id` = 803801;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803801, 'Yellow Omnitheria of Defense II', 38, '2024-04-18 01:22:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803801,   1,       2048) /* ItemType - Gem */
     , (803801,   3,          2) /* PaletteTemplate - Blue */
     , (803801,   5,         50) /* EncumbranceVal */
     , (803801,   9,  536870912) /* ValidLocations - SigilThree */
     , (803801,  16,          1) /* ItemUseable - No */
     , (803801,  18,          1) /* UiEffects - Magical */
     , (803801,  19,      65000) /* Value */
     , (803801,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803801, 106,        999) /* ItemSpellcraft */
     , (803801, 107,      50000) /* ItemCurMana */
     , (803801, 108,      50000) /* ItemMaxMana */
     , (803801, 158,          7) /* WieldRequirements - Level */
     , (803801, 159,          1) /* WieldSkillType - Axe */
     , (803801, 160,       3000) /* WieldDifficulty */
     , (803801, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803801, 370,        250) /* GearMaxHealth */
     , (803801, 371,        500) /* GearMaxHealth */
     , (803801, 372,        250) /* GearMaxHealth */
     , (803801, 373,        500) /* GearMaxHealth */
     , (803801, 379,        250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803801,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803801,   5,  -0.001) /* ManaRate */
     , (803801,  39,     0.8) /* DefaultScale */
     , (803801, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803801,   1, 'Yellow Omnitheria of Defense II') /* Name */
     , (803801,  16, 'This Aetheria is helpful for Tank classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803801,   1, 0x02000722) /* Setup */
     , (803801,   3, 0x20000014) /* SoundTable */
     , (803801,   6, 0x04000BEF) /* PaletteBase */
     , (803801,   7, 0x1000010B) /* ClothingBase */
     , (803801,   8, 0x06006BF3) /* Icon */
     , (803801,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803801,  50, 0x06006BF3) /* IconOverlay */
     , (803801,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803801,  5253,      2) /* Sigil of Destruction XV */;