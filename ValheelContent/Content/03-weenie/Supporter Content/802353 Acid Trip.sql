DELETE FROM `weenie` WHERE `class_Id` = 802353;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802353, 'ace802353-blackfirestingingatlansword', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802353,   1,          1) /* ItemType - MeleeWeapon */
     , (802353,   3,          8) /* PaletteTemplate - Green */
     , (802353,   5,        450) /* EncumbranceVal */
     , (802353,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802353,  16,          1) /* ItemUseable - No */
     , (802353,  18,          1) /* UiEffects - Magical */
     , (802353,  19,       5000) /* Value */
     , (802353,  33,          1) /* Bonded - Bonded */
     , (802353,  44,        500) /* Damage */
     , (802353,  45,       1024) /* DamageType - Nether */
     , (802353,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802353,  47,          6) /* AttackType - Thrust, Slash */
     , (802353,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802353,  49,         35) /* WeaponTime */
     , (802353,  51,          1) /* CombatUse - Melee */
     , (802353,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802353, 106,        325) /* ItemSpellcraft */
     , (802353, 107,        750) /* ItemCurMana */
     , (802353, 108,        750) /* ItemMaxMana */
     , (802353, 109,        200) /* ItemDifficulty */
     , (802353, 114,          1) /* Attuned - Attuned */
     , (802353, 151,          2) /* HookType - Wall */
     , (802353, 158,          2) /* WieldRequirements - RawSkill */
     , (802353, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (802353, 160,        370) /* WieldDifficulty */
	 , (802353, 179,      16384) /* Imbued Effect - Armor Rend */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802353,  11, True ) /* IgnoreCollisions */
     , (802353,  13, True ) /* Ethereal */
     , (802353,  14, True ) /* GravityStatus */
     , (802353,  19, True ) /* Attackable */
     , (802353,  22, True ) /* Inscribable */
     , (802353,  69, False) /* IsSellable */
     , (802353,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802353,   5,   -0.05) /* ManaRate */
     , (802353,  21,       0) /* WeaponLength */
     , (802353,  22,    0.25) /* DamageVariance */
     , (802353,  29,    1.50) /* WeaponDefense */
     , (802353,  39,     1.3) /* DefaultScale */
     , (802353,  62,    1.50) /* WeaponOffense */
     , (802353,  63,       5) /* DamageMod */
     , (802353, 136,     1.5) /* CriticalMultiplier */
     , (802353, 147,       1) /* CriticalFrequency */
     , (802353, 152,       5) /* ElementalDamageMod */
     , (802353, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802353,   1, 'Acid Trip') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802353,   1,   33556375) /* Setup */
     , (802353,   3,  536870932) /* SoundTable */
     , (802353,   6,   67111919) /* PaletteBase */
     , (802353,   7,  268435954) /* ClothingBase */
     , (802353,   8,  100670574) /* Icon */
     , (802353,  22,  872415275) /* PhysicsEffectTable */
     , (802353,  52,  100667851) /* IconUnderlay */
     , (802353,  55,       5368) /* ProcSpell - Incantation of Nether Arc */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802353,  2059,      2)  /* Honed Control */
     , (802353,  2096,      2)  /* Aura of Infected Caress */
     , (802353,  2101,      2)  /* Aura of Cragstone's Will */
     , (802353,  2106,      2)  /* Aura of Elysa's Sight */
     , (802353,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (802353,  2149,      2)  /* Caustic Blessing */
     , (802353,  2531,      2)  /* Major Heavy Weapon Aptitude */
     , (802353,  2598,      2)  /* Minor Blood Thirst */;
