DELETE FROM `weenie` WHERE `class_Id` = 802434;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802434, 'Wretched Bones Sword', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802434,   1,          1) /* ItemType - MeleeWeapon */
     , (802434,   3,          8) /* PaletteTemplate - Green */
     , (802434,   5,        450) /* EncumbranceVal */
     , (802434,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802434,  16,          1) /* ItemUseable - No */
     , (802434,  18,          1) /* UiEffects - Magical */
     , (802434,  19,       5000) /* Value */
     , (802434,  33,          1) /* Bonded - Bonded */
     , (802434,  44,        500) /* Damage */
     , (802434,  45,       2147483647) /* DamageType - Nether */
     , (802434,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802434,  47,          6) /* AttackType - Thrust, Slash */
     , (802434,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802434,  49,         35) /* WeaponTime */
     , (802434,  51,          1) /* CombatUse - Melee */
     , (802434,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802434, 106,        325) /* ItemSpellcraft */
     , (802434, 107,        750) /* ItemCurMana */
     , (802434, 108,        750) /* ItemMaxMana */
     , (802434, 109,        200) /* ItemDifficulty */
     , (802434, 114,          1) /* Attuned - Attuned */
     , (802434, 151,          2) /* HookType - Wall */
     , (802434, 158,          2) /* WieldRequirements - RawSkill */
     , (802434, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (802434, 160,        370) /* WieldDifficulty */
	 , (802434, 179,       2147483647) /* Imbued Effect - Armor Rend */
     , (802434, 353,          2) /* WeaponType - Mace */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802434,  11, True ) /* IgnoreCollisions */
     , (802434,  13, True ) /* Ethereal */
     , (802434,  14, True ) /* GravityStatus */
     , (802434,  19, True ) /* Attackable */
     , (802434,  22, True ) /* Inscribable */
     , (802434,  69, False) /* IsSellable */
     , (802434,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802434,   5,   -0.05) /* ManaRate */
     , (802434,  21,       0) /* WeaponLength */
     , (802434,  22,    0.25) /* DamageVariance */
     , (802434,  29,    1.50) /* WeaponDefense */
     , (802434,  39,     1.3) /* DefaultScale */
     , (802434,  62,    1.50) /* WeaponOffense */
     , (802434,  63,       5) /* DamageMod */
     , (802434, 136,     1.5) /* CriticalMultiplier */
     , (802434, 147,       1) /* CriticalFrequency */
     , (802434, 152,       5) /* ElementalDamageMod */
     /*, (802434, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802434,   1, 'Wretched Bones Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802434,   1,   33556262) /* Setup */
     , (802434,   3,  536870932) /* SoundTable */
     , (802434,   6,   67111919) /* PaletteBase */
     , (802434,   7,  268436385) /* ClothingBase */
     , (802434,   8,  100672945) /* Icon */
     , (802434,  22,  872415275) /* PhysicsEffectTable */
     /*, (802434,  55,       5368) /* ProcSpell - Incantation of Nether Arc */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802434,  2059,      2)  /* Honed Control */
     , (802434,  2096,      2)  /* Aura of Infected Caress */
     , (802434,  2101,      2)  /* Aura of Cragstone's Will */
     , (802434,  2106,      2)  /* Aura of Elysa's Sight */
     , (802434,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (802434,  2149,      2)  /* Caustic Blessing */
     , (802434,  2531,      2)  /* Major Heavy Weapon Aptitude */
     , (802434,  2598,      2)  /* Minor Blood Thirst */;
