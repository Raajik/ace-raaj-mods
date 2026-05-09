DELETE FROM `weenie` WHERE `class_Id` = 802322;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802322, 'Sword of Mind Control', 6, '2019-12-31 02:39:16') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802322,   1,          1) /* ItemType - MeleeWeapon */
     , (802322,   5,        220) /* EncumbranceVal */
     , (802322,   9,   33554432) /* ValidLocations - TwoHanded */
     , (802322,  16,          1) /* ItemUseable - No */
     , (802322,  18,          1) /* UiEffects - Magical */
     , (802322,  19,         20) /* Value */
     , (802322,  33,          1) /* Bonded - Bonded */
     , (802322,  44,        150) /* Damage */
     , (802322,  45,          3) /* DamageType - Slash, Pierce */
     , (802322,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (802322,  47,          6) /* AttackType - Thrust, Slash */
     , (802322,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (802322,  49,         35) /* WeaponTime */
     , (802322,  51,          5) /* CombatUse - TwoHanded */
     , (802322,  53,        101) /* PlacementPosition - Resting */
     , (802322,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802322, 106,        475) /* ItemSpellcraft */
     , (802322, 107,       2156) /* ItemCurMana */
     , (802322, 108,       2700) /* ItemMaxMana */
     , (802322, 114,          1) /* Attuned - Normal */
     , (802322, 151,          2) /* HookType - Wall */
     , (802322, 158,          7) /* WieldRequirements - Skill */
     , (802322, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (802322, 160,        200) /* WieldDifficulty */
	 , (802322, 179,          4) /* Imbued Effect - Armor Rend */
     , (802322, 292,          3) /* Cleaving */
     , (802322, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802322,  11, True ) /* IgnoreCollisions */
     , (802322,  13, True ) /* Ethereal */
     , (802322,  14, True ) /* GravityStatus */
     , (802322,  15, True ) /* LightsStatus */
     , (802322,  19, True ) /* Attackable */
     , (802322,  22, True ) /* Inscribable */
     , (802322,  65, True ) /* IgnoreMagicResist */
     , (802322,  66, True ) /* IgnoreMagicArmor */
     , (802322,  69, False) /* IsSellable */
     , (802322,  85, True ) /* AppraisalHasAllowedWielder */
     , (802322,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802322,   5, -0.0500000007450581) /* ManaRate */
     , (802322,  21,       0) /* WeaponLength */
     , (802322,  22,     0.1) /* DamageVariance */
     , (802322,  26,       0) /* MaximumVelocity */
     , (802322,  29,    1.25) /* WeaponDefense */
     , (802322,  39,     1.5) /* DefaultScale */
     , (802322,  62,    1.25) /* WeaponOffense */
     , (802322,  63,     2.5) /* DamageMod */
     , (802322,  76,    0.65) /* Translucency */
     , (802322, 136,       1) /* CriticalMultiplier */
     , (802322, 155,       1) /* IgnoreArmor */
	 , (802322,  156,     .1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802322,   1, 'Sword of Mind Control') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802322,   1,   33560577) /* Setup */
     , (802322,   3,  536870932) /* SoundTable */
     , (802322,   8,  100690858) /* Icon */
     , (802322,  22,  872415275) /* PhysicsEffectTable */
     , (802322,  52,  100689896) /* IconUnderlay */
	 , (802322,  55,       4643) /* ProcSpell - Nether Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802322,  3688,      2)  /* Prodigal Blood Drinker */
     , (802322,  3735,      2)  /* Prodigal Spirit Drinker */
     , (802322,  3739,      2)  /* Prodigal Swift Killer */;
