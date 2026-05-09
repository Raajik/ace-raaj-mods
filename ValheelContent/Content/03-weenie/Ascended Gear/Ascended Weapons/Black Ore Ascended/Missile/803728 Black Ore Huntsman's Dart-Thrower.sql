DELETE FROM `weenie` WHERE `class_Id` = 803728;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803728, 'Black Ore Ascended Huntsmans Dart-Thrower', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803728,   1,        256) /* ItemType - MissileWeapon */
     , (803728,   3,          4) /* PaletteTemplate - Brown */
     , (803728,   5,        900) /* EncumbranceVal */
     , (803728,   8,         90) /* Mass */
     , (803728,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803728,  16,          1) /* ItemUseable - No */
     , (803728,  18,          0) /* UiEffects - Piercing */
     , (803728,  19,    3500000) /* Value */
     , (803728,  33,          1) /* Bonded - Bonded */
     , (803728,  44,          0) /* Damage */
     , (803728,  45,       1024) /* DamageType - Pierce */
     , (803728,  46,       1024) /* DefaultCombatStyle - Atlatl */
     , (803728,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803728,  49,         40) /* WeaponTime */
     , (803728,  50,          4) /* AmmoType - Atlatl */
     , (803728,  51,          2) /* CombatUse - Missile */
     , (803728,  52,          1) /* ParentLocation - RightHand */
     , (803728,  53,          1) /* PlacementPosition - RightHandCombat */
     , (803728,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803728, 106,        999) /* ItemSpellcraft */
     , (803728, 107,       3200) /* ItemCurMana */
     , (803728, 108,       3200) /* ItemMaxMana */
     , (803728, 109,          0) /* ItemDifficulty */
     , (803728, 114,          1) /* Attuned - Attuned */
     , (803728, 151,          2) /* HookType - Wall */
	 , (803728, 158,          7) /* WieldRequirements - Level */
     , (803728, 160,      10000) /* WieldDifficulty */
     , (803728, 169,  118162702) /* TsysMutationData */
     , (803728, 179,         -2147483648) /* ImbuedEffect - PierceRending */
     , (803728, 204,         55) /* ElementalDamageBonus */
     , (803728, 292,          5) /* Cleaving */
     , (803728, 353,          8) /* WeaponType - Bow */
	 , (803728, 370,        185) /* Damage */
	 , (803728, 371,        185) /* Damage Resist */
	 , (803728, 374,        185) /* Critical Damage */
	 , (803728, 375,        185) /* Critical Damage Resist */
	 , (803728, 376,        185) /* Heal Boost */
	 , (803728, 379,        185) /* Vitality */
	 , (803728, 9041,         3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803728,  11, True ) /* IgnoreCollisions */
     , (803728,  13, True ) /* Ethereal */
     , (803728,  14, True ) /* GravityStatus */
     , (803728,  15, True ) /* LightsStatus */
     , (803728,  19, True ) /* Attackable */
     , (803728,  22, True ) /* Inscribable */
     , (803728,  65, True ) /* IgnoreMagicResist */
     , (803728,  66, True ) /* IgnoreMagicArmor */
     , (803728,  91, False) /* Retained */
     , (803728, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803728,   5,  -0.033) /* ManaRate */
     , (803728,  12,    0.66) /* Shade */
     , (803728,  26,    24.9) /* MaximumVelocity */
     , (803728,  29,    1.50) /* WeaponDefense */
     , (803728,  39,     1.2) /* DefaultScale */
     , (803728,  63,     3.5) /* DamageMod */
     , (803728, 110,    1.67) /* BulkMod */
     , (803728, 136,   0.001) /* CriticalMultiplier */
     , (803728, 147,    0.10) /* CriticalFrequency */
     , (803728, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803728,   1, 'Black Ore Ascended Huntsman''s Dart-Thrower') /* Name */
     , (803728,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803728,   1,   33559411) /* Setup */
     , (803728,   3,  536870932) /* SoundTable */
     , (803728,   6,   67111919) /* PaletteBase */
     , (803728,   8,  100686806) /* Icon */
     , (803728,  22,  872415275) /* PhysicsEffectTable */
     , (803728,  36,  234881042) /* MutateFilter */
     , (803728,  46,  939524146) /* TsysMutationFilter */
     , (803728,  52,  100687395) /* IconUnderlay */
	 , (803728,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803728,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803728,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803728,  6089,      2)  /* Legendary Blood Thirst */
     , (803728,  6091,      2)  /* Legendary Defender */
     , (803728,  3699,      2)  /* Prodigal Defender */
     , (803728,  3739,      2)  /* Prodigal Swift Killer */
     , (803728,  3688,      2)  /* Prodigal Blood Drinker */;
