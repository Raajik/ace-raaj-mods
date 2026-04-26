DELETE FROM `weenie` WHERE `class_Id` = 803717;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803717, 'ValHeel Games Sword', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803717,   1,          1) /* ItemType - MeleeWeapon */
     , (803717,   5,        550) /* EncumbranceVal */
     , (803717,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803717,  16,          1) /* ItemUseable - No */
     , (803717,  19,      20000) /* Value */
     , (803717,  33,          1) /* Bonded - Bonded */
     , (803717,  36,       9999) /* ResistMagic */
     , (803717,  44,         66) /* Damage */
     , (803717,  45,          3) /* DamageType - Slash, Pierce */
     , (803717,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803717,  47,          6) /* AttackType - Thrust, Slash */
     , (803717,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (803717,  49,          0) /* WeaponTime */
     , (803717,  51,          1) /* CombatUse - Melee */
     , (803717,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803717, 106,        300) /* ItemSpellcraft */
     , (803717, 107,        800) /* ItemCurMana */
     , (803717, 108,        800) /* ItemMaxMana */
     , (803717, 109,         50) /* ItemDifficulty */
     , (803717, 114,          1) /* Attuned - Attuned */
     , (803717, 150,        103) /* HookPlacement - Hook */
     , (803717, 151,          2) /* HookType - Wall */
     , (803717, 158,          2) /* WieldRequirements - RawSkill */
     , (803717, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (803717, 160,        200) /* WieldDifficulty */
     , (803717, 166,         31) /* SlayerCreatureType - Human */
     , (803717, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803717,  22, True ) /* Inscribable */
     , (803717,  23, True ) /* DestroyOnSell */
     , (803717,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803717,   5,  -0.025) /* ManaRate */
     , (803717,  21,       1) /* WeaponLength */
     , (803717,  22,     0.4) /* DamageVariance */
     , (803717,  26,       0) /* MaximumVelocity */
     , (803717,  29,    1.18) /* WeaponDefense */
     , (803717,  39,       1) /* DefaultScale */
     , (803717,  62,    1.38) /* WeaponOffense */
     , (803717,  63,       1) /* DamageMod */
     , (803717, 138,     3.4) /* SlayerDamageBonus */
     , (803717, 151,       1) /* IgnoreShield */
     , (803717, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803717,   1, 'ValHeel Games Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803717,   1,   33560676) /* Setup */
     , (803717,   3,  536870932) /* SoundTable */
     , (803717,   7,  268437364) /* ClothingBase */
     , (803717,   8,  100690419) /* Icon */
     , (803717,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803717,  2509,      2)  /* Major Finesse Weapon Aptitude */;
