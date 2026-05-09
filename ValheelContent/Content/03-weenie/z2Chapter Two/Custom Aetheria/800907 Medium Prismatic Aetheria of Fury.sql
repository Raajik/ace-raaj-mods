DELETE FROM `weenie` WHERE `class_Id` = 800907;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800907, 'Medium Prismatic Aethereia of Fury', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800907,   1,       2048) /* ItemType - Gem */
     , (800907,   3,          2) /* PaletteTemplate - Blue */
     , (800907,   5,         50) /* EncumbranceVal */
     , (800907,   9,  536870912) /* ValidLocations - SigilLocYellow */
     , (800907,  11,          1) /* MaxStackSize */
     , (800907,  12,          1) /* StackSize */
     , (800907,  13,         50) /* StackUnitEncumbrance */
     , (800907,  15,        2500) /* StackUnitValue */
     , (800907,  16,          1) /* ItemUseable - No */
     , (800907,  18,          1) /* UiEffects - Magical */
     , (800907,  19,        2500) /* Value */
     , (800907,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800907, 106,        999) /* ItemSpellcraft */
     , (800907, 107,      50000) /* ItemCurMana */
     , (800907, 108,      50000) /* ItemMaxMana */
     , (800907, 158,          7) /* WieldRequirements - Level */
     , (800907, 159,          1) /* WieldSkillType - Axe */
     , (800907, 160,        325) /* WieldDifficulty */
     , (800907, 265,         37) /* SigilVigor */
     , (800907, 319,          5) /* ItemMaxLevel */
     , (800907, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800907,   4,  750000000) /* ItemTotalXp */
     , (800907,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800907,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800907,   5,  -0.001) /* ManaRate */
     , (800907,  39,     0.8) /* DefaultScale */
	 , (800907, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800907,   1, 'Medium Prismatic Aetheria of Fury') /* Name */
     , (800907,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800907,   1,   33556258) /* Setup */
     , (800907,   3,  536870932) /* SoundTable */
     , (800907,   6,   67111919) /* PaletteBase */
     , (800907,   7,  268435723) /* ClothingBase */
     , (800907,   8,      27660) /* Icon */
     , (800907,  22,  872415275) /* PhysicsEffectTable */
     , (800907,  50,      15393) /* IconOverlay */
     , (800907,  55,       4275) /* ProcSpell - Electric Whip */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800907,  5268,      2)  /* Sigil of Growth XV */
     , (800907,  5283,      2)  /* Sigil of Vigor XV */
     , (800907,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (800907,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800907,  5449,      2)  /* Surging Strength */
     /* , (800907,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800907,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800907,  6300,      2)  /* Paragon's Critical Damage Reduction V */;