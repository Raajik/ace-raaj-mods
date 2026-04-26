DELETE FROM `weenie` WHERE `class_Id` = 802330;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802330, 'Haven Aethereia of Fury2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802330,   1,       2048) /* ItemType - Gem */
     , (802330,   3,          2) /* PaletteTemplate - Blue */
     , (802330,   5,         50) /* EncumbranceVal */
     , (802330,   9,  536870912) /* ValidLocations - SigilLocRed */
     , (802330,  11,          1) /* MaxStackSize */
     , (802330,  12,          1) /* StackSize */
     , (802330,  13,         50) /* StackUnitEncumbrance */
     , (802330,  15,        12000) /* StackUnitValue */
     , (802330,  16,          1) /* ItemUseable - No */
     , (802330,  18,          1) /* UiEffects - Magical */
     , (802330,  19,        12000) /* Value */
     , (802330,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802330, 106,        999) /* ItemSpellcraft */
     , (802330, 107,      50000) /* ItemCurMana */
     , (802330, 108,      50000) /* ItemMaxMana */
     , (802330, 158,          7) /* WieldRequirements - Level */
     , (802330, 159,          1) /* WieldSkillType - Axe */
     , (802330, 160,        500) /* WieldDifficulty */
     , (802330, 265,         37) /* SigilVigor */
     , (802330, 319,          5) /* ItemMaxLevel */
     , (802330, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802330, 370,         35) /* GearMaxHealth */
     , (802330, 371,         35) /* GearMaxHealth */
     , (802330, 372,         35) /* GearMaxHealth */
     , (802330, 373,         35) /* GearMaxHealth */
     , (802330, 374,         35) /* GearMaxHealth */
     , (802330, 375,         35) /* GearMaxHealth */
     , (802330, 376,         35) /* GearMaxHealth */
     , (802330, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802330,   4,  750000000) /* ItemTotalXp */
     , (802330,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802330,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802330,   5,  -0.001) /* ManaRate */
     , (802330,  39,     0.8) /* DefaultScale */
	 , (802330, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802330,   1, 'Haven Aetheria of Fury') /* Name */
     , (802330,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802330,   1,   33556258) /* Setup */
     , (802330,   3,  536870932) /* SoundTable */
     , (802330,   6,   67111919) /* PaletteBase */
     , (802330,   7,  268435723) /* ClothingBase */
     , (802330,   8,      100690931) /* Icon */
     , (802330,  22,  872415275) /* PhysicsEffectTable */
     , (802330,  50,      100690931) /* IconOverlay */
     , (802330,  55,       2933) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802330,  5223,      2)  /* Sigil of Fury XV */;