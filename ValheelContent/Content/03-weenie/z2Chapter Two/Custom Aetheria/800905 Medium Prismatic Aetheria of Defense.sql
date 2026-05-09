DELETE FROM `weenie` WHERE `class_Id` = 800905;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800905, 'Medium Prismatic Aethereia of Defense', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800905,   1,       2048) /* ItemType - Gem */
     , (800905,   3,          2) /* PaletteTemplate - Blue */
     , (800905,   5,         50) /* EncumbranceVal */
     , (800905,   9,  536870912) /* ValidLocations - SigilLocYellow */
     , (800905,  11,          1) /* MaxStackSize */
     , (800905,  12,          1) /* StackSize */
     , (800905,  13,         50) /* StackUnitEncumbrance */
     , (800905,  15,        2500) /* StackUnitValue */
     , (800905,  16,          1) /* ItemUseable - No */
     , (800905,  18,          1) /* UiEffects - Magical */
     , (800905,  19,        2500) /* Value */
     , (800905,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800905, 106,        999) /* ItemSpellcraft */
     , (800905, 107,      50000) /* ItemCurMana */
     , (800905, 108,      50000) /* ItemMaxMana */
     , (800905, 158,          7) /* WieldRequirements - Level */
     , (800905, 159,          1) /* WieldSkillType - Axe */
     , (800905, 160,        325) /* WieldDifficulty */
     , (800905, 265,         35) /* SigilVigor */
     , (800905, 319,          5) /* ItemMaxLevel */
     , (800905, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800905,   4,  750000000) /* ItemTotalXp */
     , (800905,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800905,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800905,   5,  -0.001) /* ManaRate */
     , (800905,  39,     0.8) /* DefaultScale */
	 , (800905, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800905,   1, 'Medium Prismatic Aetheria of Defense') /* Name */
     , (800905,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800905,   1,   33556258) /* Setup */
     , (800905,   3,  536870932) /* SoundTable */
     , (800905,   6,   67111919) /* PaletteBase */
     , (800905,   7,  268435723) /* ClothingBase */
     , (800905,   8,      27660) /* Icon */
     , (800905,  22,  872415275) /* PhysicsEffectTable */
     , (800905,  50,      15393) /* IconOverlay */
     , (800905,  55,       4275) /* ProcSpell - Electric Whip */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800905,  5268,      2)  /* Sigil of Growth XV */
     , (800905,  5283,      2)  /* Sigil of Vigor XV */
     , (800905,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (800905,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800905,  5449,      2)  /* Surging Strength */
     /* , (800905,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800905,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800905,  6300,      2)  /* Paragon's Critical Damage Reduction V */;