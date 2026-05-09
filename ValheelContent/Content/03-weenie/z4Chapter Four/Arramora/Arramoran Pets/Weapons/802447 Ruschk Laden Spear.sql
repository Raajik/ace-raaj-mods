DELETE FROM `weenie` WHERE `class_Id` = 802447;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802447, 'Ruschk Laden Spear', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802447,   1,          1) /* ItemType - MeleeWeapon */
     , (802447,   3,          8) /* PaletteTemplate - Green */
     , (802447,   5,        450) /* EncumbranceVal */
     , (802447,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802447,  16,          1) /* ItemUseable - No */
     , (802447,  18,          1) /* UiEffects - Magical */
     , (802447,  19,       5000) /* Value */
     , (802447,  33,          1) /* Bonded - Bonded */
     , (802447,  44,        500) /* Damage */
     , (802447,  45,       2147483647) /* DamageType - Nether */
     , (802447,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802447,  47,          6) /* AttackType - Thrust, Slash */
     , (802447,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802447,  49,         35) /* WeaponTime */
     , (802447,  51,          1) /* CombatUse - Melee */
     , (802447,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802447, 106,        325) /* ItemSpellcraft */
     , (802447, 107,        750) /* ItemCurMana */
     , (802447, 108,        750) /* ItemMaxMana */
     , (802447, 109,        200) /* ItemDifficulty */
     , (802447, 114,          1) /* Attuned - Attuned */
     , (802447, 151,          2) /* HookType - Wall */
     , (802447, 158,          2) /* WieldRequirements - RawSkill */
     , (802447, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (802447, 160,        370) /* WieldDifficulty */
	 , (802447, 179,       2147483647) /* Imbued Effect - Armor Rend */
     , (802447, 353,          5) /* WeaponType - Mace */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802447,  11, True ) /* IgnoreCollisions */
     , (802447,  13, True ) /* Ethereal */
     , (802447,  14, True ) /* GravityStatus */
     , (802447,  19, True ) /* Attackable */
     , (802447,  22, True ) /* Inscribable */
     , (802447,  69, False) /* IsSellable */
     , (802447,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802447,   5,   -0.05) /* ManaRate */
     , (802447,  21,       0) /* WeaponLength */
     , (802447,  22,    0.25) /* DamageVariance */
     , (802447,  29,    1.50) /* WeaponDefense */
     , (802447,  39,     1.3) /* DefaultScale */
     , (802447,  62,    1.50) /* WeaponOffense */
     , (802447,  63,       5) /* DamageMod */
     , (802447, 136,     1.5) /* CriticalMultiplier */
     , (802447, 147,       1) /* CriticalFrequency */
     , (802447, 152,       5) /* ElementalDamageMod */
     /*, (802447, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802447,   1, 'Ruschk Laden Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802447,   1,   33558800) /* Setup */
     , (802447,   3,  536870932) /* SoundTable */
     , (802447,   8,  100676619) /* Icon */
     , (802447,  22,  872415275) /* PhysicsEffectTable */
     /*, (802447,  55,       5368) /* ProcSpell - Incantation of Nether Arc */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802447,  2059,      2)  /* Honed Control */
     , (802447,  2096,      2)  /* Aura of Infected Caress */
     , (802447,  2101,      2)  /* Aura of Cragstone's Will */
     , (802447,  2106,      2)  /* Aura of Elysa's Sight */
     , (802447,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (802447,  2149,      2)  /* Caustic Blessing */
     , (802447,  2531,      2)  /* Major Heavy Weapon Aptitude */
     , (802447,  2598,      2)  /* Minor Blood Thirst */;
