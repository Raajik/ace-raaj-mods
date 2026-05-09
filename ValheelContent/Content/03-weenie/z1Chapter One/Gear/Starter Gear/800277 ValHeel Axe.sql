DELETE FROM `weenie` WHERE `class_Id` = 800277;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800277, 'Valheel Axe', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800277,   1,          1) /* ItemType - MeleeWeapon */
     , (800277,   5,        750) /* EncumbranceVal */
     , (800277,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800277,  16,          1) /* ItemUseable - No */
     , (800277,  19,          1) /* Value */
     , (800277,  44,         64) /* Damage */
     , (800277,  45,          16) /* DamageType - Slash */
     , (800277,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800277,  47,          4) /* AttackType - Slash */
     , (800277,  48,         45) /* WeaponSkill - LightWeapons */
     , (800277,  49,         25) /* WeaponTime */
     , (800277,  51,          1) /* CombatUse - Melee */
     , (800277,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800277, 106,        300) /* ItemSpellcraft */
     , (800277, 107,        800) /* ItemCurMana */
     , (800277, 108,        800) /* ItemMaxMana */
     , (800277, 150,        103) /* HookPlacement - Hook */
     , (800277, 151,          2) /* HookType - Wall */
     , (800277, 158,          7) /* WieldRequirements - Level */
     , (800277, 159,         45) /* WieldSkillType - LightWeapons */
     , (800277, 160,        180) /* WieldDifficulty */
	 , (800277, 179,        512) /* Imbued Effect - Fire */
     , (800277, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800277,  22, True ) /* Inscribable */
     , (800277,  23, True ) /* DestroyOnSell */
     , (800277,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800277,   5,  -0.025) /* ManaRate */
     , (800277,  21,    0.75) /* WeaponLength */
     , (800277,  22,     0.4) /* DamageVariance */
     , (800277,  29,    1.18) /* WeaponDefense */
     , (800277,  39,       1) /* DefaultScale */
     , (800277,  62,    1.38) /* WeaponOffense */
     , (800277, 151,       1) /* IgnoreShield */
     , (800277, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800277,   1, 'ValHeel Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800277,   1,   33560668) /* Setup */
     , (800277,   3,  536870932) /* SoundTable */
     , (800277,   8,  100690276) /* Icon */
     , (800277,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800277,  2504,      2)  /* Major Light Weapon Aptitude */;
