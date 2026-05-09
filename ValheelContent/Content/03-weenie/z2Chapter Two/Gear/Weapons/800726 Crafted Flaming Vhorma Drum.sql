DELETE FROM `weenie` WHERE `class_Id` = 800726;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800726, 'Crafted Flaming Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800726,   1,      32768) /* ItemType - Caster */
     , (800726,   3,         39) /* PaletteTemplate - Black */
     , (800726,   5,         50) /* EncumbranceVal */
     , (800726,   9,   16777216) /* ValidLocations - Held */
     , (800726,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800726,  18,         32) /* UiEffects - Fire */
     , (800726,  19,          1) /* Value */
     , (800726,  33,          1) /* Bonded - Bonded */
     , (800726,  45,         16) /* DamageType - Fire */
     , (800726,  46,        512) /* DefaultCombatStyle - Magic */
     , (800726,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800726,  94,         16) /* TargetType - Creature */
     , (800726, 106,        999) /* ItemSpellcraft */
     , (800726, 107,       2700) /* ItemCurMana */
     , (800726, 108,       2700) /* ItemMaxMana */
     , (800726, 114,          1) /* Attuned - Attuned */
     , (800726, 158,          7) /* WieldRequirements - Level */
     , (800726, 159,          1) /* WieldSkillType - Axe */
     , (800726, 160,        325) /* WieldDifficulty */
     , (800726, 179,        512) /* ImbuedEffect - FireRending */
     , (800726, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800726,  22, True ) /* Inscribable */
     , (800726,  65, True ) /* IgnoreMagicResist */
     , (800726,  66, True ) /* IgnoreMagicArmor */
     , (800726,  69, False) /* IsSellable */
     , (800726,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800726,   5,   -0.05) /* ManaRate */
     , (800726,  29,    1.30) /* WeaponDefense */
     , (800726,  39,     0.8) /* DefaultScale */
     , (800726, 136,     1.1) /* CriticalMultiplier */
     , (800726, 144,    0.35) /* ManaConversionMod */
     , (800726, 147,     0.3) /* CriticalFrequency */
     , (800726, 152,     1.5) /* ElementalDamageMod */
	 , (800726, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800726,   1, 'Crafted Flaming Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800726,   1,   33557297) /* Setup */
     , (800726,   3,  536870932) /* SoundTable */
     , (800726,   6,   67113783) /* PaletteBase */
     , (800726,   7,  268436324) /* ClothingBase */
     , (800726,   8,  100672520) /* Icon */
     , (800726,  22,  872415275) /* PhysicsEffectTable */
     , (800726,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800726,  36,  234881046) /* MutateFilter */
     , (800726,  52,  100689404) /* IconUnderlay */
     , (800726,  55,       4439) /* ProcSpell - Fire Bomb */;
