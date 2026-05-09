DELETE FROM `weenie` WHERE `class_Id` = 800904;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800904, 'Minor Prismatic Aethereia of Defense', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800904,   1,       2048) /* ItemType - Gem */
     , (800904,   3,          2) /* PaletteTemplate - Blue */
     , (800904,   5,         50) /* EncumbranceVal */
     , (800904,   9,  268435456) /* ValidLocations - SigilLocBlue */
     , (800904,  11,          1) /* MaxStackSize */
     , (800904,  12,          1) /* StackSize */
     , (800904,  13,         50) /* StackUnitEncumbrance */
     , (800904,  15,        2500) /* StackUnitValue */
     , (800904,  16,          1) /* ItemUseable - No */
     , (800904,  18,          1) /* UiEffects - Magical */
     , (800904,  19,        2500) /* Value */
     , (800904,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800904, 106,        999) /* ItemSpellcraft */
     , (800904, 107,      50000) /* ItemCurMana */
     , (800904, 108,      50000) /* ItemMaxMana */
     , (800904, 158,          7) /* WieldRequirements - Level */
     , (800904, 159,          1) /* WieldSkillType - Axe */
     , (800904, 160,         300) /* WieldDifficulty */
     , (800904, 265,         35) /* SigilVigor */
     , (800904, 319,          5) /* ItemMaxLevel */
     , (800904, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800904,   4,  750000000) /* ItemTotalXp */
     , (800904,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800904,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800904,   5,  -0.001) /* ManaRate */
     , (800904,  39,     0.8) /* DefaultScale */
	 , (800904, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800904,   1, 'Minor Prismatic Aetheria of Defense') /* Name */
     , (800904,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800904,   1,   33556258) /* Setup */
     , (800904,   3,  536870932) /* SoundTable */
     , (800904,   6,   67111919) /* PaletteBase */
     , (800904,   7,  268435723) /* ClothingBase */
     , (800904,   8,  27658) /* Icon */
     , (800904,  22,  872415275) /* PhysicsEffectTable */
     , (800904,  50,  15393) /* IconOverlay */
     , (800904,  55,          6) /* ProcSpell - Heal Self I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800904,  5223,      2)  /* Sigil of Fury XV */
     , (800904,  5238,      2)  /* Sigil of Destruction XV */
     , (800904,  5253,      2)  /* Sigil of Defense XV */
     /* , (800904,  5268,      2)  /* Sigil of Growth XV */
     /* , (800904,  5283,      2)  /* Sigil of Vigor XV */
     /* , (800904,  5298,      2)  /* Sigil of Vigor Mana XV */
     /* , (800904,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800904,  5449,      2)  /* Surging Strength */
     /* , (800904,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800904,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800904,  6300,      2)  /* Paragon's Critical Damage Reduction V */;