DELETE FROM `weenie` WHERE `class_Id` = 803570;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803570, 'HerschemsBracelet', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803570,   1,          8) /* ItemType - Jewelry */
     , (803570,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803570,   5,         60) /* EncumbranceVal */
     , (803570,   8,         90) /* Mass */
     , (803570,   9,     196608) /* ValidLocations - WristWear */
     , (803570,  16,          1) /* ItemUseable - No */
     , (803570,  19,      50000) /* Value */
     , (803570,  33,          1) /* Bonded - Bonded */
     , (803570,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803570, 106,        999) /* ItemSpellcraft */
     , (803570, 107,       3000) /* ItemCurMana */
     , (803570, 108,       3000) /* ItemMaxMana */
     , (803570, 109,          0) /* ItemDifficulty */
     , (803570, 151,          2) /* HookType - Wall */
	 , (803570, 158,          7) /* WieldRequirements - Level */
     , (803570, 159,          1) /* WieldSkillType */
     , (803570, 160,       3000) /* WieldDifficulty */
     , (803570, 169,  118162702) /* TsysMutationData */
     , (803570, 370,        750) /* GearMaxHealth */
     , (803570, 371,        750) /* GearMaxHealth */
     , (803570, 372,        750) /* GearMaxHealth */
     , (803570, 373,        750) /* GearMaxHealth */
     , (803570, 379,        750) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803570,  11, True ) /* IgnoreCollisions */
     , (803570,  13, True ) /* Ethereal */
     , (803570,  14, True ) /* GravityStatus */
     , (803570,  19, True ) /* Attackable */
     , (803570,  22, True ) /* Inscribable */
     , (803570, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803570,   5,  -0.033) /* ManaRate */
     , (803570,  12,    0.66) /* Shade */
     , (803570,  39,     0.5) /* DefaultScale */
     , (803570, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803570,   1, 'Herschem''s Bracelet') /* Name */
     , (803570,  16, 'A class based piece of jewelry.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803570,   1,   33554683) /* Setup */
     , (803570,   3,  536870932) /* SoundTable */
     , (803570,   6,   67111919) /* PaletteBase */
     , (803570,   8,  100686814) /* Icon */
     , (803570,  22,  872415275) /* PhysicsEffectTable */
     , (803570,  36,  234881042) /* MutateFilter */
     , (803570,  46,  939524146) /* TsysMutationFilter */
     , (803570,  52,  100676442) /* IconUnderlay */
	 , (803570,  55,       4643) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803570,  3715,      2)  /* Epic Focus */
     , (803570,  3716,      2)  /* Incantation of Armor Tinkering Expertise Self */;