DELETE FROM `weenie` WHERE `class_Id` = 800326;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800326, 'Bow of Vitality', 3, '2019-12-31 02:49:26') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800326,   1,        256) /* ItemType - MissileWeapon */
     , (800326,   5,        325) /* EncumbranceVal */
     , (800326,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800326,  16,          1) /* ItemUseable - No */
     , (800326,  18,          1) /* UiEffects - Magical */
     , (800326,  19,         20) /* Value */
     , (800326,  33,          1) /* Bonded - Bonded */
     , (800326,  44,         20) /* Damage */
     , (800326,  45,          0) /* DamageType - Pierce */
     , (800326,  46,         16) /* DefaultCombatStyle - Bow */
     , (800326,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800326,  49,         35) /* WeaponTime */
     , (800326,  50,          1) /* AmmoType - Arrow */
     , (800326,  51,          2) /* CombatUse - Missile */
     , (800326,  52,          2) /* ParentLocation - LeftHand */
     , (800326,  53,          3) /* PlacementPosition - LeftHand */
     , (800326,  60,        175) /* WeaponRange */
     , (800326,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800326, 106,        475) /* ItemSpellcraft */
     , (800326, 107,       1252) /* ItemCurMana */
     , (800326, 108,       2700) /* ItemMaxMana */
     , (800326, 114,          1) /* Attuned - Attuned */
     , (800326, 151,          2) /* HookType - Wall */
     , (800326, 158,          7) /* WieldRequirements - Level */
     , (800326, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800326, 160,        200) /* WieldDifficulty */
     , (800326, 179,          4) /* ImbuedEffect - ArmorRending */
     , (800326, 265,        138) /* EquipmentSetId - ParagonMissile */
     , (800326, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800326,  11, True ) /* IgnoreCollisions */
     , (800326,  13, True ) /* Ethereal */
     , (800326,  14, True ) /* GravityStatus */
     , (800326,  15, True ) /* LightsStatus */
     , (800326,  19, True ) /* Attackable */
     , (800326,  22, True ) /* Inscribable */
     , (800326,  65, True ) /* IgnoreMagicResist */
     , (800326,  66, True ) /* IgnoreMagicArmor */
     , (800326,  69, False) /* IsSellable */
     , (800326,  85, True ) /* AppraisalHasAllowedWielder */
     , (800326,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800326,   5, -0.0500000007450581) /* ManaRate */
     , (800326,  21,       0) /* WeaponLength */
     , (800326,  26,       50) /* MaximumVelocity */
     , (800326,  29,    1.15) /* WeaponDefense */
     , (800326,  62,    1.25) /* WeaponOffense */
     , (800326,  63,       4) /* DamageMod */
     , (800326,  76,    0.65) /* Translucency */
     , (800326, 136,       1) /* CriticalMultiplier */
     , (800326, 155,       1) /* IgnoreArmor */
     , (800326, 156,     0.1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800326,   1, 'Bow of Vitality') /* Name */
     , (800326,  16, 'A bow that has a chance to heal you when it hits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800326,   1,   33560579) /* Setup */
     , (800326,   3,  536870932) /* SoundTable */
     , (800326,   8,  100673205) /* Icon */
     , (800326,  22,  872415275) /* PhysicsEffectTable */
     , (800326,  52,  100689896) /* IconUnderlay */
     , (800326,  55,       1237) /* ProcSpell - Drain Health Other I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800326,  2096,      2)  /* Aura of Infected Caress */
     , (800326,  2101,      2)  /* Aura of Cragstone's Will */
     , (800326,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (800326,  2505,      2)  /* Major Missile Weapon Aptitude */
     , (800326,  2579,      2)  /* Minor Coordination */
     , (800326,  2582,      2)  /* Minor Quickness */;
