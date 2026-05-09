DELETE FROM `weenie` WHERE `class_Id` = 800179;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800179, 'champion katar of asheron', 6, '2022-02-10 05:08:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800179,   1,          1) /* ItemType - MeleeWeapon */
     , (800179,   3,          8) /* PaletteTemplate - Green */
     , (800179,   5,        135) /* EncumbranceVal */
     , (800179,   8,         90) /* Mass */
     , (800179,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800179,  16,          1) /* ItemUseable - No */
     , (800179,  18,          1) /* UiEffects - Magical */
     , (800179,  19,          1) /* Value */
     , (800179,  33,          1) /* Bonded - Bonded */
     , (800179,  44,         85) /* Damage */
     , (800179,  45,         16) /* DamageType - Slash, Pierce */
     , (800179,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (800179,  47,          1) /* AttackType - Punch */
     , (800179,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800179,  49,         20) /* WeaponTime */
     , (800179,  51,          1) /* CombatUse - Melee */
     , (800179,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800179, 106,        999) /* ItemSpellcraft */
     , (800179, 107,       1000) /* ItemCurMana */
     , (800179, 108,       1000) /* ItemMaxMana */
     , (800179, 109,        200) /* ItemDifficulty */
     , (800179, 114,          1) /* Attuned - Attuned */
     , (800179, 158,          2) /* WieldRequirements - RawSkill */
     , (800179, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (800179, 160,        400) /* WieldDifficulty */
     , (800179, 166,         19) /* SlayerCreatureType - Virindi */
     , (800179, 292,          2) /* Cleaving */
     , (800179, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800179,  22, True ) /* Inscribable */
     , (800179,  23, True ) /* DestroyOnSell */
     , (800179,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800179,   5,  -0.033) /* ManaRate */
     , (800179,  21,    0.51) /* WeaponLength */
     , (800179,  22,     0.3) /* DamageVariance */
     , (800179,  29,    1.27) /* WeaponDefense */
     , (800179,  39,       1) /* DefaultScale */
     , (800179,  62,    1.27) /* WeaponOffense */
     , (800179,  63,     1.2) /* DamageMod */
     , (800179, 136,     1.2) /* CriticalMultiplier */
     , (800179, 138,       2) /* SlayerDamageBonus */
     , (800179, 147,     0.3) /* CriticalFrequency */
     , (800179, 152,     1.2) /* ElementalDamageMod */
	 , (800179,  156,    0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800179,   1, 'Champion Katar of Asheron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800179,   1,   33557315) /* Setup */
     , (800179,   3,  536870932) /* SoundTable */
     , (800179,   6,   67111919) /* PaletteBase */
     , (800179,   7,  268436241) /* ClothingBase */
     , (800179,   8,  100672044) /* Icon */
     , (800179,  22,  872415275) /* PhysicsEffectTable */
     , (800179,  36,  234881044) /* MutateFilter */
	 , (800179,  55,       4423) /* ProcSpell - Flame Arc VII */;

