DELETE FROM `weenie` WHERE `class_Id` = 800903;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800903, 'Minor Prismatic Aethereia of Destruction', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800903,   1,       2048) /* ItemType - Gem */
     , (800903,   3,          2) /* PaletteTemplate - Blue */
     , (800903,   5,         50) /* EncumbranceVal */
     , (800903,   9,  268435456) /* ValidLocations - SigilLocBlue */
     , (800903,  11,          1) /* MaxStackSize */
     , (800903,  12,          1) /* StackSize */
     , (800903,  13,         50) /* StackUnitEncumbrance */
     , (800903,  15,        2500) /* StackUnitValue */
     , (800903,  16,          1) /* ItemUseable - No */
     , (800903,  18,          1) /* UiEffects - Magical */
     , (800903,  19,        2500) /* Value */
     , (800903,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800903, 106,        999) /* ItemSpellcraft */
     , (800903, 107,      50000) /* ItemCurMana */
     , (800903, 108,      50000) /* ItemMaxMana */
     , (800903, 158,          7) /* WieldRequirements - Level */
     , (800903, 159,          1) /* WieldSkillType - Axe */
     , (800903, 160,         300) /* WieldDifficulty */
     , (800903, 265,         36) /* SigilVigor */
     , (800903, 319,          5) /* ItemMaxLevel */
     , (800903, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800903,   4,  750000000) /* ItemTotalXp */
     , (800903,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800903,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800903,   5,  -0.001) /* ManaRate */
     , (800903,  39,     0.8) /* DefaultScale */
	 , (800903, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800903,   1, 'Minor Prismatic Aetheria of Destruction') /* Name */
     , (800903,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800903,   1,   33556258) /* Setup */
     , (800903,   3,  536870932) /* SoundTable */
     , (800903,   6,   67111919) /* PaletteBase */
     , (800903,   7,  268435723) /* ClothingBase */
     , (800903,   8,  27658) /* Icon */
     , (800903,  22,  872415275) /* PhysicsEffectTable */
     , (800903,  50,  15393) /* IconOverlay */
     , (800903,  55,          6) /* ProcSpell - Heal Self I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800903,  5223,      2)  /* Sigil of Fury XV */
     , (800903,  5238,      2)  /* Sigil of Destruction XV */
     , (800903,  5253,      2)  /* Sigil of Defense XV */
     /* , (800903,  5268,      2)  /* Sigil of Growth XV */
     /* , (800903,  5283,      2)  /* Sigil of Vigor XV */
     /* , (800903,  5298,      2)  /* Sigil of Vigor Mana XV */
     /* , (800903,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800903,  5449,      2)  /* Surging Strength */
     /* , (800903,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800903,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800903,  6300,      2)  /* Paragon's Critical Damage Reduction V */;