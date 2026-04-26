DELETE FROM `weenie` WHERE `class_Id` = 803914;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803914, 'Tradewind Bracelet of Protection', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803914,   1,          8) /* ItemType - Jewelry */
     , (803914,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803914,   5,         60) /* EncumbranceVal */
     , (803914,   8,         90) /* Mass */
     , (803914,   9,     196608) /* ValidLocations - WristWear */
     , (803914,  16,          1) /* ItemUseable - No */
     , (803914,  19,      50000) /* Value */
     , (803914,  33,          1) /* Bonded - Bonded */
     , (803914,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803914, 106,        999) /* ItemSpellcraft */
     , (803914, 107,       3000) /* ItemCurMana */
     , (803914, 108,       3000) /* ItemMaxMana */
     , (803914, 109,          0) /* ItemDifficulty */
     , (803914, 151,          2) /* HookType - Wall */
	 , (803914, 158,          7) /* WieldRequirements - Level */
     , (803914, 160,      10000) /* WieldDifficulty */
     , (803914, 169,  118162702) /* TsysMutationData */
     , (803914, 370,       1000) /* GearMaxHealth */
     , (803914, 371,       1250) /* GearMaxHealth */
     , (803914, 372,       1000) /* GearMaxHealth */
     , (803914, 373,       1250) /* GearMaxHealth */
     , (803914, 376,       1000) /* GearMaxHealth */
     , (803914, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803914,  11, True ) /* IgnoreCollisions */
     , (803914,  13, True ) /* Ethereal */
     , (803914,  14, True ) /* GravityStatus */
     , (803914,  19, True ) /* Attackable */
     , (803914,  22, True ) /* Inscribable */
     , (803914, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803914,   5,  -0.033) /* ManaRate */
     , (803914,  12,    0.66) /* Shade */
     , (803914,  39,     0.5) /* DefaultScale */
     , (803914, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803914,   1, 'Tradewind Bracelet of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803914,   1,   33554683) /* Setup */
     , (803914,   3,  536870932) /* SoundTable */
     , (803914,   6,   67111919) /* PaletteBase */
     , (803914,   8,  100686818) /* Icon */
     , (803914,  22,  872415275) /* PhysicsEffectTable */
     , (803914,  36,  234881042) /* MutateFilter */
     , (803914,  46,  939524146) /* TsysMutationFilter */
     , (803914,  52,  100667892) /* IconUnderlay */
	 , (803914,  55,       4645) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803914,  4369,      2)  /* Epic Focus */
     , (803914,  4352,      2)  /* Incantation of Armor Tinkering Expertise Self */;