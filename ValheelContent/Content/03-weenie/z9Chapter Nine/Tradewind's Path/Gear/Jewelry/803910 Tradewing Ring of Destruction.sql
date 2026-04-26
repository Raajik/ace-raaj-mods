DELETE FROM `weenie` WHERE `class_Id` = 803910;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803910, 'Tradewind Ring of Destruction', 1, '2024-04-22 10:03:02') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803910,   1,          8) /* ItemType - Jewelry */
     , (803910,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803910,   5,         15) /* EncumbranceVal */
     , (803910,   8,         90) /* Mass */
     , (803910,   9,     786432) /* ValidLocations - FingerWear */
     , (803910,  16,          1) /* ItemUseable - No */
     , (803910,  19,      50000) /* Value */
     , (803910,  33,          1) /* Bonded - Bonded */
     , (803910,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803910, 106,        999) /* ItemSpellcraft */
     , (803910, 107,       3000) /* ItemCurMana */
     , (803910, 108,       3000) /* ItemMaxMana */
     , (803910, 109,          0) /* ItemDifficulty */
     , (803910, 151,          2) /* HookType - Wall */
	 , (803910, 158,          7) /* WieldRequirements - Level */
     , (803910, 160,      10000) /* WieldDifficulty */
     , (803910, 169,  118162702) /* TsysMutationData */
     , (803910, 370,       1250) /* GearMaxHealth */
     , (803910, 371,       1000) /* GearMaxHealth */
     , (803910, 372,       1250) /* GearMaxHealth */
     , (803910, 373,       1000) /* GearMaxHealth */
     , (803910, 376,       1000) /* GearMaxHealth */
     , (803910, 379,       1000) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803910,  11, True ) /* IgnoreCollisions */
     , (803910,  13, True ) /* Ethereal */
     , (803910,  14, True ) /* GravityStatus */
     , (803910,  19, True ) /* Attackable */
     , (803910,  22, True ) /* Inscribable */
     , (803910, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803910,   5,  -0.033) /* ManaRate */
     , (803910,  12,    0.66) /* Shade */
     , (803910,  39,     0.5) /* DefaultScale */
     , (803910, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803910,   1, 'Tradewind Ring of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803910,   1,   33554691) /* Setup */
     , (803910,   3,  536870932) /* SoundTable */
     , (803910,   6,   67111919) /* PaletteBase */
     , (803910,   8,  100686826) /* Icon */
     , (803910,  22,  872415275) /* PhysicsEffectTable */
     , (803910,  36,  234881042) /* MutateFilter */
     , (803910,  46,  939524146) /* TsysMutationFilter */
     , (803910,  52,  100667892) /* IconUnderlay */
	 , (803910,  55,       4643) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803910,  2929,      2) /* Tusker Might */
     , (803910,  3531,      2) /* Bobos Quickening */;