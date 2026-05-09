DELETE FROM `weenie` WHERE `class_Id` = 803916;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803916, 'Tradewind Necklace of Destruction', 1, '2024-04-22 10:07:26') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803916,   1,          8) /* ItemType - Jewelry */
     , (803916,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803916,   5,        100) /* EncumbranceVal */
     , (803916,   8,         90) /* Mass */
     , (803916,   9,      32768) /* ValidLocations - NeckWear */
     , (803916,  16,          1) /* ItemUseable - No */
     , (803916,  19,      50000) /* Value */
     , (803916,  33,          1) /* Bonded - Bonded */
     , (803916,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803916, 106,        999) /* ItemSpellcraft */
     , (803916, 107,       3000) /* ItemCurMana */
     , (803916, 108,       3000) /* ItemMaxMana */
     , (803916, 109,          0) /* ItemDifficulty */
     , (803916, 151,          2) /* HookType - Wall */
	 , (803916, 158,          7) /* WieldRequirements - Level */
     , (803916, 160,      10000) /* WieldDifficulty */
     , (803916, 169,  118162702) /* TsysMutationData */
     , (803916, 370,       1250) /* GearMaxHealth */
     , (803916, 371,       1000) /* GearMaxHealth */
     , (803916, 372,       1250) /* GearMaxHealth */
     , (803916, 373,       1000) /* GearMaxHealth */
     , (803916, 376,       1000) /* GearMaxHealth */
     , (803916, 379,       1000) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803916,  11, True ) /* IgnoreCollisions */
     , (803916,  13, True ) /* Ethereal */
     , (803916,  14, True ) /* GravityStatus */
     , (803916,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803916,   5,  -0.033) /* ManaRate */
     , (803916,  12,    0.66) /* Shade */
     , (803916,  39,     0.9) /* DefaultScale */
     , (803916, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803916,   1, 'Tradewind Necklace of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803916,   1, 0x020000F8) /* Setup */
     , (803916,   3, 0x20000014) /* SoundTable */
     , (803916,   6, 0x04000BEF) /* PaletteBase */
     , (803916,   8, 0x06005BE3) /* Icon */
     , (803916,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803916,  36, 0x0E000012) /* MutateFilter */
     , (803916,  46, 0x38000032) /* TsysMutationFilter */
     , (803916,  52,  100667892) /* IconUnderlay */
	 , (803916,  55,       4644) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803916,  4351,      2) /* Incantation of Arcane Enlightenment Self */
     , (803916,  3479,      2) /* Incantation of Item Enchantment Mastery Self */;