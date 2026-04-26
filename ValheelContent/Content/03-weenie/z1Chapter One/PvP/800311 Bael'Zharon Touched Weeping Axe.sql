DELETE FROM `weenie` WHERE `class_Id` = 800311;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800311, 'Bael''Zharon Touched Weeping Axe', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800311,   1,          1) /* ItemType - MeleeWeapon */
     , (800311,   5,        750) /* EncumbranceVal */
     , (800311,   8,        750) /* Mass */
     , (800311,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800311,  16,          1) /* ItemUseable - No */
     , (800311,  18,          1) /* UiEffects - Magical */
     , (800311,  19,          1) /* Value */
     , (800311,  33,          1) /* Bonded - Bonded */
     , (800311,  36,       9999) /* ResistMagic */
     , (800311,  44,         60) /* Damage */
     , (800311,  45,          1) /* DamageType - Slash */
     , (800311,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800311,  47,          4) /* AttackType - Slash */
     , (800311,  48,         45) /* WeaponSkill - LightWeapons */
     , (800311,  49,         25) /* WeaponTime */
     , (800311,  51,          1) /* CombatUse - Melee */
     , (800311,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800311, 106,        300) /* ItemSpellcraft */
     , (800311, 107,        800) /* ItemCurMana */
     , (800311, 108,        800) /* ItemMaxMana */
     , (800311, 109,        350) /* ItemDifficulty */
     , (800311, 114,          1) /* Attuned - Attuned */
     , (800311, 150,        103) /* HookPlacement - Hook */
     , (800311, 151,          2) /* HookType - Wall */
     , (800311, 158,          7) /* WieldRequirements - RawSkill */
     , (800311, 159,         45) /* WieldSkillType - LightWeapons */
     , (800311, 160,        275) /* WieldDifficulty */
     , (800311, 166,         31) /* SlayerCreatureType - Human */
	 , (800311, 179,          4) /* Imbued Effect - Armor Rending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800311,  22, True ) /* Inscribable */
     , (800311,  69, False) /* IsSellable */
     , (800311,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800311,   5,  -0.025) /* ManaRate */
     , (800311,  21,       0) /* WeaponLength */
     , (800311,  22,     0.5) /* DamageVariance */
     , (800311,  26,       0) /* MaximumVelocity */
     , (800311,  29,    1.25) /* WeaponDefense */
     , (800311,  62,    1.25) /* WeaponOffense */
     , (800311,  63,     1.2) /* DamageMod */
     , (800311, 138,     3.4) /* SlayerDamageBonus */
     , (800311, 151,       1) /* IgnoreShield */
     , (800311, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800311,   1, 'Bael''Zharon Touched Weeping Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800311,   1,   33558291) /* Setup */
     , (800311,   3,  536870932) /* SoundTable */
     , (800311,   8,  100674263) /* Icon */
     , (800311,  22,  872415275) /* PhysicsEffectTable */
     , (800311,  36,  234881044) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800311,  6043,      2)  /* Legendary Light Weapon Aptitude */;
