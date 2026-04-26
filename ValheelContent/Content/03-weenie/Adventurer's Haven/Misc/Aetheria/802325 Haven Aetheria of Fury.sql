DELETE FROM `weenie` WHERE `class_Id` = 802325;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802325, 'Haven Aethereia of Fury', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802325,   1,       2048) /* ItemType - Gem */
     , (802325,   3,          2) /* PaletteTemplate - Blue */
     , (802325,   5,         50) /* EncumbranceVal */
     , (802325,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (802325,  11,          1) /* MaxStackSize */
     , (802325,  12,          1) /* StackSize */
     , (802325,  13,         50) /* StackUnitEncumbrance */
     , (802325,  15,        12000) /* StackUnitValue */
     , (802325,  16,          1) /* ItemUseable - No */
     , (802325,  18,          1) /* UiEffects - Magical */
     , (802325,  19,        12000) /* Value */
     , (802325,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802325, 106,        999) /* ItemSpellcraft */
     , (802325, 107,      50000) /* ItemCurMana */
     , (802325, 108,      50000) /* ItemMaxMana */
     , (802325, 158,          7) /* WieldRequirements - Level */
     , (802325, 159,          1) /* WieldSkillType - Axe */
     , (802325, 160,        500) /* WieldDifficulty */
     , (802325, 265,         37) /* SigilVigor */
     , (802325, 319,          5) /* ItemMaxLevel */
     , (802325, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802325, 370,         35) /* GearMaxHealth */
     , (802325, 371,         35) /* GearMaxHealth */
     , (802325, 372,         35) /* GearMaxHealth */
     , (802325, 373,         35) /* GearMaxHealth */
     , (802325, 374,         35) /* GearMaxHealth */
     , (802325, 375,         35) /* GearMaxHealth */
     , (802325, 376,         35) /* GearMaxHealth */
     , (802325, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802325,   4,  750000000) /* ItemTotalXp */
     , (802325,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802325,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802325,   5,  -0.001) /* ManaRate */
     , (802325,  39,     0.8) /* DefaultScale */
	 , (802325, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802325,   1, 'Haven Aetheria of Fury') /* Name */
     , (802325,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802325,   1,   33556258) /* Setup */
     , (802325,   3,  536870932) /* SoundTable */
     , (802325,   6,   67111919) /* PaletteBase */
     , (802325,   7,  268435723) /* ClothingBase */
     , (802325,   8,      100690932) /* Icon */
     , (802325,  22,  872415275) /* PhysicsEffectTable */
     , (802325,  50,      100690932) /* IconOverlay */
     , (802325,  55,       3684) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802325,  5223,      2)  /* Sigil of Fury XV */;