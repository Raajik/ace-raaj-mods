DELETE FROM `weenie` WHERE `class_Id` = 800309;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800309, 'Bael''Zharon Touched Weeping Mace', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800309,   1,          1) /* ItemType - MeleeWeapon */
     , (800309,   5,        750) /* EncumbranceVal */
     , (800309,   8,        800) /* Mass */
     , (800309,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800309,  16,          1) /* ItemUseable - No */
     , (800309,  18,          1) /* UiEffects - Magical */
     , (800309,  19,          1) /* Value */
     , (800309,  33,          1) /* Bonded - Bonded */
     , (800309,  36,       9999) /* ResistMagic */
     , (800309,  44,         75) /* Damage */
     , (800309,  45,          4) /* DamageType - Bludgeon */
     , (800309,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800309,  47,          4) /* AttackType - Slash */
     , (800309,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800309,  49,          5) /* WeaponTime */
     , (800309,  51,          1) /* CombatUse - Melee */
     , (800309,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800309, 106,        300) /* ItemSpellcraft */
     , (800309, 107,        800) /* ItemCurMana */
     , (800309, 108,        800) /* ItemMaxMana */
     , (800309, 109,        350) /* ItemDifficulty */
     , (800309, 114,          1) /* Attuned - Attuned */
     , (800309, 150,        103) /* HookPlacement - Hook */
     , (800309, 151,          2) /* HookType - Wall */
     , (800309, 158,          7) /* WieldRequirements - RawSkill */
     , (800309, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (800309, 160,        275) /* WieldDifficulty */
     , (800309, 166,         31) /* SlayerCreatureType - Human */
	 , (800309, 179,          4) /* Imbued Effect - Armor Rending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800309,  22, True ) /* Inscribable */
     , (800309,  69, False) /* IsSellable */
     , (800309,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800309,   5,  -0.025) /* ManaRate */
     , (800309,  21,       0) /* WeaponLength */
     , (800309,  22,     0.5) /* DamageVariance */
     , (800309,  26,       0) /* MaximumVelocity */
     , (800309,  29,    1.25) /* WeaponDefense */
     , (800309,  62,    1.25) /* WeaponOffense */
     , (800309,  63,     1.2) /* DamageMod */
     , (800309, 138,     3.4) /* SlayerDamageBonus */
     , (800309, 151,       1) /* IgnoreShield */
     , (800309, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800309,   1, 'Bael''Zharon Touched Weeping Mace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800309,   1,   33558295) /* Setup */
     , (800309,   3,  536870932) /* SoundTable */
     , (800309,   8,  100674269) /* Icon */
     , (800309,  22,  872415275) /* PhysicsEffectTable */
     , (800309,  36,  234881044) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800309,  6072,      2)  /* Legendary Heavy Weapon Aptitude */;
