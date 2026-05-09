DELETE FROM `weenie` WHERE `class_Id` = 800181;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800181, 'champion sword of asheron', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800181,   1,          1) /* ItemType - MeleeWeapon */
     , (800181,   3,          8) /* PaletteTemplate - Green */
     , (800181,   5,        450) /* EncumbranceVal */
     , (800181,   8,        180) /* Mass */
     , (800181,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800181,  16,          1) /* ItemUseable - No */
     , (800181,  18,          1) /* UiEffects - Magical */
     , (800181,  19,          0) /* Value */
     , (800181,  33,          1) /* Bonded - Bonded */
     , (800181,  44,        110) /* Damage */
     , (800181,  45,          16) /* DamageType - Slash, Pierce */
     , (800181,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800181,  47,          6) /* AttackType - Thrust, Slash */
     , (800181,  48,         45) /* WeaponSkill - LightWeapons */
     , (800181,  49,         40) /* WeaponTime */
     , (800181,  51,          1) /* CombatUse - Melee */
     , (800181,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800181, 106,        999) /* ItemSpellcraft */
     , (800181, 107,       1000) /* ItemCurMana */
     , (800181, 108,       1000) /* ItemMaxMana */
     , (800181, 109,        200) /* ItemDifficulty */
     , (800181, 114,          1) /* Attuned - Attuned */
     , (800181, 150,        103) /* HookPlacement - Hook */
     , (800181, 151,          2) /* HookType - Wall */
     , (800181, 158,          2) /* WieldRequirements - RawSkill */
     , (800181, 159,         45) /* WieldSkillType - LightWeapons */
     , (800181, 160,        325) /* WieldDifficulty */
     , (800181, 166,         19) /* SlayerCreatureType - Virindi */
     , (800181, 292,          2) /* Cleaving */
     , (800181, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800181,  22, True ) /* Inscribable */
     , (800181,  23, True ) /* DestroyOnSell */
     , (800181,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800181,   5,  -0.033) /* ManaRate */
     , (800181,  21,    0.51) /* WeaponLength */
     , (800181,  22,     0.3) /* DamageVariance */
     , (800181,  29,    1.27) /* WeaponDefense */
     , (800181,  39,       1) /* DefaultScale */
     , (800181,  62,    1.27) /* WeaponOffense */
     , (800181,  63,     1.2) /* DamageMod */
     , (800181, 136,     1.2) /* CriticalMultiplier */
     , (800181, 138,       2) /* SlayerDamageBonus */
     , (800181, 147,     0.3) /* CriticalFrequency */
     , (800181, 152,     1.2) /* ElementalDamageMod */
	 , (800181,  156,    0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800181,   1, 'Champion Sword of Asheron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800181,   1,   33557319) /* Setup */
     , (800181,   3,  536870932) /* SoundTable */
     , (800181,   6,   67111919) /* PaletteBase */
     , (800181,   7,  268436127) /* ClothingBase */
     , (800181,   8,  100672048) /* Icon */
     , (800181,  22,  872415275) /* PhysicsEffectTable */
     , (800181,  36,  234881044) /* MutateFilter */
	 , (800181,  55,       4423) /* ProcSpell - Flame Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800181,  1337,      2)  /* Strength Other VI */
     , (800181,  1592,      2)  /* Aura of Heart Seeker Self VI */
     , (800181,  1616,      2)  /* Aura of Blood Drinker Self VI */
     , (800181,  2583,      2)  /* Minor Strength */;
