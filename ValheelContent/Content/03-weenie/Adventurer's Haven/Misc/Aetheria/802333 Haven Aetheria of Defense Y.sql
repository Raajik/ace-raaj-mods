DELETE FROM `weenie` WHERE `class_Id` = 802333;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802333, 'Haven Aethereia of Defense2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802333,   1,       2048) /* ItemType - Gem */
     , (802333,   3,          2) /* PaletteTemplate - Blue */
     , (802333,   5,         50) /* EncumbranceVal */
     , (802333,   9,  536870912) /* ValidLocations - SigilLocRed */
     , (802333,  11,          1) /* MaxStackSize */
     , (802333,  12,          1) /* StackSize */
     , (802333,  13,         50) /* StackUnitEncumbrance */
     , (802333,  15,        12000) /* StackUnitValue */
     , (802333,  16,          1) /* ItemUseable - No */
     , (802333,  18,          1) /* UiEffects - Magical */
     , (802333,  19,        12000) /* Value */
     , (802333,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802333, 106,        999) /* ItemSpellcraft */
     , (802333, 107,      50000) /* ItemCurMana */
     , (802333, 108,      50000) /* ItemMaxMana */
     , (802333, 158,          7) /* WieldRequirements - Level */
     , (802333, 159,          1) /* WieldSkillType - Axe */
     , (802333, 160,        500) /* WieldDifficulty */
     , (802333, 265,         35) /* SigilVigor */
     , (802333, 319,          5) /* ItemMaxLevel */
     , (802333, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802333, 370,         35) /* GearMaxHealth */
     , (802333, 371,         35) /* GearMaxHealth */
     , (802333, 372,         35) /* GearMaxHealth */
     , (802333, 373,         35) /* GearMaxHealth */
     , (802333, 374,         35) /* GearMaxHealth */
     , (802333, 375,         35) /* GearMaxHealth */
     , (802333, 376,         35) /* GearMaxHealth */
     , (802333, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802333,   4,  750000000) /* ItemTotalXp */
     , (802333,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802333,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802333,   5,  -0.001) /* ManaRate */
     , (802333,  39,     0.8) /* DefaultScale */
	 , (802333, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802333,   1, 'Haven Aetheria of Defense') /* Name */
     , (802333,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802333,   1,   33556258) /* Setup */
     , (802333,   3,  536870932) /* SoundTable */
     , (802333,   6,   67111919) /* PaletteBase */
     , (802333,   7,  268435723) /* ClothingBase */
     , (802333,   8,      100690931) /* Icon */
     , (802333,  22,  872415275) /* PhysicsEffectTable */
     , (802333,  50,      100690931) /* IconOverlay */
     , (802333,  55,       2933) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802333,  5253,      2)  /* Sigil of Defense XV */;