DELETE FROM `weenie` WHERE `class_Id` = 803198;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803198, 'Perfect Ascended Assassins Whisper', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803198,   1,        256) /* ItemType - MissileWeapon */
     , (803198,   3,          4) /* PaletteTemplate - Brown */
     , (803198,   5,        900) /* EncumbranceVal */
     , (803198,   8,         90) /* Mass */
     , (803198,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803198,  16,          1) /* ItemUseable - No */
     , (803198,  18,          0) /* UiEffects - Piercing */
     , (803198,  19,    3500000) /* Value */
     , (803198,  33,          1) /* Bonded - Bonded */
     , (803198,  44,          0) /* Damage */
     , (803198,  45,       1024) /* DamageType - Pierce */
     , (803198,  46,         32) /* DefaultCombatStyle - Bow */
     , (803198,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803198,  49,         70) /* WeaponTime */
     , (803198,  50,          2) /* AmmoType - Arrow */
     , (803198,  51,          2) /* CombatUse - Missile */
     , (803198,  52,          2) /* ParentLocation - LeftHand */
     , (803198,  53,          3) /* PlacementPosition - LeftHand */
     , (803198,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803198, 106,        999) /* ItemSpellcraft */
     , (803198, 107,       3200) /* ItemCurMana */
     , (803198, 108,       3200) /* ItemMaxMana */
     , (803198, 109,          0) /* ItemDifficulty */
     , (803198, 114,          1) /* Attuned - Attuned */
     , (803198, 151,          2) /* HookType - Wall */
	 , (803198, 158,          7) /* WieldRequirements - Level */
     , (803198, 160,       8000) /* WieldDifficulty */
     , (803198, 169,  118162702) /* TsysMutationData */
     , (803198, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803198, 204,          50) /* ElementalDamageBonus */
     , (803198, 292,          3) /* Cleaving */
     , (803198, 353,          8) /* WeaponType - Bow */
	 , (803198, 370,         185) /* Damage */
	 , (803198, 371,         185) /* Damage Resist */
	 , (803198, 374,         185) /* Critical Damage */
	 , (803198, 375,         185) /* Critical Damage Resist */
	 , (803198, 376,         185) /* Heal Boost */
	 , (803198, 379,         185) /* Vitality */
	 , (803198, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803198,  11, True ) /* IgnoreCollisions */
     , (803198,  13, True ) /* Ethereal */
     , (803198,  14, True ) /* GravityStatus */
     , (803198,  15, True ) /* LightsStatus */
     , (803198,  19, True ) /* Attackable */
     , (803198,  22, True ) /* Inscribable */
     , (803198,  65, True ) /* IgnoreMagicResist */
     , (803198,  66, True ) /* IgnoreMagicArmor */
     , (803198,  91, False) /* Retained */
     , (803198, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803198,   5,  -0.033) /* ManaRate */
     , (803198,  12,    0.66) /* Shade */
     , (803198,  21,       0) /* WeaponLength */
     , (803198,  22,       0) /* DamageVariance */
     , (803198,  26,    27.3) /* MaximumVelocity */
     , (803198,  29,    1.50) /* WeaponDefense */
     , (803198,  39,     1.3) /* DefaultScale */
     , (803198,  62,    1.50) /* WeaponOffense */
     , (803198,  63,       3) /* DamageMod */
     , (803198, 110,    1.67) /* BulkMod */
     , (803198, 111,    0.15) /* SizeMod */
     , (803198, 136,   0.001) /* CriticalMultiplier */
     , (803198, 147,    0.10) /* CriticalFrequency */
     , (803198, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803198,   1, 'Perfect Ascended Assassin''s Whisper') /* Name */
     , (803198,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803198,   1,   33559373) /* Setup */
     , (803198,   3,  536870932) /* SoundTable */
     , (803198,   6,   67111919) /* PaletteBase */
     , (803198,   8,  100686729) /* Icon */
     , (803198,  22,  872415275) /* PhysicsEffectTable */
     , (803198,  36,  234881042) /* MutateFilter */
     , (803198,  46,  939524146) /* TsysMutationFilter */
     , (803198,  52,  100676442) /* IconUnderlay */
	 , (803198,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803198,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803198,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803198,  6089,      2)  /* Legendary Blood Thirst */
     , (803198,  6091,      2)  /* Legendary Defender */
     , (803198,  3699,      2)  /* Prodigal Defender */
     , (803198,  3739,      2)  /* Prodigal Swift Killer */
     , (803198,  3688,      2)  /* Prodigal Blood Drinker */;
