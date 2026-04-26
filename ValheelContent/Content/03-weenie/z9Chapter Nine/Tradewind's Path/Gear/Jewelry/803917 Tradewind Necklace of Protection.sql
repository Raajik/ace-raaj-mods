DELETE FROM `weenie` WHERE `class_Id` = 803917;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803917, 'Tradewind Necklace of Protection', 1, '2024-04-22 10:07:26') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803917,   1,          8) /* ItemType - Jewelry */
     , (803917,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803917,   5,        100) /* EncumbranceVal */
     , (803917,   8,         90) /* Mass */
     , (803917,   9,      32768) /* ValidLocations - NeckWear */
     , (803917,  16,          1) /* ItemUseable - No */
     , (803917,  19,      50000) /* Value */
     , (803917,  33,          1) /* Bonded - Bonded */
     , (803917,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803917, 106,        999) /* ItemSpellcraft */
     , (803917, 107,       3000) /* ItemCurMana */
     , (803917, 108,       3000) /* ItemMaxMana */
     , (803917, 109,          0) /* ItemDifficulty */
     , (803917, 151,          2) /* HookType - Wall */
	 , (803917, 158,          7) /* WieldRequirements - Level */
     , (803917, 160,      10000) /* WieldDifficulty */
     , (803917, 169,  118162702) /* TsysMutationData */
     , (803917, 370,       1000) /* GearMaxHealth */
     , (803917, 371,       1250) /* GearMaxHealth */
     , (803917, 372,       1000) /* GearMaxHealth */
     , (803917, 373,       1250) /* GearMaxHealth */
     , (803917, 376,       1000) /* GearMaxHealth */
     , (803917, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803917,  11, True ) /* IgnoreCollisions */
     , (803917,  13, True ) /* Ethereal */
     , (803917,  14, True ) /* GravityStatus */
     , (803917,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803917,   5,  -0.033) /* ManaRate */
     , (803917,  12,    0.66) /* Shade */
     , (803917,  39,     0.9) /* DefaultScale */
     , (803917, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803917,   1, 'Tradewind Necklace of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803917,   1,   33554680) /* Setup */
     , (803917,   3,  536870932) /* SoundTable */
     , (803917,   6,   67111919) /* PaletteBase */
     , (803917,   8,  100686821) /* Icon */
     , (803917,  22,  872415275) /* PhysicsEffectTable */
     , (803917,  36,  234881042) /* MutateFilter */
     , (803917,  46,  939524146) /* TsysMutationFilter */
     , (803917,  52,  100667892) /* IconUnderlay */
	 , (803917,  55,       4644) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803917,  4368,      2) /* Incantation of Arcane Enlightenment Self */
     , (803917,  4354,      2) /* Incantation of Item Enchantment Mastery Self */;