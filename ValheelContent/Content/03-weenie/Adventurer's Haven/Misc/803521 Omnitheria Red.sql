DELETE FROM `weenie` WHERE `class_Id` = 803521;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803521, 'Omnitheria One', 38, '2024-04-18 01:22:13') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803521,   1,       2048) /* ItemType - Gem */
     , (803521,   3,          2) /* PaletteTemplate - Blue */
     , (803521,   5,         50) /* EncumbranceVal */
     , (803521,   9, 1073741824) /* ValidLocations - SigilThree */
     , (803521,  16,          1) /* ItemUseable - No */
     , (803521,  18,          1) /* UiEffects - Magical */
     , (803521,  19,     100000) /* Value */
     , (803521,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803521, 106,        999) /* ItemSpellcraft */
     , (803521, 107,      50000) /* ItemCurMana */
     , (803521, 108,      50000) /* ItemMaxMana */
     , (803521, 158,          7) /* WieldRequirements - Level */
     , (803521, 159,          1) /* WieldSkillType - Axe */
     , (803521, 160,       1500) /* WieldDifficulty */
     , (803521, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803521, 370,        250) /* GearMaxHealth */
     , (803521, 371,        250) /* GearMaxHealth */
     , (803521, 372,        250) /* GearMaxHealth */
     , (803521, 373,        250) /* GearMaxHealth */
     , (803521, 379,        250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803521,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803521,   5,  -0.001) /* ManaRate */
     , (803521,  39,     0.8) /* DefaultScale */
     , (803521, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803521,   1, 'Omnitheria Red') /* Name */
     , (803521,  16, 'This Aetheria offers class based bonuses depening on level ranges.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803521,   1, 0x02000722) /* Setup */
     , (803521,   3, 0x20000014) /* SoundTable */
     , (803521,   6, 0x04000BEF) /* PaletteBase */
     , (803521,   7, 0x1000010B) /* ClothingBase */
     , (803521,   8, 0x06006BF4) /* Icon */
     , (803521,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803521,  50, 0x06006BF4) /* IconOverlay */
     , (803521,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803521,  5238,      2) /* Sigil of Destruction XV */;