DELETE FROM `weenie` WHERE `class_Id` = 802022;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802022, 'Cursed Hollow Sword Acolyte', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802022,   1,          1) /* ItemType - MeleeWeapon */
     , (802022,   3,         39) /* PaletteTemplate - Black */
     , (802022,   5,        550) /* EncumbranceVal */
     , (802022,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802022,  16,          1) /* ItemUseable - No */
     , (802022,  18,          1) /* UiEffects - Magical */
     , (802022,  19,         10) /* Value */
     , (802022,  33,          1) /* Bonded - Bonded */
     , (802022,  44,         60) /* Damage */
     , (802022,  45,       1024) /* DamageType - Nether */
     , (802022,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802022,  47,          6) /* AttackType - Thrust, Slash */
     , (802022,  48,         45) /* WeaponSkill - LightWeapons */
     , (802022,  49,         35) /* WeaponTime */
     , (802022,  51,          1) /* CombatUse - Melee */
     , (802022,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802022, 106,        999) /* ItemSpellcraft */
     , (802022, 107,       1200) /* ItemCurMana */
     , (802022, 108,       1200) /* ItemMaxMana */
     , (802022, 114,          1) /* Attuned - Attuned */
     , (802022, 151,          2) /* HookType - Wall */
     , (802022, 158,          7) /* WieldRequirements - Level */
     , (802022, 159,          1) /* WieldSkillType - Axe */
     , (802022, 160,        275) /* WieldDifficulty */
     , (802022, 179,          1) /* ImbuedEffect - CriticalStrike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802022,  11, True ) /* IgnoreCollisions */
     , (802022,  13, True ) /* Ethereal */
     , (802022,  14, True ) /* GravityStatus */
     , (802022,  19, True ) /* Attackable */
     , (802022,  22, True ) /* Inscribable */
     , (802022,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802022,   5,    -0.1) /* ManaRate */
     , (802022,  21,       1) /* WeaponLength */
     , (802022,  22,     0.5) /* DamageVariance */
     , (802022,  29,     1.1) /* WeaponDefense */
     , (802022,  39,       2) /* DefaultScale */
     , (802022,  62,     1.1) /* WeaponOffense */
     , (802022,  63,     1.2) /* DamageMod */
     , (802022,  76,     0.7) /* Translucency */
     , (802022, 136,     1.2) /* CriticalMultiplier */
     , (802022, 147,     0.1) /* CriticalFrequency */
     , (802022, 152,     1.2) /* ElementalDamageMod */
     , (802022, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802022,   1, 'Cursed Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802022,   1,   33556262) /* Setup */
     , (802022,   3,  536870932) /* SoundTable */
     , (802022,   6,   67111919) /* PaletteBase */
     , (802022,   7,  268436385) /* ClothingBase */
     , (802022,   8,  100672945) /* Icon */
     , (802022,  22,  872415275) /* PhysicsEffectTable */
     , (802022,  37,         11) /* ItemSkillLimit - Sword */
     , (802022,  55,       6320) /* ProcSpell - Ring of Skulls II */;
