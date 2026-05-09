DELETE FROM `weenie` WHERE `class_Id` = 800740;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800740, 'Crafted Piercing Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800740,   1,      32768) /* ItemType - Caster */
     , (800740,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800740,   5,         50) /* EncumbranceVal */
     , (800740,   9,   16777216) /* ValidLocations - Held */
     , (800740,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800740,  18,         2048) /* UiEffects - Magical */
     , (800740,  19,          1) /* Value */
     , (800740,  33,          1) /* Bonded - Slippery */
     , (800740,  45,         2) /* DamageType - Acid */
     , (800740,  46,        512) /* DefaultCombatStyle - Magic */
     , (800740,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800740,  94,         16) /* TargetType - Creature */
     , (800740, 106,        999) /* ItemSpellcraft */
     , (800740, 107,       2700) /* ItemCurMana */
     , (800740, 108,       2700) /* ItemMaxMana */
     , (800740, 114,          1) /* Attuned - Attuned */
     , (800740, 158,          7) /* WieldRequirements - Level */
     , (800740, 159,          1) /* WieldSkillType - Axe */
     , (800740, 160,        325) /* WieldDifficulty */
	 , (800740, 179,        16) /* Imbued Effect - Acid Rend */
     , (800740, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800740,  22, True ) /* Inscribable */
     , (800740,  65, True ) /* IgnoreMagicResist */
     , (800740,  66, True ) /* IgnoreMagicArmor */
     , (800740,  69, False) /* IsSellable */
     , (800740,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800740,   5,   -0.05) /* ManaRate */
     , (800740,  29,    1.30) /* WeaponDefense */
     , (800740,  39,     0.8) /* DefaultScale */
     , (800740, 136,     1.1) /* CriticalMultiplier */
     , (800740, 144,    0.35) /* ManaConversionMod */
     , (800740, 147,     0.3) /* CriticalFrequency */
     , (800740, 152,     1.5) /* ElementalDamageMod */
	 , (800740, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800740,   1, 'Crafted Piercing Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800740,   1,   33557297) /* Setup */
     , (800740,   3,  536870932) /* SoundTable */
     , (800740,   6,   67113783) /* PaletteBase */
     , (800740,   7,  268436324) /* ClothingBase */
     , (800740,   8,  100672520) /* Icon */
     , (800740,  22,  872415275) /* PhysicsEffectTable */
     , (800740,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800740,  36,  234881046) /* MutateFilter */
	 , (800740,  52,  100689404) /* IconUnderlay */
	 , (800740,  55,       4443) /* ProcSpell - Fire Bomb */;

