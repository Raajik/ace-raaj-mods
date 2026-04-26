DELETE FROM `weenie` WHERE `class_Id` = 800912;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800912, 'Major Prismatic Aethereia of Fury', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800912,   1,       2048) /* ItemType - Gem */
     , (800912,   3,          2) /* PaletteTemplate - Blue */
     , (800912,   5,         50) /* EncumbranceVal */
     , (800912,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (800912,  11,          1) /* MaxStackSize */
     , (800912,  12,          1) /* StackSize */
     , (800912,  13,         50) /* StackUnitEncumbrance */
     , (800912,  15,        2500) /* StackUnitValue */
     , (800912,  16,          1) /* ItemUseable - No */
     , (800912,  18,          1) /* UiEffects - Magical */
     , (800912,  19,        2500) /* Value */
     , (800912,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800912, 106,        999) /* ItemSpellcraft */
     , (800912, 107,      50000) /* ItemCurMana */
     , (800912, 108,      50000) /* ItemMaxMana */
     , (800912, 158,          7) /* WieldRequirements - Level */
     , (800912, 159,          1) /* WieldSkillType - Axe */
     , (800912, 160,        350) /* WieldDifficulty */
     , (800912, 265,         37) /* SigilVigor */
     , (800912, 319,          5) /* ItemMaxLevel */
     , (800912, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800912, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800912,   4,  750000000) /* ItemTotalXp */
     , (800912,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800912,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800912,   5,  -0.001) /* ManaRate */
     , (800912,  39,     0.8) /* DefaultScale */
	 , (800912, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800912,   1, 'Major Prismatic Aetheria of Fury') /* Name */
     , (800912,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800912,   1,   33556258) /* Setup */
     , (800912,   3,  536870932) /* SoundTable */
     , (800912,   6,   67111919) /* PaletteBase */
     , (800912,   7,  268435723) /* ClothingBase */
     , (800912,   8,      27659) /* Icon */
     , (800912,  22,  872415275) /* PhysicsEffectTable */
     , (800912,  50,      15393) /* IconOverlay */
     , (800912,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800912,  5449,      2)  /* Surging Strength */
     , (800912,  5978,      2)  /* Rare Armor Damage Boost */
     , (800912,  6295,      2)  /* Paragon's Critical Damage Boost V */
     , (800912,  6300,      2)  /* Paragon's Critical Damage Reduction V */;