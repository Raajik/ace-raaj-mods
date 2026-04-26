DELETE FROM `weenie` WHERE `class_Id` = 803572;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803572, 'Hargo Choker', 1, '2024-04-22 10:07:26') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803572,   1,          8) /* ItemType - Jewelry */
     , (803572,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803572,   5,        100) /* EncumbranceVal */
     , (803572,   8,         90) /* Mass */
     , (803572,   9,      32768) /* ValidLocations - NeckWear */
     , (803572,  16,          1) /* ItemUseable - No */
     , (803572,  19,      50000) /* Value */
     , (803572,  33,          1) /* Bonded - Bonded */
     , (803572,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803572, 106,        999) /* ItemSpellcraft */
     , (803572, 107,       3000) /* ItemCurMana */
     , (803572, 108,       3000) /* ItemMaxMana */
     , (803572, 109,          0) /* ItemDifficulty */
     , (803572, 151,          2) /* HookType - Wall */
	, (803572, 158,          7) /* WieldRequirements - Level */
     , (803572, 159,          1) /* WieldSkillType */
     , (803572, 160,       3000) /* WieldDifficulty */
     , (803572, 169,  118162702) /* TsysMutationData */
     , (803572, 370,        750) /* GearMaxHealth */
     , (803572, 371,        750) /* GearMaxHealth */
     , (803572, 372,        750) /* GearMaxHealth */
     , (803572, 373,        750) /* GearMaxHealth */
     , (803572, 379,        750) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803572,  11, True ) /* IgnoreCollisions */
     , (803572,  13, True ) /* Ethereal */
     , (803572,  14, True ) /* GravityStatus */
     , (803572,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803572,   5,  -0.033) /* ManaRate */
     , (803572,  12,    0.66) /* Shade */
     , (803572,  39,     0.9) /* DefaultScale */
     , (803572, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803572,   1, 'Hargo Choker') /* Name */
     , (803572,  16, 'This necklace has been cleverly fashioned to resemble a snake. Its eyes are made of gems, which seem to glow with wisdom rather than malevolence.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803572,   1, 0x020000F8) /* Setup */
     , (803572,   3, 0x20000014) /* SoundTable */
     , (803572,   6, 0x04000BEF) /* PaletteBase */
     , (803572,   8, 0x06005BE3) /* Icon */
     , (803572,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803572,  36, 0x0E000012) /* MutateFilter */
     , (803572,  46, 0x38000032) /* TsysMutationFilter */
     , (803572,  52, 0x0600335A) /* IconUnderlay */
	 , (803572,  55,       4644) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803572,  3732,      2) /* Incantation of Arcane Enlightenment Self */
     , (803572,  3736,      2) /* Incantation of Item Enchantment Mastery Self */;