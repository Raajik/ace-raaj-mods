DELETE FROM `weenie` WHERE `class_Id` = 800322;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800322, 'Great Sword of Vitality', 6, '2019-12-31 02:39:16') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800322,   1,          1) /* ItemType - MeleeWeapon */
     , (800322,   5,        220) /* EncumbranceVal */
     , (800322,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800322,  16,          1) /* ItemUseable - No */
     , (800322,  18,          1) /* UiEffects - Magical */
     , (800322,  19,         20) /* Value */
     , (800322,  33,          1) /* Bonded - Bonded */
     , (800322,  44,         85) /* Damage */
     , (800322,  45,          3) /* DamageType - Slash, Pierce */
     , (800322,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800322,  47,          6) /* AttackType - Thrust, Slash */
     , (800322,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800322,  49,         35) /* WeaponTime */
     , (800322,  51,          5) /* CombatUse - TwoHanded */
     , (800322,  53,        101) /* PlacementPosition - Resting */
     , (800322,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800322, 106,        475) /* ItemSpellcraft */
     , (800322, 107,       2156) /* ItemCurMana */
     , (800322, 108,       2700) /* ItemMaxMana */
     , (800322, 114,          1) /* Attuned - Normal */
     , (800322, 151,          2) /* HookType - Wall */
     , (800322, 158,          7) /* WieldRequirements - Skill */
     , (800322, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (800322, 160,        200) /* WieldDifficulty */
	 , (800322, 179,          4) /* Imbued Effect - Armor Rend */
     , (800322, 292,          2) /* Cleaving */
     , (800322, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800322,  11, True ) /* IgnoreCollisions */
     , (800322,  13, True ) /* Ethereal */
     , (800322,  14, True ) /* GravityStatus */
     , (800322,  15, True ) /* LightsStatus */
     , (800322,  19, True ) /* Attackable */
     , (800322,  22, True ) /* Inscribable */
     , (800322,  65, True ) /* IgnoreMagicResist */
     , (800322,  66, True ) /* IgnoreMagicArmor */
     , (800322,  69, False) /* IsSellable */
     , (800322,  85, True ) /* AppraisalHasAllowedWielder */
     , (800322,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800322,   5, -0.0500000007450581) /* ManaRate */
     , (800322,  21,       0) /* WeaponLength */
     , (800322,  22,     0.1) /* DamageVariance */
     , (800322,  26,       0) /* MaximumVelocity */
     , (800322,  29,    1.25) /* WeaponDefense */
     , (800322,  62,    1.25) /* WeaponOffense */
     , (800322,  63,     2.5) /* DamageMod */
     , (800322,  76,    0.65) /* Translucency */
     , (800322, 136,       1) /* CriticalMultiplier */
     , (800322, 155,       1) /* IgnoreArmor */
	 , (800322,  156,     .1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800322,   1, 'Great Sword of Vitality') /* Name */
     , (800322,  16, 'A great sword that has a chance to heal you when it hits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800322,   1,   33560577) /* Setup */
     , (800322,   3,  536870932) /* SoundTable */
     , (800322,   8,  100690858) /* Icon */
     , (800322,  22,  872415275) /* PhysicsEffectTable */
     , (800322,  52,  100689896) /* IconUnderlay */
	 , (800322,  55,       1237) /* ProcSpell - Nether Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800322,  2096,      2)  /* Aura of Infected Caress */
     , (800322,  2101,      2)  /* Aura of Cragstone's Will */
     , (800322,  2106,      2)  /* Aura of Elysa's Sight */
     , (800322,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (800322,  2579,      2)  /* Minor Coordination */
     , (800322,  2583,      2)  /* Minor Strength */
     , (800322,  5070,      2)  /* Major Two Handed Combat Aptitude */;
