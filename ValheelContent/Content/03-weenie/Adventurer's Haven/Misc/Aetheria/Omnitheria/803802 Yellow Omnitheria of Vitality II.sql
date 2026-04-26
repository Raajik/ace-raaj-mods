DELETE FROM `weenie` WHERE `class_Id` = 803802;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803802, 'Yellow Omnitheria of Vitality II', 38, '2024-04-18 01:22:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803802,   1,       2048) /* ItemType - Gem */
     , (803802,   3,          2) /* PaletteTemplate - Blue */
     , (803802,   5,         50) /* EncumbranceVal */
     , (803802,   9,  536870912) /* ValidLocations - SigilThree */
     , (803802,  16,          1) /* ItemUseable - No */
     , (803802,  18,          1) /* UiEffects - Magical */
     , (803802,  19,      65000) /* Value */
     , (803802,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803802, 106,        999) /* ItemSpellcraft */
     , (803802, 107,      50000) /* ItemCurMana */
     , (803802, 108,      50000) /* ItemMaxMana */
     , (803802, 158,          7) /* WieldRequirements - Level */
     , (803802, 159,          1) /* WieldSkillType - Axe */
     , (803802, 160,       3000) /* WieldDifficulty */
     , (803802, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803802, 370,        250) /* GearMaxHealth */
     , (803802, 371,        250) /* GearMaxHealth */
     , (803802, 372,        250) /* GearMaxHealth */
     , (803802, 373,        250) /* GearMaxHealth */
     , (803802, 376,        500) /* GearMaxHealth */
     , (803802, 379,        500) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803802,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803802,   5,  -0.001) /* ManaRate */
     , (803802,  39,     0.8) /* DefaultScale */
     , (803802, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803802,   1, 'Yellow Omnitheria of Vitality II') /* Name */
     , (803802,  16, 'This Aetheria is helpful for Healing classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803802,   1, 0x02000722) /* Setup */
     , (803802,   3, 0x20000014) /* SoundTable */
     , (803802,   6, 0x04000BEF) /* PaletteBase */
     , (803802,   7, 0x1000010B) /* ClothingBase */
     , (803802,   8, 0x06006BF3) /* Icon */
     , (803802,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803802,  50, 0x06006BF3) /* IconOverlay */
     , (803802,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803802,  5268,      2) /* Sigil of Destruction XV */;