DELETE FROM `weenie` WHERE `class_Id` = 800183;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800183, 'champion bow of asheron', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800183,   1,        256) /* ItemType - MissileWeapon */
     , (800183,   3,          8) /* PaletteTemplate - Green */
     , (800183,   5,        980) /* EncumbranceVal */
     , (800183,   8,        140) /* Mass */
     , (800183,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800183,  16,          1) /* ItemUseable - No */
     , (800183,  18,          1) /* UiEffects - Magical */
     , (800183,  19,          0) /* Value */
     , (800183,  33,          1) /* Bonded - Bonded */
     , (800183,  44,         65) /* Damage */
     , (800183,  45,         16) /* DamageType - Slash */
     , (800183,  46,         16) /* DefaultCombatStyle - Bow */
     , (800183,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800183,  49,         50) /* WeaponTime */
     , (800183,  50,          1) /* AmmoType - Arrow */
     , (800183,  51,          2) /* CombatUse - Missile */
     , (800183,  52,          2) /* ParentLocation - LeftHand */
     , (800183,  53,          3) /* PlacementPosition - LeftHand */
     , (800183,  60,        192) /* WeaponRange */
     , (800183,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800183, 106,        999) /* ItemSpellcraft */
     , (800183, 107,       1000) /* ItemCurMana */
     , (800183, 108,       1000) /* ItemMaxMana */
     , (800183, 109,        200) /* ItemDifficulty */
     , (800183, 114,          1) /* Attuned - Attuned */
     , (800183, 158,          2) /* WieldRequirements - RawSkill */
     , (800183, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800183, 160,        290) /* WieldDifficulty */
     , (800183, 166,         19) /* SlayerCreatureType - Virindi */
     , (800183, 204,         15) /* ElementalDamageBonus */
     , (800183, 292,          2) /* Cleaving */
     , (800183, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800183,  22, True ) /* Inscribable */
     , (800183,  23, True ) /* DestroyOnSell */
     , (800183,  84, True ) /* IgnoreCloIcons */
     , (800183,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800183,   5,  -0.033) /* ManaRate */
     , (800183,  21,       0) /* WeaponLength */
     , (800183,  22,       0) /* DamageVariance */
     , (800183,  26,    27.3) /* MaximumVelocity */
     , (800183,  29,    1.27) /* WeaponDefense */
     , (800183,  39,       1) /* DefaultScale */
     , (800183,  62,    1.27) /* WeaponOffense */
     , (800183,  63,     1.3) /* DamageMod */
     , (800183, 136,     1.2) /* CriticalMultiplier */
     , (800183, 138,     2.2) /* SlayerDamageBonus */
     , (800183, 147,     0.3) /* CriticalFrequency */
     , (800183, 152,     1.3) /* ElementalDamageMod */
	 , (800183,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800183,   1, 'Champion Bow of Asheron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800183,   1,   33557312) /* Setup */
     , (800183,   3,  536870932) /* SoundTable */
     , (800183,   6,   67111919) /* PaletteBase */
     , (800183,   7,  268436238) /* ClothingBase */
     , (800183,   8,  100672042) /* Icon */
     , (800183,  22,  872415275) /* PhysicsEffectTable */
	 , (800183,  55,       4423) /* ProcSpell - Flame Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800183,  1384,      2)  /* Coordination Other VI */
     , (800183,  1605,      2)  /* Aura of Defender Self VI */
     , (800183,  1616,      2)  /* Aura of Blood Drinker Self VI */
     , (800183,  2579,      2)  /* Minor Coordination */;
