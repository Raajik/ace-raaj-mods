DELETE FROM `weenie` WHERE `class_Id` = 800902;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800902, 'Minor Prismatic Aethereia of Fury', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800902,   1,       2048) /* ItemType - Gem */
     , (800902,   3,          2) /* PaletteTemplate - Blue */
     , (800902,   5,         50) /* EncumbranceVal */
     , (800902,   9,  268435456) /* ValidLocations - SigilLocBlue */
     , (800902,  11,          1) /* MaxStackSize */
     , (800902,  12,          1) /* StackSize */
     , (800902,  13,         50) /* StackUnitEncumbrance */
     , (800902,  15,        2500) /* StackUnitValue */
     , (800902,  16,          1) /* ItemUseable - No */
     , (800902,  18,          1) /* UiEffects - Magical */
     , (800902,  19,        2500) /* Value */
     , (800902,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800902, 106,        999) /* ItemSpellcraft */
     , (800902, 107,      50000) /* ItemCurMana */
     , (800902, 108,      50000) /* ItemMaxMana */
     , (800902, 158,          7) /* WieldRequirements - Level */
     , (800902, 159,          1) /* WieldSkillType - Axe */
     , (800902, 160,         300) /* WieldDifficulty */
     , (800902, 265,         37) /* SigilVigor */
     , (800902, 319,          5) /* ItemMaxLevel */
     , (800902, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800902,   4,  750000000) /* ItemTotalXp */
     , (800902,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800902,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800902,   5,  -0.001) /* ManaRate */
     , (800902,  39,     0.8) /* DefaultScale */
	 , (800902, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800902,   1, 'Minor Prismatic Aetheria of Fury') /* Name */
     , (800902,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800902,   1,   33556258) /* Setup */
     , (800902,   3,  536870932) /* SoundTable */
     , (800902,   6,   67111919) /* PaletteBase */
     , (800902,   7,  268435723) /* ClothingBase */
     , (800902,   8,  27658) /* Icon */
     , (800902,  22,  872415275) /* PhysicsEffectTable */
     , (800902,  50,  15393) /* IconOverlay */
     , (800902,  55,          6) /* ProcSpell - Heal Self I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800902,  5223,      2)  /* Sigil of Fury XV */
     , (800902,  5238,      2)  /* Sigil of Destruction XV */
     , (800902,  5253,      2)  /* Sigil of Defense XV */
     /* , (800902,  5268,      2)  /* Sigil of Growth XV */
     /* , (800902,  5283,      2)  /* Sigil of Vigor XV */
     /* , (800902,  5298,      2)  /* Sigil of Vigor Mana XV */
     /* , (800902,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800902,  5449,      2)  /* Surging Strength */
     /* , (800902,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800902,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800902,  6300,      2)  /* Paragon's Critical Damage Reduction V */;