DELETE FROM `weenie` WHERE `class_Id` = 803727;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803727, 'Perfect Ascended Huntsmans Dart-Thrower', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803727,   1,        256) /* ItemType - MissileWeapon */
     , (803727,   3,          4) /* PaletteTemplate - Brown */
     , (803727,   5,        900) /* EncumbranceVal */
     , (803727,   8,         90) /* Mass */
     , (803727,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803727,  16,          1) /* ItemUseable - No */
     , (803727,  18,          0) /* UiEffects - Piercing */
     , (803727,  19,    3500000) /* Value */
     , (803727,  33,          1) /* Bonded - Bonded */
     , (803727,  44,          0) /* Damage */
     , (803727,  45,       1024) /* DamageType - Pierce */
     , (803727,  46,       1024) /* DefaultCombatStyle - Atlatl */
     , (803727,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803727,  49,         40) /* WeaponTime */
     , (803727,  50,          4) /* AmmoType - Atlatl */
     , (803727,  51,          2) /* CombatUse - Missile */
     , (803727,  52,          1) /* ParentLocation - RightHand */
     , (803727,  53,          1) /* PlacementPosition - RightHandCombat */
     , (803727,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803727, 106,        999) /* ItemSpellcraft */
     , (803727, 107,       3200) /* ItemCurMana */
     , (803727, 108,       3200) /* ItemMaxMana */
     , (803727, 109,          0) /* ItemDifficulty */
     , (803727, 114,          1) /* Attuned - Attuned */
     , (803727, 151,          2) /* HookType - Wall */
	 , (803727, 158,          7) /* WieldRequirements - Level */
     , (803727, 160,       8000) /* WieldDifficulty */
     , (803727, 169,  118162702) /* TsysMutationData */
     , (803727, 179,         -2147483648) /* ImbuedEffect - PierceRending */
     , (803727, 204,         45) /* ElementalDamageBonus */
     , (803727, 292,          5) /* Cleaving */
     , (803727, 353,          8) /* WeaponType - Bow */
	 , (803727, 370,        185) /* Damage */
	 , (803727, 371,        185) /* Damage Resist */
	 , (803727, 374,        185) /* Critical Damage */
	 , (803727, 375,        185) /* Critical Damage Resist */
	 , (803727, 376,        185) /* Heal Boost */
	 , (803727, 379,        185) /* Vitality */
	 , (803727, 9041,         2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803727,  11, True ) /* IgnoreCollisions */
     , (803727,  13, True ) /* Ethereal */
     , (803727,  14, True ) /* GravityStatus */
     , (803727,  15, True ) /* LightsStatus */
     , (803727,  19, True ) /* Attackable */
     , (803727,  22, True ) /* Inscribable */
     , (803727,  65, True ) /* IgnoreMagicResist */
     , (803727,  66, True ) /* IgnoreMagicArmor */
     , (803727,  91, False) /* Retained */
     , (803727, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803727,   5,  -0.033) /* ManaRate */
     , (803727,  12,    0.66) /* Shade */
     , (803727,  26,    24.9) /* MaximumVelocity */
     , (803727,  29,    1.50) /* WeaponDefense */
     , (803727,  39,     1.2) /* DefaultScale */
     , (803727,  63,       3) /* DamageMod */
     , (803727, 110,    1.67) /* BulkMod */
     , (803727, 136,   0.001) /* CriticalMultiplier */
     , (803727, 147,    0.10) /* CriticalFrequency */
     , (803727, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803727,   1, 'Perfect Ascended Huntsman''s Dart-Thrower') /* Name */
     , (803727,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803727,   1,   33559411) /* Setup */
     , (803727,   3,  536870932) /* SoundTable */
     , (803727,   6,   67111919) /* PaletteBase */
     , (803727,   8,  100686806) /* Icon */
     , (803727,  22,  872415275) /* PhysicsEffectTable */
     , (803727,  36,  234881042) /* MutateFilter */
     , (803727,  46,  939524146) /* TsysMutationFilter */
     , (803727,  52,  100676442) /* IconUnderlay */
	 , (803727,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803727,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803727,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803727,  6089,      2)  /* Legendary Blood Thirst */
     , (803727,  6091,      2)  /* Legendary Defender */
     , (803727,  3699,      2)  /* Prodigal Defender */
     , (803727,  3739,      2)  /* Prodigal Swift Killer */
     , (803727,  3688,      2)  /* Prodigal Blood Drinker */;
