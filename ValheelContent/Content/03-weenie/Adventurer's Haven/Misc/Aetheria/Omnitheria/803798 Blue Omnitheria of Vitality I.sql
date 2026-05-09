DELETE FROM `weenie` WHERE `class_Id` = 803798;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803798, 'Blue Omnitheria of Vitality I', 38, '2024-04-18 01:22:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803798,   1,       2048) /* ItemType - Gem */
     , (803798,   3,          2) /* PaletteTemplate - Blue */
     , (803798,   5,         50) /* EncumbranceVal */
     , (803798,   9,  268435456) /* ValidLocations - SigilThree */
     , (803798,  16,          1) /* ItemUseable - No */
     , (803798,  18,          1) /* UiEffects - Magical */
     , (803798,  19,      35000) /* Value */
     , (803798,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803798, 106,        999) /* ItemSpellcraft */
     , (803798, 107,      50000) /* ItemCurMana */
     , (803798, 108,      50000) /* ItemMaxMana */
     , (803798, 158,          7) /* WieldRequirements - Level */
     , (803798, 159,          1) /* WieldSkillType - Axe */
     , (803798, 160,       1500) /* WieldDifficulty */
     , (803798, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803798, 370,        100) /* GearMaxHealth */
     , (803798, 371,        100) /* GearMaxHealth */
     , (803798, 372,        100) /* GearMaxHealth */
     , (803798, 373,        100) /* GearMaxHealth */
     , (803798, 376,        250) /* GearMaxHealth */
     , (803798, 379,        250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803798,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803798,   5,  -0.001) /* ManaRate */
     , (803798,  39,     0.8) /* DefaultScale */
     , (803798, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803798,   1, 'Blue Omnitheria of Vitality I') /* Name */
     , (803798,  16, 'This Aetheria is helpful for Healing classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803798,   1, 0x02000722) /* Setup */
     , (803798,   3, 0x20000014) /* SoundTable */
     , (803798,   6, 0x04000BEF) /* PaletteBase */
     , (803798,   7, 0x1000010B) /* ClothingBase */
     , (803798,   8, 0x06006BF2) /* Icon */
     , (803798,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803798,  50, 0x06006BF2) /* IconOverlay */
     , (803798,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803798,  5268,      2) /* Sigil of Fury XV */;