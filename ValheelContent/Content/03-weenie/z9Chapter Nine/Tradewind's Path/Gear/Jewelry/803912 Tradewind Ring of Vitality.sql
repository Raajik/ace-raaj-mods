DELETE FROM `weenie` WHERE `class_Id` = 803912;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803912, 'Tradewind Ring of Vitality', 1, '2024-04-22 10:03:02') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803912,   1,          8) /* ItemType - Jewelry */
     , (803912,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803912,   5,         15) /* EncumbranceVal */
     , (803912,   8,         90) /* Mass */
     , (803912,   9,     786432) /* ValidLocations - FingerWear */
     , (803912,  16,          1) /* ItemUseable - No */
     , (803912,  19,      50000) /* Value */
     , (803912,  33,          1) /* Bonded - Bonded */
     , (803912,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803912, 106,        999) /* ItemSpellcraft */
     , (803912, 107,       3000) /* ItemCurMana */
     , (803912, 108,       3000) /* ItemMaxMana */
     , (803912, 109,          0) /* ItemDifficulty */
     , (803912, 151,          2) /* HookType - Wall */
	 , (803912, 158,          7) /* WieldRequirements - Level */
     , (803912, 160,      10000) /* WieldDifficulty */
     , (803912, 169,  118162702) /* TsysMutationData */
     , (803912, 370,       1000) /* GearMaxHealth */
     , (803912, 371,       1000) /* GearMaxHealth */
     , (803912, 372,       1000) /* GearMaxHealth */
     , (803912, 373,       1000) /* GearMaxHealth */
     , (803912, 376,       1250) /* GearMaxHealth */
     , (803912, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803912,  11, True ) /* IgnoreCollisions */
     , (803912,  13, True ) /* Ethereal */
     , (803912,  14, True ) /* GravityStatus */
     , (803912,  19, True ) /* Attackable */
     , (803912,  22, True ) /* Inscribable */
     , (803912, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803912,   5,  -0.033) /* ManaRate */
     , (803912,  12,    0.66) /* Shade */
     , (803912,  39,     0.5) /* DefaultScale */
     , (803912, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803912,   1, 'Tradewind Ring of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803912,   1,   33554691) /* Setup */
     , (803912,   3,  536870932) /* SoundTable */
     , (803912,   6,   67111919) /* PaletteBase */
     , (803912,   8,  100686825) /* Icon */
     , (803912,  22,  872415275) /* PhysicsEffectTable */
     , (803912,  36,  234881042) /* MutateFilter */
     , (803912,  46,  939524146) /* TsysMutationFilter */
     , (803912,  52,  100667892) /* IconUnderlay */
	 , (803912,  55,       4643) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803912,  2384,      2) /* Arcane Restoration */
     , (803912,  4353,      2) /* Acumen of the Conclave */;