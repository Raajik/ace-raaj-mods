DELETE FROM `weenie` WHERE `class_Id` = 800906;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800906, 'Medium Prismatic Aethereia of Destruction', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800906,   1,       2048) /* ItemType - Gem */
     , (800906,   3,          2) /* PaletteTemplate - Blue */
     , (800906,   5,         50) /* EncumbranceVal */
     , (800906,   9,  536870912) /* ValidLocations - SigilLocYellow */
     , (800906,  11,          1) /* MaxStackSize */
     , (800906,  12,          1) /* StackSize */
     , (800906,  13,         50) /* StackUnitEncumbrance */
     , (800906,  15,        2500) /* StackUnitValue */
     , (800906,  16,          1) /* ItemUseable - No */
     , (800906,  18,          1) /* UiEffects - Magical */
     , (800906,  19,        2500) /* Value */
     , (800906,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800906, 106,        999) /* ItemSpellcraft */
     , (800906, 107,      50000) /* ItemCurMana */
     , (800906, 108,      50000) /* ItemMaxMana */
     , (800906, 158,          7) /* WieldRequirements - Level */
     , (800906, 159,          1) /* WieldSkillType - Axe */
     , (800906, 160,        325) /* WieldDifficulty */
     , (800906, 265,         36) /* SigilVigor */
     , (800906, 319,          5) /* ItemMaxLevel */
     , (800906, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800906,   4,  750000000) /* ItemTotalXp */
     , (800906,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800906,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800906,   5,  -0.001) /* ManaRate */
     , (800906,  39,     0.8) /* DefaultScale */
	 , (800906, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800906,   1, 'Medium Prismatic Aetheria of Destruction') /* Name */
     , (800906,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800906,   1,   33556258) /* Setup */
     , (800906,   3,  536870932) /* SoundTable */
     , (800906,   6,   67111919) /* PaletteBase */
     , (800906,   7,  268435723) /* ClothingBase */
     , (800906,   8,      27660) /* Icon */
     , (800906,  22,  872415275) /* PhysicsEffectTable */
     , (800906,  50,      15393) /* IconOverlay */
     , (800906,  55,       4275) /* ProcSpell - Electric Whip */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800906,  5268,      2)  /* Sigil of Growth XV */
     , (800906,  5283,      2)  /* Sigil of Vigor XV */
     , (800906,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (800906,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800906,  5449,      2)  /* Surging Strength */
     /* , (800906,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800906,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800906,  6300,      2)  /* Paragon's Critical Damage Reduction V */;