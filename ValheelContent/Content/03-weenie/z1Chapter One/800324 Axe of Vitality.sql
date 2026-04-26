DELETE FROM `weenie` WHERE `class_Id` = 800324;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800324, 'Axe of Vitality', 6, '2022-05-17 03:47:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800324,   1,          1) /* ItemType - MeleeWeapon */
     , (800324,   3,          2) /* PaletteTemplate - Blue */
     , (800324,   5,        275) /* EncumbranceVal */
     , (800324,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800324,  16,          1) /* ItemUseable - No */
     , (800324,  18,          1) /* UiEffects - Magical */
     , (800324,  19,         20) /* Value */
     , (800324,  33,          1) /* Bonded - Bonded */
     , (800324,  44,         55) /* Damage */
     , (800324,  45,          1) /* DamageType - Slash */
     , (800324,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800324,  47,          4) /* AttackType - Slash */
     , (800324,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800324,  49,         35) /* WeaponTime */
     , (800324,  51,          1) /* CombatUse - Melee */
     , (800324,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800324, 106,        475) /* ItemSpellcraft */
     , (800324, 107,       2700) /* ItemCurMana */
     , (800324, 108,       2700) /* ItemMaxMana */
     , (800324, 114,          1) /* Attuned - Attuned */
     , (800324, 151,          2) /* HookType - Wall */
     , (800324, 158,          7) /* WieldRequirements - Skill */
     , (800324, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (800324, 160,        200) /* WieldDifficulty */
	 , (800324, 179,          4) /* Imbued Effect - Armor Rend */
     , (800324, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800324,  11, True ) /* IgnoreCollisions */
     , (800324,  13, True ) /* Ethereal */
     , (800324,  14, True ) /* GravityStatus */
     , (800324,  15, True ) /* LightsStatus */
     , (800324,  19, True ) /* Attackable */
     , (800324,  22, True ) /* Inscribable */
     , (800324,  65, True ) /* IgnoreMagicResist */
     , (800324,  66, True ) /* IgnoreMagicArmor */
     , (800324,  69, False) /* IsSellable */
     , (800324,  85, True ) /* AppraisalHasAllowedWielder */
     , (800324,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800324,   5, -0.0500000007450581) /* ManaRate */
     , (800324,  21,       0) /* WeaponLength */
     , (800324,  22,     0.1) /* DamageVariance */
     , (800324,  26,       0) /* MaximumVelocity */
     , (800324,  29,    1.25) /* WeaponDefense */
     , (800324,  62,    1.25) /* WeaponOffense */
     , (800324,  63,       4) /* DamageMod */
     , (800324,  76,    0.65) /* Translucency */
     , (800324, 136,       1) /* CriticalMultiplier */
     , (800324, 155,       1) /* IgnoreArmor */
	 , (800324,  156,     .1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800324,   1, 'Axe of Vitality') /* Name */
     , (800324,  16, 'An axe that has a chance to heal you when it hits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800324,   1,   33560570) /* Setup */
     , (800324,   3,  536870932) /* SoundTable */
     , (800324,   7,  268436419) /* ClothingBase */
     , (800324,   8,  100673204) /* Icon */
     , (800324,  22,  872415275) /* PhysicsEffectTable */
     , (800324,  52,  100689896) /* IconUnderlay */
	 , (800324,  55,       1237) /* ProcSpell - Nether Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800324,  2096,      2)  /* Aura of Infected Caress */
     , (800324,  2101,      2)  /* Aura of Cragstone's Will */
     , (800324,  2106,      2)  /* Aura of Elysa's Sight */
     , (800324,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (800324,  2509,      2)  /* Major Finesse Weapon Aptitude */
     , (800324,  2579,      2)  /* Minor Coordination */
     , (800324,  2583,      2)  /* Minor Strength */;
