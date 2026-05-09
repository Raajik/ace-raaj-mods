DELETE FROM `weenie` WHERE `class_Id` = 801304;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801304, 'Cursed Hollow Sword IR', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801304,   1,          1) /* ItemType - MeleeWeapon */
     , (801304,   3,         39) /* PaletteTemplate - Black */
     , (801304,   5,        550) /* EncumbranceVal */
     , (801304,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801304,  16,          1) /* ItemUseable - No */
     , (801304,  18,          1) /* UiEffects - Magical */
     , (801304,  19,         10) /* Value */
     , (801304,  33,          1) /* Bonded - Bonded */
     , (801304,  44,        150) /* Damage */
     , (801304,  45,       1024) /* DamageType - Nether */
     , (801304,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801304,  47,          6) /* AttackType - Thrust, Slash */
     , (801304,  48,         45) /* WeaponSkill - LightWeapons */
     , (801304,  49,         35) /* WeaponTime */
     , (801304,  51,          1) /* CombatUse - Melee */
     , (801304,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801304, 106,        999) /* ItemSpellcraft */
     , (801304, 107,       1200) /* ItemCurMana */
     , (801304, 108,       1200) /* ItemMaxMana */
     , (801304, 114,          1) /* Attuned - Attuned */
     , (801304, 151,          2) /* HookType - Wall */
     , (801304, 158,          7) /* WieldRequirements - Level */
     , (801304, 159,          1) /* WieldSkillType - Axe */
     , (801304, 160,        275) /* WieldDifficulty */
     , (801304, 179,          1) /* ImbuedEffect - CriticalStrike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801304,  11, True ) /* IgnoreCollisions */
     , (801304,  13, True ) /* Ethereal */
     , (801304,  14, True ) /* GravityStatus */
     , (801304,  19, True ) /* Attackable */
     , (801304,  22, True ) /* Inscribable */
     , (801304,  65, True ) /* IgnoreMagicResist */
     , (801304,  66, True ) /* IgnoreMagicArmor */
     , (801304,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801304,   5,    -0.1) /* ManaRate */
     , (801304,  21,       1) /* WeaponLength */
     , (801304,  22,     0.5) /* DamageVariance */
     , (801304,  29,     1.4) /* WeaponDefense */
     , (801304,  39,     2.3) /* DefaultScale */
     , (801304,  62,     1.4) /* WeaponOffense */
     , (801304,  63,     1.8) /* DamageMod */
     , (801304,  76,     0.7) /* Translucency */
     , (801304, 136,       2) /* CriticalMultiplier */
     , (801304, 147,     0.4) /* CriticalFrequency */
     , (801304, 152,       2) /* ElementalDamageMod */
     , (801304, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801304,   1, 'Cursed Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801304,   1,   33556262) /* Setup */
     , (801304,   3,  536870932) /* SoundTable */
     , (801304,   6,   67111919) /* PaletteBase */
     , (801304,   7,  268436385) /* ClothingBase */
     , (801304,   8,  100672945) /* Icon */
     , (801304,  22,  872415275) /* PhysicsEffectTable */
     , (801304,  37,         11) /* ItemSkillLimit - Sword */
     , (801304,  55,       6320) /* ProcSpell - Ring of Skulls II */;
