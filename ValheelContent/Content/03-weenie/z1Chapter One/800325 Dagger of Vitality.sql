DELETE FROM `weenie` WHERE `class_Id` = 800325;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800325, 'Dagger of Vitality', 6, '2022-05-17 03:47:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800325,   1,          1) /* ItemType - MeleeWeapon */
     , (800325,   3,          2) /* PaletteTemplate - Blue */
     , (800325,   5,        100) /* EncumbranceVal */
     , (800325,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800325,  16,          1) /* ItemUseable - No */
     , (800325,  18,          1) /* UiEffects - Magical */
     , (800325,  19,         20) /* Value */
     , (800325,  33,          1) /* Bonded - Bonded */
     , (800325,  44,         56) /* Damage */
     , (800325,  45,          2) /* DamageType - Pierce */
     , (800325,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800325,  47,          2) /* AttackType - Thrust */
     , (800325,  48,         45) /* WeaponSkill - LightWeapons */
     , (800325,  49,         20) /* WeaponTime */
     , (800325,  51,          1) /* CombatUse - Melee */
     , (800325,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800325, 106,        475) /* ItemSpellcraft */
     , (800325, 107,       2700) /* ItemCurMana */
     , (800325, 108,       2700) /* ItemMaxMana */
     , (800325, 114,          1) /* Attuned - Attuned */
     , (800325, 151,          2) /* HookType - Wall */
     , (800325, 158,          7) /* WieldRequirements - Skill */
     , (800325, 159,         45) /* WieldSkillType - LightWeapons */
     , (800325, 160,        200) /* WieldDifficulty */
	 , (800325, 179,          4) /* Imbued Effect - Armor Rend */
     , (800325, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800325,  11, True ) /* IgnoreCollisions */
     , (800325,  13, True ) /* Ethereal */
     , (800325,  14, True ) /* GravityStatus */
     , (800325,  15, True ) /* LightsStatus */
     , (800325,  19, True ) /* Attackable */
     , (800325,  22, True ) /* Inscribable */
     , (800325,  65, True ) /* IgnoreMagicResist */
     , (800325,  66, True ) /* IgnoreMagicArmor */
     , (800325,  69, False) /* IsSellable */
     , (800325,  85, True ) /* AppraisalHasAllowedWielder */
     , (800325,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800325,   5, -0.0500000007450581) /* ManaRate */
     , (800325,  21,       0) /* WeaponLength */
     , (800325,  22,     0.1) /* DamageVariance */
     , (800325,  26,       0) /* MaximumVelocity */
     , (800325,  29,    1.25) /* WeaponDefense */
     , (800325,  62,    1.25) /* WeaponOffense */
     , (800325,  63,       4) /* DamageMod */
     , (800325,  76,    0.65) /* Translucency */
     , (800325, 136,       1) /* CriticalMultiplier */
     , (800325, 155,       1) /* IgnoreArmor */
	 , (800325,  156,     .1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800325,   1, 'Dagger of Vitality') /* Name */
     , (800325,  16, 'A dagger that has a chance to heal you when it hits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800325,   1,   33560572) /* Setup */
     , (800325,   3,  536870932) /* SoundTable */
     , (800325,   7,  268436421) /* ClothingBase */
     , (800325,   8,  100673206) /* Icon */
     , (800325,  22,  872415275) /* PhysicsEffectTable */
     , (800325,  52,  100689896) /* IconUnderlay */
	 , (800325,  55,       1237) /* ProcSpell - Nether Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800325,  2096,      2)  /* Aura of Infected Caress */
     , (800325,  2101,      2)  /* Aura of Cragstone's Will */
     , (800325,  2106,      2)  /* Aura of Elysa's Sight */
     , (800325,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (800325,  2504,      2)  /* Major Light Weapon Aptitude */
     , (800325,  2579,      2)  /* Minor Coordination */
     , (800325,  2582,      2)  /* Minor Quickness */;
