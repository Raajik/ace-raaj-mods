DELETE FROM `weenie` WHERE `class_Id` = 800437;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800437, 'Hue''s Axe of Eternal Death', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800437,   1,          1) /* ItemType - MeleeWeapon */
     , (800437,   5,        950) /* EncumbranceVal */
     , (800437,   8,        320) /* Mass */
     , (800437,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800437,  16,          1) /* ItemUseable - No */
     , (800437,  18,          1) /* UiEffects - Magical */
     , (800437,  19,       9000) /* Value */
     , (800437,  44,         90) /* Damage */
     , (800437,  45,          1) /* DamageType - Slash */
     , (800437,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800437,  47,          4) /* AttackType - Slash */
     , (800437,  48,         45) /* WeaponSkill - LightWeapons */
     , (800437,  49,         55) /* WeaponTime */
     , (800437,  51,          1) /* CombatUse - Melee */
     , (800437,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800437, 106,        400) /* ItemSpellcraft */
     , (800437, 107,       1000) /* ItemCurMana */
     , (800437, 108,       1000) /* ItemMaxMana */
     , (800437, 150,        103) /* HookPlacement - Hook */
     , (800437, 151,          2) /* HookType - Wall */
     , (800437, 158,          2) /* WieldRequirements - RawSkill */
     , (800437, 159,         45) /* WieldSkillType - LightWeapons */
     , (800437, 160,        325) /* WieldDifficulty */
     , (800437, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800437,  11, True ) /* IgnoreCollisions */
     , (800437,  13, True ) /* Ethereal */
     , (800437,  14, True ) /* GravityStatus */
     , (800437,  19, True ) /* Attackable */
     , (800437,  22, True ) /* Inscribable */
     , (800437,  65, True ) /* IgnoreMagicResist */
     , (800437,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800437,   5,   -0.05) /* ManaRate */
     , (800437,  21,    0.75) /* WeaponLength */
     , (800437,  22,     0.4) /* DamageVariance */
     , (800437,  26,       0) /* MaximumVelocity */
     , (800437,  29,    1.08) /* WeaponDefense */
     , (800437,  39,     1.8) /* DefaultScale */
     , (800437,  62,    1.08) /* WeaponOffense */
     , (800437,  63,       1) /* DamageMod */
     , (800437,  77,       1) /* PhysicsScriptIntensity */
     , (800437, 136,       2) /* CriticalMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800437,   1, 'Hue''s Axe of Eternal Death') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800437,   1,   33558379) /* Setup */
     , (800437,   3,  536870932) /* SoundTable */
     , (800437,   6,   67111919) /* PaletteBase */
     , (800437,   8,  100674408) /* Icon */
     , (800437,  19,         88) /* ActivationAnimation */
     , (800437,  22,  872415275) /* PhysicsEffectTable */
     , (800437,  30,         87) /* PhysicsScript - BreatheLightning */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800437,  1616,      2)  /* Aura of Blood Drinker Self VI */;
