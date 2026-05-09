DELETE FROM `weenie` WHERE `class_Id` = 800352;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800352, 'Mayor''s Axe of Life Drain', 6, '2022-05-17 03:47:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800352,   1,          1) /* ItemType - MeleeWeapon */
     , (800352,   3,          2) /* PaletteTemplate - Blue */
     , (800352,   5,        275) /* EncumbranceVal */
     , (800352,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800352,  16,          1) /* ItemUseable - No */
     , (800352,  18,          1) /* UiEffects - Magical */
     , (800352,  19,         20) /* Value */
     , (800352,  33,          1) /* Bonded - Bonded */
     , (800352,  44,         30) /* Damage */
     , (800352,  45,          1) /* DamageType - Slash */
     , (800352,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800352,  47,          4) /* AttackType - Slash */
     , (800352,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800352,  49,         35) /* WeaponTime */
     , (800352,  51,          1) /* CombatUse - Melee */
     , (800352,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800352, 106,        475) /* ItemSpellcraft */
     , (800352, 107,       2700) /* ItemCurMana */
     , (800352, 108,       2700) /* ItemMaxMana */
     , (800352, 114,          1) /* Attuned - Attuned */
     , (800352, 151,          2) /* HookType - Wall */
     , (800352, 158,          2) /* WieldRequirements - Skill */
     , (800352, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (800352, 160,        200) /* WieldDifficulty */
	 , (800352, 179,          4) /* Imbued Effect - Armor Rend */
     , (800352, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800352,  11, True ) /* IgnoreCollisions */
     , (800352,  13, True ) /* Ethereal */
     , (800352,  14, True ) /* GravityStatus */
     , (800352,  15, True ) /* LightsStatus */
     , (800352,  19, True ) /* Attackable */
     , (800352,  22, True ) /* Inscribable */
     , (800352,  65, True ) /* IgnoreMagicResist */
     , (800352,  66, True ) /* IgnoreMagicArmor */
     , (800352,  69, False) /* IsSellable */
     , (800352,  85, True ) /* AppraisalHasAllowedWielder */
     , (800352,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800352,   5, -0.0500000007450581) /* ManaRate */
     , (800352,  21,       0) /* WeaponLength */
     , (800352,  22,     0.1) /* DamageVariance */
     , (800352,  26,       0) /* MaximumVelocity */
     , (800352,  29,     0.8) /* WeaponDefense */
     , (800352,  62,       1) /* WeaponOffense */
     , (800352,  63,       3) /* DamageMod */
     , (800352,  76,     0.9) /* Translucency */
     , (800352, 136,     1.3) /* CriticalMultiplier */
     , (800352, 155,       1) /* IgnoreArmor */
	 , (800352,  156,     .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800352,   1, 'Mayor''s Axe of Life Drain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800352,   1,   33560570) /* Setup */
     , (800352,   3,  536870932) /* SoundTable */
     , (800352,   7,  268436419) /* ClothingBase */
     , (800352,   8,  100673204) /* Icon */
     , (800352,  22,  872415275) /* PhysicsEffectTable */
     , (800352,  52,  100689896) /* IconUnderlay */
	 , (800352,  55,       1241) /* ProcSpell - Health Drain V */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800352,  2096,      2)  /* Aura of Infected Caress */
     , (800352,  2101,      2)  /* Aura of Cragstone's Will */
     , (800352,  2106,      2)  /* Aura of Elysa's Sight */
     , (800352,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (800352,  2509,      2)  /* Major Finesse Weapon Aptitude */
     , (800352,  2579,      2)  /* Minor Coordination */
     , (800352,  2583,      2)  /* Minor Strength */;
