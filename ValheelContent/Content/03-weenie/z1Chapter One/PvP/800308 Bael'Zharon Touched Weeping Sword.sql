DELETE FROM `weenie` WHERE `class_Id` = 800308;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800308, 'Bael''Zharon Touched Weeping Sword', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800308,   1,          1) /* ItemType - MeleeWeapon */
     , (800308,   5,        550) /* EncumbranceVal */
     , (800308,   8,        450) /* Mass */
     , (800308,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800308,  16,          1) /* ItemUseable - No */
     , (800308,  18,          1) /* UiEffects - Magical */
     , (800308,  19,          1) /* Value */
     , (800308,  33,          1) /* Bonded - Bonded */
     , (800308,  36,       9999) /* ResistMagic */
     , (800308,  44,         75) /* Damage */
     , (800308,  45,          3) /* DamageType - Slash, Pierce */
     , (800308,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800308,  47,          6) /* AttackType - Thrust, Slash */
     , (800308,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800308,  49,          5) /* WeaponTime */
     , (800308,  51,          1) /* CombatUse - Melee */
     , (800308,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800308, 106,        300) /* ItemSpellcraft */
     , (800308, 107,        800) /* ItemCurMana */
     , (800308, 108,        800) /* ItemMaxMana */
     , (800308, 109,        350) /* ItemDifficulty */
     , (800308, 114,          1) /* Attuned - Attuned */
     , (800308, 150,        103) /* HookPlacement - Hook */
     , (800308, 151,          2) /* HookType - Wall */
     , (800308, 158,          7) /* WieldRequirements - RawSkill */
     , (800308, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (800308, 160,        275) /* WieldDifficulty */
     , (800308, 166,         31) /* SlayerCreatureType - Human */
	 , (800308, 179,          4) /* Imbued Effect - Armor Rending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800308,  22, True ) /* Inscribable */
     , (800308,  69, False) /* IsSellable */
     , (800308,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800308,   5,  -0.025) /* ManaRate */
     , (800308,  21,       0) /* WeaponLength */
     , (800308,  22,     0.5) /* DamageVariance */
     , (800308,  26,       0) /* MaximumVelocity */
     , (800308,  29,    1.25) /* WeaponDefense */
     , (800308,  62,    1.25) /* WeaponOffense */
     , (800308,  63,     1.2) /* DamageMod */
     , (800308, 138,     3.4) /* SlayerDamageBonus */
     , (800308, 151,       1) /* IgnoreShield */
     , (800308, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800308,   1, 'Bael''Zharon Touched Weeping Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800308,   1,   33558298) /* Setup */
     , (800308,   3,  536870932) /* SoundTable */
     , (800308,   8,  100674264) /* Icon */
     , (800308,  22,  872415275) /* PhysicsEffectTable */
     , (800308,  36,  234881044) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800308,  6047,      2)  /* Legendary Finesse Weapon Aptitude */;
