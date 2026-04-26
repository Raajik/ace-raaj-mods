DELETE FROM `weenie` WHERE `class_Id` = 801243;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801243, 'Crafted Vhorma Dark Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801243,   1,      32768) /* ItemType - Caster */
     , (801243,   3,         39) /* PaletteTemplate - PinkPurple */
     , (801243,   5,         50) /* EncumbranceVal */
     , (801243,   9,   16777216) /* ValidLocations - Held */
     , (801243,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (801243,  18,          1) /* UiEffects - Magical */
     , (801243,  19,          1) /* Value */
     , (801243,  33,          1) /* Bonded - Slippery */
     , (801243,  45,       1024) /* DamageType - Force */
     , (801243,  46,        512) /* DefaultCombatStyle - Magic */
     , (801243,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (801243,  94,         16) /* TargetType - Creature */
     , (801243, 106,        999) /* ItemSpellcraft */
     , (801243, 107,       2700) /* ItemCurMana */
     , (801243, 108,       2700) /* ItemMaxMana */
     , (801243, 114,          1) /* Attuned - Attuned */
     , (801243, 158,          7) /* WieldRequirements - Level */
     , (801243, 159,          1) /* WieldSkillType - Axe */
     , (801243, 160,        325) /* WieldDifficulty */
	 , (801243, 179,          4) /* Imbued Effect - Armor Rend */
     , (801243, 263,          1) /* ResistanceModifierType */
     , (801243, 353,          0) /* WeaponType - Undef */
     , (801243, 370,          6) /* Damage */
     , (801243, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801243,  22, True ) /* Inscribable */
     , (801243,  65, True ) /* IgnoreMagicResist */
     , (801243,  66, True ) /* IgnoreMagicArmor */
     , (801243,  69, False) /* IsSellable */
     , (801243,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801243,   5,   -0.05) /* ManaRate */
     , (801243,  29,    1.25) /* WeaponDefense */
     , (801243,  39,     0.8) /* DefaultScale */
     , (801243, 136,     1.8) /* CriticalMultiplier */
     , (801243, 144,    0.35) /* ManaConversionMod */
     , (801243, 147,       1) /* CriticalFrequency */
     , (801243, 152,       3) /* ElementalDamageMod */
	 /* , (801243, 156,       1) /* ProcSpellRate */
     , (801243, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801243,   1, 'Crafted Vhorma Dark Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801243,   1,   33557297) /* Setup */
     , (801243,   3,  536870932) /* SoundTable */
     , (801243,   6,   67113783) /* PaletteBase */
     , (801243,   7,  268436324) /* ClothingBase */
     , (801243,   8,  100672520) /* Icon */
     , (801243,  22,  872415275) /* PhysicsEffectTable */
     , (801243,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (801243,  36,  234881046) /* MutateFilter */
	 , (801243,  52,  100689404) /* IconUnderlay */
	 /* , (801243,  55,       3936) /* ProcSpell - Fire Bomb */;

