DELETE FROM `weenie` WHERE `class_Id` = 800738;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800738, 'Crafted Blunt Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800738,   1,      32768) /* ItemType - Caster */
     , (800738,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800738,   5,         50) /* EncumbranceVal */
     , (800738,   9,   16777216) /* ValidLocations - Held */
     , (800738,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800738,  18,         512) /* UiEffects - Magical */
     , (800738,  19,          1) /* Value */
     , (800738,  33,          1) /* Bonded - Slippery */
     , (800738,  45,         4) /* DamageType - Acid */
     , (800738,  46,        512) /* DefaultCombatStyle - Magic */
     , (800738,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800738,  94,         16) /* TargetType - Creature */
     , (800738, 106,        999) /* ItemSpellcraft */
     , (800738, 107,       2700) /* ItemCurMana */
     , (800738, 108,       2700) /* ItemMaxMana */
     , (800738, 114,          1) /* Attuned - Attuned */
     , (800738, 158,          7) /* WieldRequirements - Level */
     , (800738, 159,          1) /* WieldSkillType - Axe */
     , (800738, 160,        325) /* WieldDifficulty */
	 , (800738, 179,        32) /* Imbued Effect - Acid Rend */
     , (800738, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800738,  22, True ) /* Inscribable */
     , (800738,  65, True ) /* IgnoreMagicResist */
     , (800738,  66, True ) /* IgnoreMagicArmor */
     , (800738,  69, False) /* IsSellable */
     , (800738,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800738,   5,   -0.05) /* ManaRate */
     , (800738,  29,    1.30) /* WeaponDefense */
     , (800738,  39,     0.8) /* DefaultScale */
     , (800738, 136,     1.1) /* CriticalMultiplier */
     , (800738, 144,    0.35) /* ManaConversionMod */
     , (800738, 147,     0.3) /* CriticalFrequency */
     , (800738, 152,     1.5) /* ElementalDamageMod */
	 , (800738, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800738,   1, 'Crafted Blunt Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800738,   1,   33557297) /* Setup */
     , (800738,   3,  536870932) /* SoundTable */
     , (800738,   6,   67113783) /* PaletteBase */
     , (800738,   7,  268436324) /* ClothingBase */
     , (800738,   8,  100672520) /* Icon */
     , (800738,  22,  872415275) /* PhysicsEffectTable */
     , (800738,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800738,  36,  234881046) /* MutateFilter */
	 , (800738,  52,  100689404) /* IconUnderlay */
	 , (800738,  55,       4455) /* ProcSpell - Fire Bomb */;

