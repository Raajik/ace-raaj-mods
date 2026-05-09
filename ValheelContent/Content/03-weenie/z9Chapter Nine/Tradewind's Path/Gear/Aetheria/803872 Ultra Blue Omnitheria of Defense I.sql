DELETE FROM `weenie` WHERE `class_Id` = 803872;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803872, 'Ultra Blue Omnitheria of Defense I', 38, '2024-04-18 01:22:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803872,   1,       2048) /* ItemType - Gem */
     , (803872,   3,          2) /* PaletteTemplate - Blue */
     , (803872,   5,         50) /* EncumbranceVal */
     , (803872,   9,  268435456) /* ValidLocations - SigilThree */
     , (803872,  16,          1) /* ItemUseable - No */
     , (803872,  18,          1) /* UiEffects - Magical */
     , (803872,  19,      35000) /* Value */
     , (803872,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803872, 106,        999) /* ItemSpellcraft */
     , (803872, 107,      50000) /* ItemCurMana */
     , (803872, 108,      50000) /* ItemMaxMana */
     , (803872, 158,          7) /* WieldRequirements - Level */
     , (803872, 159,          1) /* WieldSkillType - Axe */
     , (803872, 160,      10000) /* WieldDifficulty */
     , (803872, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (803872, 370,        750) /* GearMaxHealth */
     , (803872, 371,       1000) /* GearMaxHealth */
     , (803872, 372,        750) /* GearMaxHealth */
     , (803872, 373,       1000) /* GearMaxHealth */
     , (803872, 376,        750) /* GearMaxHealth */
     , (803872, 379,       1000) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803872,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803872,   5,  -0.001) /* ManaRate */
     , (803872,  39,     0.8) /* DefaultScale */
     , (803872, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803872,   1, 'Tradewind Aetheria of Defense I') /* Name */
     , (803872,  16, 'This Aetheria is helpful for Tank classes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803872,   1, 0x02000722) /* Setup */
     , (803872,   3, 0x20000014) /* SoundTable */
     , (803872,   6, 0x04000BEF) /* PaletteBase */
     , (803872,   7, 0x1000010B) /* ClothingBase */
     , (803872,   8, 0x06006BF2) /* Icon */
     , (803872,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803872,  50, 0x06006BF2) /* IconOverlay */
     , (803872,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803872,  5253,      2) /* Sigil of Destruction XV */;