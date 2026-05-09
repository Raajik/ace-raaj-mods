DELETE FROM `weenie` WHERE `class_Id` = 803730;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803730, 'Great Elariwood Idol Orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803730,   1,      32768) /* ItemType - Caster */
     , (803730,   3,          6) /* PaletteTemplate - Navy */
     , (803730,   5,        100) /* EncumbranceVal */
     , (803730,   8,         50) /* Mass */
     , (803730,   9,   16777216) /* ValidLocations - Held */
     , (803730,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (803730,  18,          0) /* UiEffects - Magical */
     , (803730,  19,          1) /* Value */
     , (803730,  33,          1) /* Bonded - Bonded */
     , (803730,  46,        512) /* DefaultCombatStyle - Magic */
     , (803730,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (803730,  94,         16) /* TargetType - Creature */
     , (803730, 106,        250) /* ItemSpellcraft */
     , (803730, 107,        750) /* ItemCurMana */
     , (803730, 108,        750) /* ItemMaxMana */
     , (803730, 109,        550) /* ItemDifficulty */
     , (803730, 114,          0) /* Attuned - Attuned */
     , (803730, 150,        103) /* HookPlacement - Hook */
     , (803730, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803730,  22, True ) /* Inscribable */
     , (803730,  23, True ) /* DestroyOnSell */
     , (803730,  69, False) /* IsSellable */
     , (803730,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803730,   5,   -0.05) /* ManaRate */
     , (803730,  12,     0.5) /* Shade */
     , (803730,  29,       0) /* WeaponDefense */
     , (803730, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803730,   1, 'Great Elariwood Idol Orb') /* Name */
     , (803730,  16, 'Use this for tailoring.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803730,   1,   33558779) /* Setup */
     , (803730,   6,   67112776) /* PaletteBase */
     , (803730,   7,  268436247) /* ClothingBase */
     , (803730,   8,  100676569) /* Icon */;
