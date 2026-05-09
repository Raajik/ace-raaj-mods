DELETE FROM `weenie` WHERE `class_Id` = 803345;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803345, 'Ascended Huntsmans Dart-Thrower', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803345,   1,        256) /* ItemType - MissileWeapon */
     , (803345,   3,          4) /* PaletteTemplate - Brown */
     , (803345,   5,        900) /* EncumbranceVal */
     , (803345,   8,         90) /* Mass */
     , (803345,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803345,  16,          1) /* ItemUseable - No */
     , (803345,  18,          0) /* UiEffects - Piercing */
     , (803345,  19,     750000) /* Value */
     , (803345,  33,          1) /* Bonded - Bonded */
     , (803345,  44,          0) /* Damage */
     , (803345,  45,       1024) /* DamageType - Pierce */
     , (803345,  46,       1024) /* DefaultCombatStyle - Atlatl */
     , (803345,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803345,  49,         40) /* WeaponTime */
     , (803345,  50,          4) /* AmmoType - Atlatl */
     , (803345,  51,          2) /* CombatUse - Missile */
     , (803345,  52,          1) /* ParentLocation - RightHand */
     , (803345,  53,          1) /* PlacementPosition - RightHandCombat */
     , (803345,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803345, 106,        999) /* ItemSpellcraft */
     , (803345, 107,       3200) /* ItemCurMana */
     , (803345, 108,       3200) /* ItemMaxMana */
     , (803345, 109,          0) /* ItemDifficulty */
     , (803345, 114,          1) /* Attuned - Attuned */
     , (803345, 151,          2) /* HookType - Wall */
	 , (803345, 158,          7) /* WieldRequirements - Level */
     , (803345, 160,       3000) /* WieldDifficulty */
     , (803345, 169,  118162702) /* TsysMutationData */
     , (803345, 179,         -2147483648) /* ImbuedEffect - PierceRending */
     , (803345, 204,         25) /* ElementalDamageBonus */
     , (803345, 292,          5) /* Cleaving */
     , (803345, 353,          8) /* WeaponType - Bow */
	 , (803345, 370,        135) /* Damage */
	 , (803345, 371,        135) /* Damage Resist */
	 , (803345, 374,        135) /* Critical Damage */
	 , (803345, 375,        135) /* Critical Damage Resist */
	 , (803345, 376,        135) /* Heal Boost */
	 , (803345, 379,        135) /* Vitality */
	 , (803345, 9041,         1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803345,  11, True ) /* IgnoreCollisions */
     , (803345,  13, True ) /* Ethereal */
     , (803345,  14, True ) /* GravityStatus */
     , (803345,  15, True ) /* LightsStatus */
     , (803345,  19, True ) /* Attackable */
     , (803345,  22, True ) /* Inscribable */
     , (803345,  65, True ) /* IgnoreMagicResist */
     , (803345,  66, True ) /* IgnoreMagicArmor */
     , (803345,  91, False) /* Retained */
     , (803345, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803345,   5,  -0.033) /* ManaRate */
     , (803345,  12,    0.66) /* Shade */
     , (803345,  26,    24.9) /* MaximumVelocity */
     , (803345,  29,    1.50) /* WeaponDefense */
     , (803345,  39,     1.2) /* DefaultScale */
     , (803345,  63,       2) /* DamageMod */
     , (803345, 110,    1.67) /* BulkMod */
     , (803345, 136,   0.001) /* CriticalMultiplier */
     , (803345, 147,    0.10) /* CriticalFrequency */
     , (803345, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803345,   1, 'Ascended Huntsman''s Dart-Thrower') /* Name */
     , (803345,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803345,   1,   33559411) /* Setup */
     , (803345,   3,  536870932) /* SoundTable */
     , (803345,   6,   67111919) /* PaletteBase */
     , (803345,   8,  100686806) /* Icon */
     , (803345,  22,  872415275) /* PhysicsEffectTable */
     , (803345,  36,  234881042) /* MutateFilter */
     , (803345,  46,  939524146) /* TsysMutationFilter */
     , (803345,  52,  100686604) /* IconUnderlay */
	 , (803345,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803345,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803345,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803345,  6089,      2)  /* Legendary Blood Thirst */
     , (803345,  6091,      2)  /* Legendary Defender */
     , (803345,  3699,      2)  /* Prodigal Defender */
     , (803345,  3739,      2)  /* Prodigal Swift Killer */
     , (803345,  3688,      2)  /* Prodigal Blood Drinker */;
