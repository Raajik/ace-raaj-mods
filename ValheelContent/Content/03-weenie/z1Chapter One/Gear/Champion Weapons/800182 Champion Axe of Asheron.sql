DELETE FROM `weenie` WHERE `class_Id` = 800182;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800182, 'champion axe of asheron', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800182,   1,          1) /* ItemType - MeleeWeapon */
     , (800182,   3,          8) /* PaletteTemplate - Green */
     , (800182,   5,        800) /* EncumbranceVal */
     , (800182,   8,        320) /* Mass */
     , (800182,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800182,  16,          1) /* ItemUseable - No */
     , (800182,  18,          1) /* UiEffects - Magical */
     , (800182,  19,          0) /* Value */
     , (800182,  33,          1) /* Bonded - Bonded */
     , (800182,  44,        120) /* Damage */
     , (800182,  45,         16) /* DamageType - Slash */
     , (800182,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800182,  47,          4) /* AttackType - Slash */
     , (800182,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800182,  49,         60) /* WeaponTime */
     , (800182,  51,          1) /* CombatUse - Melee */
     , (800182,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800182, 106,        999) /* ItemSpellcraft */
     , (800182, 107,       1000) /* ItemCurMana */
     , (800182, 108,       1000) /* ItemMaxMana */
     , (800182, 109,        200) /* ItemDifficulty */
     , (800182, 114,          1) /* Attuned - Attuned */
     , (800182, 158,          2) /* WieldRequirements - RawSkill */
     , (800182, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (800182, 160,        325) /* WieldDifficulty */
     , (800182, 166,         19) /* SlayerCreatureType - Virindi */
     , (800182, 292,          2) /* Cleaving */
     , (800182, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800182,  22, True ) /* Inscribable */
     , (800182,  23, True ) /* DestroyOnSell */
     , (800182,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800182,   5,  -0.033) /* ManaRate */
     , (800182,  21,    0.51) /* WeaponLength */
     , (800182,  22,     0.3) /* DamageVariance */
     , (800182,  29,    1.27) /* WeaponDefense */
     , (800182,  39,       1) /* DefaultScale */
     , (800182,  62,    1.27) /* WeaponOffense */
     , (800182,  63,     1.2) /* DamageMod */
     , (800182, 136,     1.2) /* CriticalMultiplier */
     , (800182, 138,       2) /* SlayerDamageBonus */
     , (800182, 147,     0.3) /* CriticalFrequency */
     , (800182, 152,     1.2) /* ElementalDamageMod */
	 , (800182,  156,    0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800182,   1, 'Champion Axe of Asheron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800182,   1,   33557311) /* Setup */
     , (800182,   3,  536870932) /* SoundTable */
     , (800182,   6,   67111919) /* PaletteBase */
     , (800182,   7,  268436125) /* ClothingBase */
     , (800182,   8,  100672041) /* Icon */
     , (800182,  19,         88) /* ActivationAnimation */
     , (800182,  22,  872415275) /* PhysicsEffectTable */
     , (800182,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800182,  36,  234881044) /* MutateFilter */
	 , (800182,  55,       4423) /* ProcSpell - Flame Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800182,  1337,      2)  /* Strength Other VI */
     , (800182,  1592,      2)  /* Aura of Heart Seeker Self VI */
     , (800182,  1616,      2)  /* Aura of Blood Drinker Self VI */
     , (800182,  2583,      2)  /* Minor Strength */;
