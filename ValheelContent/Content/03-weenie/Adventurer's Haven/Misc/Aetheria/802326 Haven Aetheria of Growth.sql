DELETE FROM `weenie` WHERE `class_Id` = 802326;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802326, 'Haven Aethereia of Growth', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802326,   1,       2048) /* ItemType - Gem */
     , (802326,   3,          2) /* PaletteTemplate - Blue */
     , (802326,   5,         50) /* EncumbranceVal */
     , (802326,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (802326,  11,          1) /* MaxStackSize */
     , (802326,  12,          1) /* StackSize */
     , (802326,  13,         50) /* StackUnitEncumbrance */
     , (802326,  15,        12000) /* StackUnitValue */
     , (802326,  16,          1) /* ItemUseable - No */
     , (802326,  18,          1) /* UiEffects - Magical */
     , (802326,  19,        12000) /* Value */
     , (802326,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802326, 106,        999) /* ItemSpellcraft */
     , (802326, 107,      50000) /* ItemCurMana */
     , (802326, 108,      50000) /* ItemMaxMana */
     , (802326, 158,          7) /* WieldRequirements - Level */
     , (802326, 159,          1) /* WieldSkillType - Axe */
     , (802326, 160,        500) /* WieldDifficulty */
     , (802326, 265,         38) /* SigilVigor */
     , (802326, 319,          5) /* ItemMaxLevel */
     , (802326, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802326, 370,         35) /* GearMaxHealth */
     , (802326, 371,         35) /* GearMaxHealth */
     , (802326, 372,         35) /* GearMaxHealth */
     , (802326, 373,         35) /* GearMaxHealth */
     , (802326, 374,         35) /* GearMaxHealth */
     , (802326, 375,         35) /* GearMaxHealth */
     , (802326, 376,         35) /* GearMaxHealth */
     , (802326, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802326,   4,  750000000) /* ItemTotalXp */
     , (802326,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802326,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802326,   5,  -0.001) /* ManaRate */
     , (802326,  39,     0.8) /* DefaultScale */
	 , (802326, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802326,   1, 'Haven Aetheria of Growth') /* Name */
     , (802326,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802326,   1,   33556258) /* Setup */
     , (802326,   3,  536870932) /* SoundTable */
     , (802326,   6,   67111919) /* PaletteBase */
     , (802326,   7,  268435723) /* ClothingBase */
     , (802326,   8,      100690932) /* Icon */
     , (802326,  22,  872415275) /* PhysicsEffectTable */
     , (802326,  50,      100690932) /* IconOverlay */
     , (802326,  55,       3684) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802326,  5268,      2)  /* Sigil of Growth XV */;