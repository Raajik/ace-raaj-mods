DELETE FROM `weenie` WHERE `class_Id` = 800323;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800323, 'Sword of Vitality', 6, '2019-12-31 02:48:17') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800323,   1,          1) /* ItemType - MeleeWeapon */
     , (800323,   5,        220) /* EncumbranceVal */
     , (800323,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800323,  16,          1) /* ItemUseable - No */
     , (800323,  18,          1) /* UiEffects - Magical */
     , (800323,  19,         20) /* Value */
     , (800323,  33,          1) /* Bonded - Bonded */
     , (800323,  44,         85) /* Damage */
     , (800323,  45,          3) /* DamageType - Slash, Pierce */
     , (800323,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800323,  47,          6) /* AttackType - Thrust, Slash */
     , (800323,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800323,  49,          0) /* WeaponTime */
     , (800323,  51,          1) /* CombatUse - Melee */
     , (800323,  52,          1) /* ParentLocation - RightHand */
     , (800323,  53,          1) /* PlacementPosition - RightHandCombat */
     , (800323,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800323, 106,        475) /* ItemSpellcraft */
     , (800323, 107,       2633) /* ItemCurMana */
     , (800323, 108,       2700) /* ItemMaxMana */
     , (800323, 114,          1) /* Attuned - Attuned */
     , (800323, 151,          2) /* HookType - Wall */
     , (800323, 158,          7) /* WieldRequirements - Skill */
     , (800323, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (800323, 160,        200) /* WieldDifficulty */
	 , (800323, 179,          4) /* Imbued Effect - Armor Rend */
     , (800323, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800323,  11, True ) /* IgnoreCollisions */
     , (800323,  13, True ) /* Ethereal */
     , (800323,  14, True ) /* GravityStatus */
     , (800323,  15, True ) /* LightsStatus */
     , (800323,  19, True ) /* Attackable */
     , (800323,  22, True ) /* Inscribable */
     , (800323,  65, True ) /* IgnoreMagicResist */
     , (800323,  66, True ) /* IgnoreMagicArmor */
     , (800323,  69, False) /* IsSellable */
     , (800323,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800323,   5, -0.0500000007450581) /* ManaRate */
     , (800323,  21,       0) /* WeaponLength */
     , (800323,  22,     0.1) /* DamageVariance */
     , (800323,  26,       0) /* MaximumVelocity */
     , (800323,  29,    1.25) /* WeaponDefense */
     , (800323,  62,    1.25) /* WeaponOffense */
     , (800323,  63,       4) /* DamageMod */
     , (800323,  76,    0.65) /* Translucency */
     , (800323, 136,       1) /* CriticalMultiplier */
     , (800323, 155,       1) /* IgnoreArmor */
	 , (800323,  156,     .1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800323,   1, 'Sword of Vitality') /* Name */
     , (800323,  16, 'A sword that has a chance to heal you when it hits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800323,   1,   33560577) /* Setup */
     , (800323,   3,  536870932) /* SoundTable */
     , (800323,   8,  100673209) /* Icon */
     , (800323,  22,  872415275) /* PhysicsEffectTable */
     , (800323,  52,  100689896) /* IconUnderlay */
	 , (800323,  55,       1237) /* ProcSpell - Nether Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800323,  2096,      2)  /* Aura of Infected Caress */
     , (800323,  2101,      2)  /* Aura of Cragstone's Will */
     , (800323,  2106,      2)  /* Aura of Elysa's Sight */
     , (800323,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (800323,  2531,      2)  /* Major Heavy Weapon Aptitude */
     , (800323,  2579,      2)  /* Minor Coordination */
     , (800323,  2583,      2)  /* Minor Strength */;
