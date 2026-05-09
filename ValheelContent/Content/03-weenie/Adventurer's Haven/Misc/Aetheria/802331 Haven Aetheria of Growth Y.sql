DELETE FROM `weenie` WHERE `class_Id` = 802331;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802331, 'Haven Aethereia of Growth2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802331,   1,       2048) /* ItemType - Gem */
     , (802331,   3,          2) /* PaletteTemplate - Blue */
     , (802331,   5,         50) /* EncumbranceVal */
     , (802331,   9,  536870912) /* ValidLocations - SigilLocRed */
     , (802331,  11,          1) /* MaxStackSize */
     , (802331,  12,          1) /* StackSize */
     , (802331,  13,         50) /* StackUnitEncumbrance */
     , (802331,  15,        12000) /* StackUnitValue */
     , (802331,  16,          1) /* ItemUseable - No */
     , (802331,  18,          1) /* UiEffects - Magical */
     , (802331,  19,        12000) /* Value */
     , (802331,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802331, 106,        999) /* ItemSpellcraft */
     , (802331, 107,      50000) /* ItemCurMana */
     , (802331, 108,      50000) /* ItemMaxMana */
     , (802331, 158,          7) /* WieldRequirements - Level */
     , (802331, 159,          1) /* WieldSkillType - Axe */
     , (802331, 160,        500) /* WieldDifficulty */
     , (802331, 265,         38) /* SigilVigor */
     , (802331, 319,          5) /* ItemMaxLevel */
     , (802331, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802331, 370,         35) /* GearMaxHealth */
     , (802331, 371,         35) /* GearMaxHealth */
     , (802331, 372,         35) /* GearMaxHealth */
     , (802331, 373,         35) /* GearMaxHealth */
     , (802331, 374,         35) /* GearMaxHealth */
     , (802331, 375,         35) /* GearMaxHealth */
     , (802331, 376,         35) /* GearMaxHealth */
     , (802331, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802331,   4,  750000000) /* ItemTotalXp */
     , (802331,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802331,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802331,   5,  -0.001) /* ManaRate */
     , (802331,  39,     0.8) /* DefaultScale */
	 , (802331, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802331,   1, 'Haven Aetheria of Growth') /* Name */
     , (802331,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802331,   1,   33556258) /* Setup */
     , (802331,   3,  536870932) /* SoundTable */
     , (802331,   6,   67111919) /* PaletteBase */
     , (802331,   7,  268435723) /* ClothingBase */
     , (802331,   8,      100690931) /* Icon */
     , (802331,  22,  872415275) /* PhysicsEffectTable */
     , (802331,  50,      100690931) /* IconOverlay */
     , (802331,  55,       2933) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802331,  5268,      2)  /* Sigil of Growth XV */;