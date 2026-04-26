DELETE FROM `weenie` WHERE `class_Id` = 803915;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803915, 'Tradewind Bracelet of Vitality', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803915,   1,          8) /* ItemType - Jewelry */
     , (803915,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803915,   5,         60) /* EncumbranceVal */
     , (803915,   8,         90) /* Mass */
     , (803915,   9,     196608) /* ValidLocations - WristWear */
     , (803915,  16,          1) /* ItemUseable - No */
     , (803915,  19,      50000) /* Value */
     , (803915,  33,          1) /* Bonded - Bonded */
     , (803915,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803915, 106,        999) /* ItemSpellcraft */
     , (803915, 107,       3000) /* ItemCurMana */
     , (803915, 108,       3000) /* ItemMaxMana */
     , (803915, 109,          0) /* ItemDifficulty */
     , (803915, 151,          2) /* HookType - Wall */
	 , (803915, 158,          7) /* WieldRequirements - Level */
     , (803915, 160,      10000) /* WieldDifficulty */
     , (803915, 169,  118162702) /* TsysMutationData */
     , (803915, 370,       1000) /* GearMaxHealth */
     , (803915, 371,       1000) /* GearMaxHealth */
     , (803915, 372,       1000) /* GearMaxHealth */
     , (803915, 373,       1000) /* GearMaxHealth */
     , (803915, 376,       1250) /* GearMaxHealth */
     , (803915, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803915,  11, True ) /* IgnoreCollisions */
     , (803915,  13, True ) /* Ethereal */
     , (803915,  14, True ) /* GravityStatus */
     , (803915,  19, True ) /* Attackable */
     , (803915,  22, True ) /* Inscribable */
     , (803915, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803915,   5,  -0.033) /* ManaRate */
     , (803915,  12,    0.66) /* Shade */
     , (803915,  39,     0.5) /* DefaultScale */
     , (803915, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803915,   1, 'Tradewind Bracelet of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803915,   1,   33554683) /* Setup */
     , (803915,   3,  536870932) /* SoundTable */
     , (803915,   6,   67111919) /* PaletteBase */
     , (803915,   8,  100686818) /* Icon */
     , (803915,  22,  872415275) /* PhysicsEffectTable */
     , (803915,  36,  234881042) /* MutateFilter */
     , (803915,  46,  939524146) /* TsysMutationFilter */
     , (803915,  52,  100667892) /* IconUnderlay */
	 , (803915,  55,       4645) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803915,  4371,      2)  /* Epic Focus */
     , (803915,  3471,      2)  /* Incantation of Armor Tinkering Expertise Self */;