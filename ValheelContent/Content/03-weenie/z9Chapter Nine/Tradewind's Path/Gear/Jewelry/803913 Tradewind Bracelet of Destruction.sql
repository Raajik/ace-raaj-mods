DELETE FROM `weenie` WHERE `class_Id` = 803913;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803913, 'Tradewind Bracelet of Destruction', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803913,   1,          8) /* ItemType - Jewelry */
     , (803913,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803913,   5,         60) /* EncumbranceVal */
     , (803913,   8,         90) /* Mass */
     , (803913,   9,     196608) /* ValidLocations - WristWear */
     , (803913,  16,          1) /* ItemUseable - No */
     , (803913,  19,      50000) /* Value */
     , (803913,  33,          1) /* Bonded - Bonded */
     , (803913,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803913, 106,        999) /* ItemSpellcraft */
     , (803913, 107,       3000) /* ItemCurMana */
     , (803913, 108,       3000) /* ItemMaxMana */
     , (803913, 109,          0) /* ItemDifficulty */
     , (803913, 151,          2) /* HookType - Wall */
	 , (803913, 158,          7) /* WieldRequirements - Level */
     , (803913, 160,      10000) /* WieldDifficulty */
     , (803913, 169,  118162702) /* TsysMutationData */
     , (803913, 370,       1250) /* GearMaxHealth */
     , (803913, 371,       1000) /* GearMaxHealth */
     , (803913, 372,       1250) /* GearMaxHealth */
     , (803913, 373,       1000) /* GearMaxHealth */
     , (803913, 376,       1000) /* GearMaxHealth */
     , (803913, 379,       1000) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803913,  11, True ) /* IgnoreCollisions */
     , (803913,  13, True ) /* Ethereal */
     , (803913,  14, True ) /* GravityStatus */
     , (803913,  19, True ) /* Attackable */
     , (803913,  22, True ) /* Inscribable */
     , (803913, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803913,   5,  -0.033) /* ManaRate */
     , (803913,  12,    0.66) /* Shade */
     , (803913,  39,     0.5) /* DefaultScale */
     , (803913, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803913,   1, 'Tradewind Bracelet of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803913,   1,   33554683) /* Setup */
     , (803913,   3,  536870932) /* SoundTable */
     , (803913,   6,   67111919) /* PaletteBase */
     , (803913,   8,  100686828) /* Icon */
     , (803913,  22,  872415275) /* PhysicsEffectTable */
     , (803913,  36,  234881042) /* MutateFilter */
     , (803913,  46,  939524146) /* TsysMutationFilter */
     , (803913,  52,  100667892) /* IconUnderlay */
	 , (803913,  55,       4645) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803913,  4356,      2)  /* Epic Focus */
     , (803913,  3475,      2)  /* Incantation of Armor Tinkering Expertise Self */;