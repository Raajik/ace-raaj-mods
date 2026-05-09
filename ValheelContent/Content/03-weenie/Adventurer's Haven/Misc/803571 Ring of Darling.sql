DELETE FROM `weenie` WHERE `class_Id` = 803571;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803571, 'RingofDarling', 1, '2024-04-22 10:03:02') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803571,   1,          8) /* ItemType - Jewelry */
     , (803571,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803571,   5,         15) /* EncumbranceVal */
     , (803571,   8,         90) /* Mass */
     , (803571,   9,     786432) /* ValidLocations - FingerWear */
     , (803571,  16,          1) /* ItemUseable - No */
     , (803571,  19,      50000) /* Value */
     , (803571,  33,          1) /* Bonded - Bonded */
     , (803571,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803571, 106,        999) /* ItemSpellcraft */
     , (803571, 107,       3000) /* ItemCurMana */
     , (803571, 108,       3000) /* ItemMaxMana */
     , (803571, 109,          0) /* ItemDifficulty */
     , (803571, 151,          2) /* HookType - Wall */
	, (803571, 158,          7) /* WieldRequirements - Level */
     , (803571, 159,          1) /* WieldSkillType */
     , (803571, 160,       3000) /* WieldDifficulty */
     , (803571, 169,  118162702) /* TsysMutationData */
     , (803571, 370,        750) /* GearMaxHealth */
     , (803571, 371,        750) /* GearMaxHealth */
     , (803571, 372,        750) /* GearMaxHealth */
     , (803571, 373,        750) /* GearMaxHealth */
     , (803571, 379,        750) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803571,  11, True ) /* IgnoreCollisions */
     , (803571,  13, True ) /* Ethereal */
     , (803571,  14, True ) /* GravityStatus */
     , (803571,  19, True ) /* Attackable */
     , (803571,  22, True ) /* Inscribable */
     , (803571, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803571,   5,  -0.033) /* ManaRate */
     , (803571,  12,    0.66) /* Shade */
     , (803571,  39,     0.5) /* DefaultScale */
     , (803571, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803571,   1, 'Ring of Darling') /* Name */
     , (803571,  16, 'Those who have power are always seeking to gain more at any cost. The power of this ring is to channel physical traits into magical traits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803571,   1, 0x02000103) /* Setup */
     , (803571,   3, 0x20000014) /* SoundTable */
     , (803571,   6, 0x04000BEF) /* PaletteBase */
     , (803571,   8, 0x06005BE6) /* Icon */
     , (803571,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803571,  36, 0x0E000012) /* MutateFilter */
     , (803571,  46, 0x38000032) /* TsysMutationFilter */
     , (803571,  52, 0x0600335A) /* IconUnderlay */
	 , (803571,  55,       4645) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803571,  3720,      2) /* Epic Willpower */
     , (803571,  3731,      2) /* Incantation of Willpower Self */;