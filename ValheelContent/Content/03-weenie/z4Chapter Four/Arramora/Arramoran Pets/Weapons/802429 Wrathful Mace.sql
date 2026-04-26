DELETE FROM `weenie` WHERE `class_Id` = 802429;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802429, 'Wrathful Mace', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802429,   1,          1) /* ItemType - MeleeWeapon */
     , (802429,   3,          8) /* PaletteTemplate - Green */
     , (802429,   5,        450) /* EncumbranceVal */
     , (802429,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802429,  16,          1) /* ItemUseable - No */
     , (802429,  18,          1) /* UiEffects - Magical */
     , (802429,  19,       5000) /* Value */
     , (802429,  33,          1) /* Bonded - Bonded */
     , (802429,  44,        500) /* Damage */
     , (802429,  45,       2147483647) /* DamageType - Nether */
     , (802429,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802429,  47,          6) /* AttackType - Thrust, Slash */
     , (802429,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802429,  49,         35) /* WeaponTime */
     , (802429,  51,          1) /* CombatUse - Melee */
     , (802429,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802429, 106,        325) /* ItemSpellcraft */
     , (802429, 107,        750) /* ItemCurMana */
     , (802429, 108,        750) /* ItemMaxMana */
     , (802429, 109,        200) /* ItemDifficulty */
     , (802429, 114,          1) /* Attuned - Attuned */
     , (802429, 151,          2) /* HookType - Wall */
     , (802429, 158,          2) /* WieldRequirements - RawSkill */
     , (802429, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (802429, 160,        370) /* WieldDifficulty */
	 , (802429, 179,       2147483647) /* Imbued Effect - Armor Rend */
     , (802429, 353,          4) /* WeaponType - Mace */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802429,  11, True ) /* IgnoreCollisions */
     , (802429,  13, True ) /* Ethereal */
     , (802429,  14, True ) /* GravityStatus */
     , (802429,  19, True ) /* Attackable */
     , (802429,  22, True ) /* Inscribable */
     , (802429,  69, False) /* IsSellable */
     , (802429,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802429,   5,   -0.05) /* ManaRate */
     , (802429,  21,       0) /* WeaponLength */
     , (802429,  22,    0.25) /* DamageVariance */
     , (802429,  29,    1.50) /* WeaponDefense */
     , (802429,  39,     1.3) /* DefaultScale */
     , (802429,  62,    1.50) /* WeaponOffense */
     , (802429,  63,       5) /* DamageMod */
     , (802429, 136,     1.5) /* CriticalMultiplier */
     , (802429, 147,       1) /* CriticalFrequency */
     , (802429, 152,       5) /* ElementalDamageMod */
     /*, (802429, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802429,   1, 'Wrathful Mace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802429,   1,   33557110) /* Setup */
     , (802429,   3,  536870932) /* SoundTable */
     , (802429,   8,  100671697) /* Icon */
     , (802429,  22,  872415275) /* PhysicsEffectTable */
     , (802429,  36,  234881044) /* MutateFilter */
     , (802429,  52,  100667851) /* IconUnderlay */
     /*, (802429,  55,       5368) /* ProcSpell - Incantation of Nether Arc */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802429,  2059,      2)  /* Honed Control */
     , (802429,  2096,      2)  /* Aura of Infected Caress */
     , (802429,  2101,      2)  /* Aura of Cragstone's Will */
     , (802429,  2106,      2)  /* Aura of Elysa's Sight */
     , (802429,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (802429,  2149,      2)  /* Caustic Blessing */
     , (802429,  2531,      2)  /* Major Heavy Weapon Aptitude */
     , (802429,  2598,      2)  /* Minor Blood Thirst */;
