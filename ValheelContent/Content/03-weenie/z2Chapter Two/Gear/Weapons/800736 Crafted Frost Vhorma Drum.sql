DELETE FROM `weenie` WHERE `class_Id` = 800736;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800736, 'Crafted Frost Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800736,   1,      32768) /* ItemType - Caster */
     , (800736,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800736,   5,         50) /* EncumbranceVal */
     , (800736,   9,   16777216) /* ValidLocations - Held */
     , (800736,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800736,  18,         128) /* UiEffects - Magical */
     , (800736,  19,          1) /* Value */
     , (800736,  33,          1) /* Bonded - Slippery */
     , (800736,  45,         8) /* DamageType - Frost */
     , (800736,  46,        512) /* DefaultCombatStyle - Magic */
     , (800736,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800736,  94,         16) /* TargetType - Creature */
     , (800736, 106,        999) /* ItemSpellcraft */
     , (800736, 107,       2700) /* ItemCurMana */
     , (800736, 108,       2700) /* ItemMaxMana */
     , (800736, 114,          1) /* Attuned - Attuned */
     , (800736, 158,          7) /* WieldRequirements - Level */
     , (800736, 159,          1) /* WieldSkillType - Axe */
     , (800736, 160,        325) /* WieldDifficulty */
	 , (800736, 179,        128) /* Imbued Effect - Fire Rend */
     , (800736, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800736,  22, True ) /* Inscribable */
     , (800736,  65, True ) /* IgnoreMagicResist */
     , (800736,  66, True ) /* IgnoreMagicArmor */
     , (800736,  69, False) /* IsSellable */
     , (800736,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800736,   5,   -0.05) /* ManaRate */
     , (800736,  29,    1.30) /* WeaponDefense */
     , (800736,  39,     0.8) /* DefaultScale */
     , (800736, 136,     1.1) /* CriticalMultiplier */
     , (800736, 144,    0.35) /* ManaConversionMod */
     , (800736, 147,     0.3) /* CriticalFrequency */
     , (800736, 152,     1.5) /* ElementalDamageMod */
	 , (800736, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800736,   1, 'Crafted Frost Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800736,   1,   33557297) /* Setup */
     , (800736,   3,  536870932) /* SoundTable */
     , (800736,   6,   67113783) /* PaletteBase */
     , (800736,   7,  268436324) /* ClothingBase */
     , (800736,   8,  100672520) /* Icon */
     , (800736,  22,  872415275) /* PhysicsEffectTable */
     , (800736,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800736,  36,  234881046) /* MutateFilter */
	 , (800736,  52,  100689404) /* IconUnderlay */
	, (800736,  55,       4447) /* ProcSpell - Fire Bomb */;

