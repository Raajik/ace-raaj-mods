DELETE FROM `weenie` WHERE `class_Id` = 802021;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802021, 'Cursed Hollow Sword Merc', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802021,   1,          1) /* ItemType - MeleeWeapon */
     , (802021,   3,         39) /* PaletteTemplate - Black */
     , (802021,   5,        550) /* EncumbranceVal */
     , (802021,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802021,  16,          1) /* ItemUseable - No */
     , (802021,  18,          1) /* UiEffects - Magical */
     , (802021,  19,         10) /* Value */
     , (802021,  33,          1) /* Bonded - Bonded */
     , (802021,  44,         150) /* Damage */
     , (802021,  45,       2147483647) /* DamageType - Nether */
     , (802021,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802021,  47,          6) /* AttackType - Thrust, Slash */
     , (802021,  48,         45) /* WeaponSkill - LightWeapons */
     , (802021,  49,         35) /* WeaponTime */
     , (802021,  51,          1) /* CombatUse - Melee */
     , (802021,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802021, 106,        999) /* ItemSpellcraft */
     , (802021, 107,       1200) /* ItemCurMana */
     , (802021, 108,       1200) /* ItemMaxMana */
     , (802021, 114,          1) /* Attuned - Attuned */
     , (802021, 151,          2) /* HookType - Wall */
     , (802021, 158,          7) /* WieldRequirements - Level */
     , (802021, 159,          1) /* WieldSkillType - Axe */
     , (802021, 160,        275) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802021,  11, True ) /* IgnoreCollisions */
     , (802021,  13, True ) /* Ethereal */
     , (802021,  14, True ) /* GravityStatus */
     , (802021,  19, True ) /* Attackable */
     , (802021,  22, True ) /* Inscribable */
     , (802021,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802021,   5,    -0.1) /* ManaRate */
     , (802021,  21,       1) /* WeaponLength */
     , (802021,  22,     0.2) /* DamageVariance */
     , (802021,  29,     1.1) /* WeaponDefense */
     , (802021,  39,     1.2) /* DefaultScale */
     , (802021,  62,       1) /* WeaponOffense */
     , (802021,  63,     1.1) /* DamageMod */
     , (802021,  76,     0.7) /* Translucency */
     , (802021, 136,     1.1) /* CriticalMultiplier */
     , (802021, 147,     0.1) /* CriticalFrequency */
     , (802021, 152,     1.1) /* ElementalDamageMod */
     , (802021, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802021,   1, 'Cursed Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802021,   1,   33556262) /* Setup */
     , (802021,   3,  536870932) /* SoundTable */
     , (802021,   6,   67111919) /* PaletteBase */
     , (802021,   7,  268436385) /* ClothingBase */
     , (802021,   8,  100672945) /* Icon */
     , (802021,  22,  872415275) /* PhysicsEffectTable */
     , (802021,  37,         11) /* ItemSkillLimit - Sword */
     , (802021,  55,       6320) /* ProcSpell - Ring of Skulls II */;
