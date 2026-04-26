DELETE FROM `weenie` WHERE `class_Id` = 800900;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800900, 'Minor Prismatic Aethereia', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800900,   1,       2048) /* ItemType - Gem */
     , (800900,   3,          2) /* PaletteTemplate - Blue */
     , (800900,   5,         50) /* EncumbranceVal */
     , (800900,   9,  268435456) /* ValidLocations - SigilLocBlue */
     , (800900,  11,          1) /* MaxStackSize */
     , (800900,  12,          1) /* StackSize */
     , (800900,  13,         50) /* StackUnitEncumbrance */
     , (800900,  15,        2500) /* StackUnitValue */
     , (800900,  16,          1) /* ItemUseable - No */
     , (800900,  18,          1) /* UiEffects - Magical */
     , (800900,  19,        2500) /* Value */
     , (800900,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800900, 106,        999) /* ItemSpellcraft */
     , (800900, 107,      50000) /* ItemCurMana */
     , (800900, 108,      50000) /* ItemMaxMana */
     , (800900, 158,          7) /* WieldRequirements - Level */
     , (800900, 159,          1) /* WieldSkillType - Axe */
     , (800900, 160,         300) /* WieldDifficulty */
     , (800900, 265,         39) /* SigilVigor */
     , (800900, 319,          5) /* ItemMaxLevel */
     , (800900, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800900,   4,  750000000) /* ItemTotalXp */
     , (800900,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800900,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800900,   5,  -0.001) /* ManaRate */
     , (800900,  39,     0.8) /* DefaultScale */
	 , (800900, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800900,   1, 'Minor Prismatic Aetheria of Vigor') /* Name */
     , (800900,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800900,   1,   33556258) /* Setup */
     , (800900,   3,  536870932) /* SoundTable */
     , (800900,   6,   67111919) /* PaletteBase */
     , (800900,   7,  268435723) /* ClothingBase */
     , (800900,   8,  27658) /* Icon */
     , (800900,  22,  872415275) /* PhysicsEffectTable */
     , (800900,  50,  15393) /* IconOverlay */
     , (800900,  55,          6) /* ProcSpell - Heal Self I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800900,  5223,      2)  /* Sigil of Fury XV */
     , (800900,  5238,      2)  /* Sigil of Destruction XV */
     , (800900,  5253,      2)  /* Sigil of Defense XV */
     /* , (800900,  5268,      2)  /* Sigil of Growth XV */
     /* , (800900,  5283,      2)  /* Sigil of Vigor XV */
     /* , (800900,  5298,      2)  /* Sigil of Vigor Mana XV */
     /* , (800900,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800900,  5449,      2)  /* Surging Strength */
     /* , (800900,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800900,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800900,  6300,      2)  /* Paragon's Critical Damage Reduction V */;