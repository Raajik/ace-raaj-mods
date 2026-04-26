DELETE FROM `weenie` WHERE `class_Id` = 803911;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803911, 'Tradewind Ring of Protection', 1, '2024-04-22 10:03:02') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803911,   1,          8) /* ItemType - Jewelry */
     , (803911,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803911,   5,         15) /* EncumbranceVal */
     , (803911,   8,         90) /* Mass */
     , (803911,   9,     786432) /* ValidLocations - FingerWear */
     , (803911,  16,          1) /* ItemUseable - No */
     , (803911,  19,      50000) /* Value */
     , (803911,  33,          1) /* Bonded - Bonded */
     , (803911,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803911, 106,        999) /* ItemSpellcraft */
     , (803911, 107,       3000) /* ItemCurMana */
     , (803911, 108,       3000) /* ItemMaxMana */
     , (803911, 109,          0) /* ItemDifficulty */
     , (803911, 151,          2) /* HookType - Wall */
	 , (803911, 158,          7) /* WieldRequirements - Level */
     , (803911, 160,      10000) /* WieldDifficulty */
     , (803911, 169,  118162702) /* TsysMutationData */
     , (803911, 370,       1000) /* GearMaxHealth */
     , (803911, 371,       1250) /* GearMaxHealth */
     , (803911, 372,       1000) /* GearMaxHealth */
     , (803911, 373,       1250) /* GearMaxHealth */
     , (803911, 376,       1000) /* GearMaxHealth */
     , (803911, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803911,  11, True ) /* IgnoreCollisions */
     , (803911,  13, True ) /* Ethereal */
     , (803911,  14, True ) /* GravityStatus */
     , (803911,  19, True ) /* Attackable */
     , (803911,  22, True ) /* Inscribable */
     , (803911, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803911,   5,  -0.033) /* ManaRate */
     , (803911,  12,    0.66) /* Shade */
     , (803911,  39,     0.5) /* DefaultScale */
     , (803911, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803911,   1, 'Tradewind Ring of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803911,   1,   33554691) /* Setup */
     , (803911,   3,  536870932) /* SoundTable */
     , (803911,   6,   67111919) /* PaletteBase */
     , (803911,   8,  100686827) /* Icon */
     , (803911,  22,  872415275) /* PhysicsEffectTable */
     , (803911,  36,  234881042) /* MutateFilter */
     , (803911,  46,  939524146) /* TsysMutationFilter */
     , (803911,  52,  100667892) /* IconUnderlay */
	 , (803911,  55,       4643) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803911,  2928,      2) /* Tusker Hide */
     , (803911,  2382,      2) /* Unnatural Persistence */;