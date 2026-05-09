DELETE FROM `weenie` WHERE `class_Id` = 800180;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800180, 'Champion Greatsword of Asheron', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800180,   1,          1) /* ItemType - MeleeWeapon */
     , (800180,   3,          8) /* PaletteTemplate - Green */
     , (800180,   5,        450) /* EncumbranceVal */
     , (800180,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800180,  16,          1) /* ItemUseable - No */
     , (800180,  18,          1) /* UiEffects - Magical */
     , (800180,  19,          0) /* Value */
     , (800180,  33,          1) /* Bonded - Bonded */
     , (800180,  44,         50) /* Damage */
     , (800180,  45,         16) /* DamageType - Slash */
     , (800180,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800180,  47,          4) /* AttackType - Slash */
     , (800180,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800180,  49,         40) /* WeaponTime */
     , (800180,  51,          5) /* CombatUse - TwoHanded */
     , (800180,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800180, 106,        999) /* ItemSpellcraft */
     , (800180, 107,       1000) /* ItemCurMana */
     , (800180, 108,       1000) /* ItemMaxMana */
     , (800180, 109,        200) /* ItemDifficulty */
     , (800180, 114,          1) /* Attuned - Attuned */
     , (800180, 158,          2) /* WieldRequirements - RawSkill */
     , (800180, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (800180, 160,        325) /* WieldDifficulty */
     , (800180, 166,         19) /* SlayerCreatureType - Virindi */
     , (800180, 292,          2) /* Cleaving */
     , (800180, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800180,  22, True ) /* Inscribable */
     , (800180,  23, True ) /* DestroyOnSell */
     , (800180,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800180,   5,  -0.033) /* ManaRate */
     , (800180,  21,    0.51) /* WeaponLength */
     , (800180,  22,     0.3) /* DamageVariance */
     , (800180,  29,    1.27) /* WeaponDefense */
     , (800180,  39,       1) /* DefaultScale */
     , (800180,  62,    1.27) /* WeaponOffense */
     , (800180,  63,     1.2) /* DamageMod */
     , (800180, 136,     1.2) /* CriticalMultiplier */
     , (800180, 138,       2) /* SlayerDamageBonus */
     , (800180, 147,     0.3) /* CriticalFrequency */
     , (800180, 152,     1.2) /* ElementalDamageMod */
	 , (800180,  156,    0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800180,   1, 'Champion Greatsword of Asheron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800180,   1,   33557319) /* Setup */
     , (800180,   3,  536870932) /* SoundTable */
     , (800180,   6,   67111919) /* PaletteBase */
     , (800180,   7,  268436127) /* ClothingBase */
     , (800180,   8,  100690838) /* Icon */
     , (800180,  22,  872415275) /* PhysicsEffectTable */
	 , (800180,  55,       4423) /* ProcSpell - Flame Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800180,  1337,      2)  /* Strength Other VI */
     , (800180,  1592,      2)  /* Aura of Heart Seeker Self VI */
     , (800180,  1616,      2)  /* Aura of Blood Drinker Self VI */
     , (800180,  2583,      1)  /* Minor Strength */;
