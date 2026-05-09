DELETE FROM `weenie` WHERE `class_Id` = 800307;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800307, 'Bael''Zharon Touched Weeping Two Handed Spear', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800307,   1,          1) /* ItemType - MeleeWeapon */
     , (800307,   5,        650) /* EncumbranceVal */
     , (800307,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800307,  16,          1) /* ItemUseable - No */
     , (800307,  18,          1) /* UiEffects - Magical */
     , (800307,  19,          1) /* Value */
     , (800307,  33,          1) /* Bonded - Bonded */
     , (800307,  36,       9999) /* ResistMagic */
     , (800307,  44,         55) /* Damage */
     , (800307,  45,          2) /* DamageType - Pierce */
     , (800307,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800307,  47,          2) /* AttackType - Thrust */
     , (800307,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800307,  49,          1) /* WeaponTime */
     , (800307,  51,          5) /* CombatUse - TwoHanded */
     , (800307,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800307, 106,        300) /* ItemSpellcraft */
     , (800307, 107,        800) /* ItemCurMana */
     , (800307, 108,        800) /* ItemMaxMana */
     , (800307, 109,        350) /* ItemDifficulty */
     , (800307, 114,          1) /* Attuned - Attuned */
     , (800307, 151,          2) /* HookType - Wall */
     , (800307, 158,          7) /* WieldRequirements - RawSkill */
     , (800307, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (800307, 160,        275) /* WieldDifficulty */
     , (800307, 166,         31) /* SlayerCreatureType - Human */
	 , (800307, 179,          4) /* Imbued Effect - Armor Rending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800307,  22, True ) /* Inscribable */
     , (800307,  69, False) /* IsSellable */
     , (800307,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800307,   5,  -0.025) /* ManaRate */
     , (800307,  21,       0) /* WeaponLength */
     , (800307,  22,     0.5) /* DamageVariance */
     , (800307,  26,       0) /* MaximumVelocity */
     , (800307,  29,    1.25) /* WeaponDefense */
     , (800307,  62,    1.25) /* WeaponOffense */
     , (800307,  63,     1.2) /* DamageMod */
     , (800307, 138,     3.4) /* SlayerDamageBonus */
     , (800307, 151,       1) /* IgnoreShield */
     , (800307, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800307,   1, 'Bael''Zharon Touched Weeping Two Handed Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800307,   1,   33558296) /* Setup */
     , (800307,   3,  536870932) /* SoundTable */
     , (800307,   8,  100690835) /* Icon */
     , (800307,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800307,  6073,      2)  /* Legendary Two Handed Combat Aptitude */;
