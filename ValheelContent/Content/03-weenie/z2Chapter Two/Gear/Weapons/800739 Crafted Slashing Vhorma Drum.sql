DELETE FROM `weenie` WHERE `class_Id` = 800739;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800739, 'Crafted Slashing Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800739,   1,      32768) /* ItemType - Caster */
     , (800739,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800739,   5,         50) /* EncumbranceVal */
     , (800739,   9,   16777216) /* ValidLocations - Held */
     , (800739,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800739,  18,         1024) /* UiEffects - Magical */
     , (800739,  19,          1) /* Value */
     , (800739,  33,          1) /* Bonded - Slippery */
     , (800739,  45,         1) /* DamageType - Acid */
     , (800739,  46,        512) /* DefaultCombatStyle - Magic */
     , (800739,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800739,  94,         16) /* TargetType - Creature */
     , (800739, 106,        999) /* ItemSpellcraft */
     , (800739, 107,       2700) /* ItemCurMana */
     , (800739, 108,       2700) /* ItemMaxMana */
     , (800739, 114,          1) /* Attuned - Attuned */
     , (800739, 158,          7) /* WieldRequirements - Level */
     , (800739, 159,          1) /* WieldSkillType - Axe */
     , (800739, 160,        325) /* WieldDifficulty */
	 , (800739, 179,        8) /* Imbued Effect - Acid Rend */
     , (800739, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800739,  22, True ) /* Inscribable */
     , (800739,  65, True ) /* IgnoreMagicResist */
     , (800739,  66, True ) /* IgnoreMagicArmor */
     , (800739,  69, False) /* IsSellable */
     , (800739,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800739,   5,   -0.05) /* ManaRate */
     , (800739,  29,    1.30) /* WeaponDefense */
     , (800739,  39,     0.8) /* DefaultScale */
     , (800739, 136,     1.1) /* CriticalMultiplier */
     , (800739, 144,    0.35) /* ManaConversionMod */
     , (800739, 147,     0.3) /* CriticalFrequency */
     , (800739, 152,     1.5) /* ElementalDamageMod */
	 , (800739, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800739,   1, 'Crafted Slashing Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800739,   1,   33557297) /* Setup */
     , (800739,   3,  536870932) /* SoundTable */
     , (800739,   6,   67113783) /* PaletteBase */
     , (800739,   7,  268436324) /* ClothingBase */
     , (800739,   8,  100672520) /* Icon */
     , (800739,  22,  872415275) /* PhysicsEffectTable */
     , (800739,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800739,  36,  234881046) /* MutateFilter */
	 , (800739,  52,  100689404) /* IconUnderlay */
	 , (800739,  55,       4457) /* ProcSpell - Fire Bomb */;

