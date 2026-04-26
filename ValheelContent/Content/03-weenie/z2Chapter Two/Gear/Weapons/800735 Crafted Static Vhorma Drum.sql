DELETE FROM `weenie` WHERE `class_Id` = 800735;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800735, 'Crafted Static Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800735,   1,      32768) /* ItemType - Caster */
     , (800735,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800735,   5,         50) /* EncumbranceVal */
     , (800735,   9,   16777216) /* ValidLocations - Held */
     , (800735,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800735,  18,         64) /* UiEffects - Magical */
     , (800735,  19,          1) /* Value */
     , (800735,  33,          1) /* Bonded - Slippery */
     , (800735,  45,         64) /* DamageType - Fire */
     , (800735,  46,        512) /* DefaultCombatStyle - Magic */
     , (800735,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800735,  94,         16) /* TargetType - Creature */
     , (800735, 106,        999) /* ItemSpellcraft */
     , (800735, 107,       2700) /* ItemCurMana */
     , (800735, 108,       2700) /* ItemMaxMana */
     , (800735, 114,          1) /* Attuned - Attuned */
     , (800735, 158,          7) /* WieldRequirements - Level */
     , (800735, 159,          1) /* WieldSkillType - Axe */
     , (800735, 160,        325) /* WieldDifficulty */
	 , (800735, 179,        256) /* Imbued Effect - Fire Rend */
     , (800735, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800735,  22, True ) /* Inscribable */
     , (800735,  65, True ) /* IgnoreMagicResist */
     , (800735,  66, True ) /* IgnoreMagicArmor */
     , (800735,  69, False) /* IsSellable */
     , (800735,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800735,   5,   -0.05) /* ManaRate */
     , (800735,  29,    1.30) /* WeaponDefense */
     , (800735,  39,     0.8) /* DefaultScale */
     , (800735, 136,     1.1) /* CriticalMultiplier */
     , (800735, 144,    0.35) /* ManaConversionMod */
     , (800735, 147,     0.3) /* CriticalFrequency */
     , (800735, 152,     1.5) /* ElementalDamageMod */
	 , (800735, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800735,   1, 'Crafted Static Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800735,   1,   33557297) /* Setup */
     , (800735,   3,  536870932) /* SoundTable */
     , (800735,   6,   67113783) /* PaletteBase */
     , (800735,   7,  268436324) /* ClothingBase */
     , (800735,   8,  100672520) /* Icon */
     , (800735,  22,  872415275) /* PhysicsEffectTable */
     , (800735,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800735,  36,  234881046) /* MutateFilter */
	 , (800735,  52,  100689404) /* IconUnderlay */
	 , (800735,  55,       4451) /* ProcSpell - Fire Bomb */;

