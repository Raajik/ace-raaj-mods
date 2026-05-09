DELETE FROM `weenie` WHERE `class_Id` = 800908;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800908, 'Medium Prismatic Aethereia of Growth', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800908,   1,       2048) /* ItemType - Gem */
     , (800908,   3,          2) /* PaletteTemplate - Blue */
     , (800908,   5,         50) /* EncumbranceVal */
     , (800908,   9,  536870912) /* ValidLocations - SigilLocYellow */
     , (800908,  11,          1) /* MaxStackSize */
     , (800908,  12,          1) /* StackSize */
     , (800908,  13,         50) /* StackUnitEncumbrance */
     , (800908,  15,        2500) /* StackUnitValue */
     , (800908,  16,          1) /* ItemUseable - No */
     , (800908,  18,          1) /* UiEffects - Magical */
     , (800908,  19,        2500) /* Value */
     , (800908,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800908, 106,        999) /* ItemSpellcraft */
     , (800908, 107,      50000) /* ItemCurMana */
     , (800908, 108,      50000) /* ItemMaxMana */
     , (800908, 158,          7) /* WieldRequirements - Level */
     , (800908, 159,          1) /* WieldSkillType - Axe */
     , (800908, 160,        325) /* WieldDifficulty */
     , (800908, 265,         38) /* SigilVigor */
     , (800908, 319,          5) /* ItemMaxLevel */
     , (800908, 320,          2) /* ItemXpStyle - ScalesWithLevel */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800908,   4,  750000000) /* ItemTotalXp */
     , (800908,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800908,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800908,   5,  -0.001) /* ManaRate */
     , (800908,  39,     0.8) /* DefaultScale */
	 , (800908, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800908,   1, 'Medium Prismatic Aetheria of Growth') /* Name */
     , (800908,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800908,   1,   33556258) /* Setup */
     , (800908,   3,  536870932) /* SoundTable */
     , (800908,   6,   67111919) /* PaletteBase */
     , (800908,   7,  268435723) /* ClothingBase */
     , (800908,   8,      27660) /* Icon */
     , (800908,  22,  872415275) /* PhysicsEffectTable */
     , (800908,  50,      15393) /* IconOverlay */
     , (800908,  55,       4275) /* ProcSpell - Electric Whip */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800908,  5268,      2)  /* Sigil of Growth XV */
     , (800908,  5283,      2)  /* Sigil of Vigor XV */
     , (800908,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (800908,  5313,      2)  /* Sigil of Vigor Stamina XV */
     /* , (800908,  5449,      2)  /* Surging Strength */
     /* , (800908,  5978,      2)  /* Rare Armor Damage Boost */
     /* , (800908,  6295,      2)  /* Paragon's Critical Damage Boost V */
     /* , (800908,  6300,      2)  /* Paragon's Critical Damage Reduction V */;