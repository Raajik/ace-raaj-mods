DELETE FROM `weenie` WHERE `class_Id` = 802338;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802338, 'Haven Aethereia of Defense3', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802338,   1,       2048) /* ItemType - Gem */
     , (802338,   3,          2) /* PaletteTemplate - Blue */
     , (802338,   5,         50) /* EncumbranceVal */
     , (802338,   9,  268435456) /* ValidLocations - SigilLocRed */
     , (802338,  11,          1) /* MaxStackSize */
     , (802338,  12,          1) /* StackSize */
     , (802338,  13,         50) /* StackUnitEncumbrance */
     , (802338,  15,        12000) /* StackUnitValue */
     , (802338,  16,          1) /* ItemUseable - No */
     , (802338,  18,          1) /* UiEffects - Magical */
     , (802338,  19,        12000) /* Value */
     , (802338,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802338, 106,        999) /* ItemSpellcraft */
     , (802338, 107,      50000) /* ItemCurMana */
     , (802338, 108,      50000) /* ItemMaxMana */
     , (802338, 158,          7) /* WieldRequirements - Level */
     , (802338, 159,          1) /* WieldSkillType - Axe */
     , (802338, 160,        500) /* WieldDifficulty */
     , (802338, 265,         35) /* SigilVigor */
     , (802338, 319,          5) /* ItemMaxLevel */
     , (802338, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802338, 370,         35) /* GearMaxHealth */
     , (802338, 371,         35) /* GearMaxHealth */
     , (802338, 372,         35) /* GearMaxHealth */
     , (802338, 373,         35) /* GearMaxHealth */
     , (802338, 374,         35) /* GearMaxHealth */
     , (802338, 375,         35) /* GearMaxHealth */
     , (802338, 376,         35) /* GearMaxHealth */
     , (802338, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802338,   4,  750000000) /* ItemTotalXp */
     , (802338,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802338,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802338,   5,  -0.001) /* ManaRate */
     , (802338,  39,     0.8) /* DefaultScale */
	 , (802338, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802338,   1, 'Haven Aetheria of Defense') /* Name */
     , (802338,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802338,   1,   33556258) /* Setup */
     , (802338,   3,  536870932) /* SoundTable */
     , (802338,   6,   67111919) /* PaletteBase */
     , (802338,   7,  268435723) /* ClothingBase */
     , (802338,   8,      100690930) /* Icon */
     , (802338,  22,  872415275) /* PhysicsEffectTable */
     , (802338,  50,      100690930) /* IconOverlay */
     , (802338,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802338,  5253,      2)  /* Sigil of Defense XV */;