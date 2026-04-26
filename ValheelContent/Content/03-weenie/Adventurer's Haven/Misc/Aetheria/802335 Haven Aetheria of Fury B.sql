DELETE FROM `weenie` WHERE `class_Id` = 802335;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802335, 'Haven Aethereia of Fury3', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802335,   1,       2048) /* ItemType - Gem */
     , (802335,   3,          2) /* PaletteTemplate - Blue */
     , (802335,   5,         50) /* EncumbranceVal */
     , (802335,   9,  268435456) /* ValidLocations - SigilLocRed */
     , (802335,  11,          1) /* MaxStackSize */
     , (802335,  12,          1) /* StackSize */
     , (802335,  13,         50) /* StackUnitEncumbrance */
     , (802335,  15,        12000) /* StackUnitValue */
     , (802335,  16,          1) /* ItemUseable - No */
     , (802335,  18,          1) /* UiEffects - Magical */
     , (802335,  19,        12000) /* Value */
     , (802335,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802335, 106,        999) /* ItemSpellcraft */
     , (802335, 107,      50000) /* ItemCurMana */
     , (802335, 108,      50000) /* ItemMaxMana */
     , (802335, 158,          7) /* WieldRequirements - Level */
     , (802335, 159,          1) /* WieldSkillType - Axe */
     , (802335, 160,        500) /* WieldDifficulty */
     , (802335, 265,         37) /* SigilVigor */
     , (802335, 319,          5) /* ItemMaxLevel */
     , (802335, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802335, 370,         35) /* GearMaxHealth */
     , (802335, 371,         35) /* GearMaxHealth */
     , (802335, 372,         35) /* GearMaxHealth */
     , (802335, 373,         35) /* GearMaxHealth */
     , (802335, 374,         35) /* GearMaxHealth */
     , (802335, 375,         35) /* GearMaxHealth */
     , (802335, 376,         35) /* GearMaxHealth */
     , (802335, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802335,   4,  750000000) /* ItemTotalXp */
     , (802335,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802335,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802335,   5,  -0.001) /* ManaRate */
     , (802335,  39,     0.8) /* DefaultScale */
	 , (802335, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802335,   1, 'Haven Aetheria of Fury') /* Name */
     , (802335,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802335,   1,   33556258) /* Setup */
     , (802335,   3,  536870932) /* SoundTable */
     , (802335,   6,   67111919) /* PaletteBase */
     , (802335,   7,  268435723) /* ClothingBase */
     , (802335,   8,      100690930) /* Icon */
     , (802335,  22,  872415275) /* PhysicsEffectTable */
     , (802335,  50,      100690930) /* IconOverlay */
     , (802335,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802335,  5223,      2)  /* Sigil of Fury XV */;