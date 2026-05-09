DELETE FROM `weenie` WHERE `class_Id` = 800901;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800901, 'Minor Prismatic Aethereia of Growth', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800901,   1,       2048) /* ItemType - Gem */
     , (800901,   3,          2) /* PaletteTemplate - Blue */
     , (800901,   5,         50) /* EncumbranceVal */
     , (800901,   9,  268435456) /* ValidLocations - SigilLocBlue */
     , (800901,  11,          1) /* MaxStackSize */
     , (800901,  12,          1) /* StackSize */
     , (800901,  13,         50) /* StackUnitEncumbrance */
     , (800901,  15,        2500) /* StackUnitValue */
     , (800901,  16,          1) /* ItemUseable - No */
     , (800901,  18,          1) /* UiEffects - Magical */
     , (800901,  19,        2500) /* Value */
     , (800901,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800901, 106,        999) /* ItemSpellcraft */
     , (800901, 107,      50000) /* ItemCurMana */
     , (800901, 108,      50000) /* ItemMaxMana */
     , (800901, 158,          7) /* WieldRequirements - Level */
     , (800901, 159,          1) /* WieldSkillType - Axe */
     , (800901, 160,         300) /* WieldDifficulty */
     , (800901, 265,         38) /* SigilVigor */
     , (800901, 319,          5) /* ItemMaxLevel */
     , (800901, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800901,   4,  750000000) /* ItemTotalXp */
     , (800901,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800901,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800901,   5,  -0.001) /* ManaRate */
     , (800901,  39,     0.8) /* DefaultScale */
	 , (800901, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800901,   1, 'Minor Prismatic Aetheria of Growth') /* Name */
     , (800901,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800901,   1,   33556258) /* Setup */
     , (800901,   3,  536870932) /* SoundTable */
     , (800901,   6,   67111919) /* PaletteBase */
     , (800901,   7,  268435723) /* ClothingBase */
     , (800901,   8,  27658) /* Icon */
     , (800901,  22,  872415275) /* PhysicsEffectTable */
     , (800901,  50,  15393) /* IconOverlay */
     , (800901,  55,          6) /* ProcSpell - Heal Self I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800901,  5223,      2)  /* Sigil of Fury XV */
     , (800901,  5238,      2)  /* Sigil of Destruction XV */
     , (800901,  5253,      2)  /* Sigil of Defense XV */
     /* , (800901,  5268,      2)  /* Sigil of Growth XV */
     /* , (800901,  5283,      2)  /* Sigil of Vigor XV */
     /* , (800901,  5298,      2)  /* Sigil of Vigor Mana XV */
     /* , (800901,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800901,  5449,      2)  /* Surging Strength */
     /* , (800901,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800901,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800901,  6300,      2)  /* Paragon's Critical Damage Reduction V */;