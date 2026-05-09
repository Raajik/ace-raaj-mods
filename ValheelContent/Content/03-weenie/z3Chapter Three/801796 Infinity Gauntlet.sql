DELETE FROM `weenie` WHERE `class_Id` = 801796;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801796, 'InfinityGauntlet', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801796,   1,          1) /* ItemType - MeleeWeapon */
     , (801796,   3,         39) /* PaletteTemplate - Black */
     , (801796,   5,        550) /* EncumbranceVal */
     , (801796,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801796,  16,          1) /* ItemUseable - No */
     , (801796,  18,          1) /* UiEffects - Magical */
     , (801796,  19,         10) /* Value */
     , (801796,  33,          1) /* Bonded - Bonded */
     , (801796,  44,       2300) /* Damage */
     , (801796,  45,       1024) /* DamageType - Nether */
     , (801796,  46,        256) /* DefaultCombatStyle - OneHanded */
     , (801796,  47,          1) /* AttackType - Triple Thrust */
     , (801796,  48,         43) /* WeaponSkill - VoidMagic */
     , (801796,  49,         35) /* WeaponTime */
     , (801796,  51,          1) /* CombatUse - Melee */
     , (801796,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801796, 106,        999) /* ItemSpellcraft */
     , (801796, 107,       1200) /* ItemCurMana */
     , (801796, 108,       1200) /* ItemMaxMana */
     , (801796, 114,          1) /* Attuned - Attuned */
     , (801796, 151,          2) /* HookType - Wall */
     , (801796, 158,          1) /* WieldRequirements - Skill */
     , (801796, 159,         43) /* WieldSkillType - VoidMagic */
     , (801796, 160,        600) /* WieldDifficulty */
     , (801796, 179,      16384) /* ImbuedEffect - NetherRending */
     , (801796, 292,          2) /* Cleaving */
     , (801796, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801796,  11, True ) /* IgnoreCollisions */
     , (801796,  13, True ) /* Ethereal */
     , (801796,  14, True ) /* GravityStatus */
     , (801796,  19, True ) /* Attackable */
     , (801796,  22, True ) /* Inscribable */
     , (801796,  65, True ) /* IgnoreMagicResist */
     , (801796,  66, True ) /* IgnoreMagicArmor */
     , (801796,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801796,   5,    -0.1) /* ManaRate */
     , (801796,  21,       1) /* WeaponLength */
     , (801796,  22,     0.5) /* DamageVariance */
     , (801796,  29,     1.4) /* WeaponDefense */
     , (801796,  39,     1.8) /* DefaultScale */
     , (801796,  62,     1.4) /* WeaponOffense */
     , (801796,  63,      15) /* DamageMod */
     , (801796,  76,     0.2) /* Translucency */
     , (801796, 136,       8) /* CriticalMultiplier */
     , (801796, 147,       1) /* CriticalFrequency */
     , (801796, 152,       5) /* ElementalDamageMod */
     , (801796, 156,    0.75) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801796,   1, 'Infinity Gauntlet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801796,   1,   33559930) /* Setup */
     , (801796,   3,  536870932) /* SoundTable */
     , (801796,   6,   67115556) /* PaletteBase */
     , (801796,   8,  100687027) /* Icon */
     , (801796,  22,  872415275) /* PhysicsEffectTable */
     , (801796,  37,         43) /* ItemSkillLimit - VoidMagic */
     , (801796,  50,  100688914) /* IconOverlay */
     , (801796,  52,  100686604) /* IconUnderlay */
     , (801796,  55,       6195) /* ProcSpell - Incantation of Nether Arc */;
