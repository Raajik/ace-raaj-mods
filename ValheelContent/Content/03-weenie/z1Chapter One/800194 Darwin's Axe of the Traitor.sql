DELETE FROM `weenie` WHERE `class_Id` = 800194;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800194, 'darwin''s traitor axe', 6, '2021-11-07 08:12:46') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800194,   1,          1) /* ItemType - MeleeWeapon */
     , (800194,   5,        220) /* EncumbranceVal */
     , (800194,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800194,  16,          1) /* ItemUseable - No */
     , (800194,  18,          1) /* UiEffects - Magical */
     , (800194,  19,         10) /* Value */
     , (800194,  33,          1) /* Bonded - Bonded */
     , (800194,  44,        180) /* Damage */
     , (800194,  45,          3) /* DamageType - Slash, Pierce */
     , (800194,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800194,  47,          6) /* AttackType - Thrust, Slash */
     , (800194,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800194,  49,         35) /* WeaponTime */
     , (800194,  51,          5) /* CombatUse - TwoHanded */
     , (800194,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800194, 106,        475) /* ItemSpellcraft */
     , (800194, 107,       2700) /* ItemCurMana */
     , (800194, 108,       2700) /* ItemMaxMana */
     , (800194, 114,          1) /* Attuned - Attuned */
     , (800194, 158,          2) /* WieldRequirements - RawSkill */
     , (800194, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (800194, 160,        400) /* WieldDifficulty */
     , (800194, 166,          5) /* SlayerCreatureType - Lugian */
     , (800194, 263,          1) /* ResistanceModifierType */
     , (800194, 292,          3) /* Cleaving */
     , (800194, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800194,  22, True ) /* Inscribable */
     , (800194,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800194,   5,   -0.05) /* ManaRate */
     , (800194,  21,       0) /* WeaponLength */
     , (800194,  22,    0.25) /* DamageVariance */
     , (800194,  26,       0) /* MaximumVelocity */
     , (800194,  29,     1.5) /* WeaponDefense */
     , (800194,  39,     1.8) /* DefaultScale */
     , (800194,  62,     1.5) /* WeaponOffense */
     , (800194,  63,    1.08) /* DamageMod */
     , (800194, 138,     3.5) /* SlayerDamageBonus */
     , (800194, 147,    0.15) /* CriticalFrequency */
     , (800194, 157,    1.67) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800194,   1, 'Darwin''s Axe of the Traitor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800194,   1,   33558379) /* Setup */
     , (800194,   3,  536870932) /* SoundTable */
     , (800194,   8,  100691239) /* Icon */
     , (800194,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800194,  2101,      2)  /* Aura of Cragstone's Will */
     , (800194,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (800194,  2576,      2)  /* Major Strength */
     , (800194,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (800194,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (800194,  5070,      2)  /* Major Two Handed Combat Aptitude */;
