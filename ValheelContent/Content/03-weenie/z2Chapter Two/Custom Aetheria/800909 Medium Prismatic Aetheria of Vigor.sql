DELETE FROM `weenie` WHERE `class_Id` = 800909;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800909, 'Medium Prismatic Aethereia of Vigor', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800909,   1,       2048) /* ItemType - Gem */
     , (800909,   3,          2) /* PaletteTemplate - Blue */
     , (800909,   5,         50) /* EncumbranceVal */
     , (800909,   9,  536870912) /* ValidLocations - SigilLocYellow */
     , (800909,  11,          1) /* MaxStackSize */
     , (800909,  12,          1) /* StackSize */
     , (800909,  13,         50) /* StackUnitEncumbrance */
     , (800909,  15,        2500) /* StackUnitValue */
     , (800909,  16,          1) /* ItemUseable - No */
     , (800909,  18,          1) /* UiEffects - Magical */
     , (800909,  19,        2500) /* Value */
     , (800909,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800909, 106,        999) /* ItemSpellcraft */
     , (800909, 107,      50000) /* ItemCurMana */
     , (800909, 108,      50000) /* ItemMaxMana */
     , (800909, 158,          7) /* WieldRequirements - Level */
     , (800909, 159,          1) /* WieldSkillType - Axe */
     , (800909, 160,        325) /* WieldDifficulty */
     , (800909, 265,         39) /* SigilVigor */
     , (800909, 319,          5) /* ItemMaxLevel */
     , (800909, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800909,   4,  750000000) /* ItemTotalXp */
     , (800909,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800909,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800909,   5,  -0.001) /* ManaRate */
     , (800909,  39,     0.8) /* DefaultScale */
	 , (800909, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800909,   1, 'Medium Prismatic Aetheria of Vigor') /* Name */
     , (800909,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800909,   1,   33556258) /* Setup */
     , (800909,   3,  536870932) /* SoundTable */
     , (800909,   6,   67111919) /* PaletteBase */
     , (800909,   7,  268435723) /* ClothingBase */
     , (800909,   8,      27660) /* Icon */
     , (800909,  22,  872415275) /* PhysicsEffectTable */
     , (800909,  50,      15393) /* IconOverlay */
     , (800909,  55,       4275) /* ProcSpell - Electric Whip */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800909,  5268,      2)  /* Sigil of Growth XV */
     , (800909,  5283,      2)  /* Sigil of Vigor XV */
     , (800909,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (800909,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800909,  5449,      2)  /* Surging Strength */
     /* , (800909,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800909,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800909,  6300,      2)  /* Paragon's Critical Damage Reduction V */;