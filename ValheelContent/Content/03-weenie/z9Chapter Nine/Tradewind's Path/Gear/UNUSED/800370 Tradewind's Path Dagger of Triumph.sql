DELETE FROM `weenie` WHERE `class_Id` = 800370;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800370, 'Tradewind''s Path Dagger of Triumph', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800370,   1,          1) /* ItemType - MeleeWeapon */
     , (800370,   3,         39) /* PaletteTemplate - Black */
     , (800370,   5,        100) /* EncumbranceVal */
     , (800370,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800370,  16,          1) /* ItemUseable - No */
     , (800370,  18,          1) /* UiEffects - Magical */
     , (800370,  19,        150) /* Value */
     , (800370,  33,          1) /* Bonded - Bonded */
     , (800370,  44,        135) /* Damage */
     , (800370,  45,       1024) /* DamageType - Pierce */
     , (800370,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800370,  47,          2) /* AttackType - Thrust */
     , (800370,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800370,  49,         20) /* WeaponTime */
     , (800370,  51,          1) /* CombatUse - Melee */
     , (800370,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800370, 106,        999) /* ItemSpellcraft */
     , (800370, 107,       2700) /* ItemCurMana */
     , (800370, 108,       2700) /* ItemMaxMana */
     , (800370, 114,          1) /* Attuned - Attuned */
     , (800370, 158,          7) /* WieldRequirements - Level */
     , (800370, 159,          1) /* WieldSkillType - Axe */
     , (800370, 160,        300) /* WieldDifficulty */
     , (800370, 179,      16384) /* ImbuedEffect - ArmorRending */
     , (800370, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800370,  22, True ) /* Inscribable */
     , (800370,  65, True ) /* IgnoreMagicResist */
     , (800370,  66, True ) /* IgnoreMagicArmor */
     , (800370,  69, False) /* IsSellable */
     , (800370,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800370,   5,   -0.05) /* ManaRate */
     , (800370,  21,       0) /* WeaponLength */
     , (800370,  22,    0.25) /* DamageVariance */
     , (800370,  29,    1.35) /* WeaponDefense */
     , (800370,  39,     1.3) /* DefaultScale */
     , (800370,  62,    1.35) /* WeaponOffense */
     , (800370,  63,     2.4) /* DamageMod */
     , (800370, 136,     1.2) /* CriticalMultiplier */
     , (800370, 147,     0.3) /* CriticalFrequency */
     , (800370, 152,     1.3) /* ElementalDamageMod */
     , (800370, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800370,   1, 'Tradewind''s Path Dagger of Triumph') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800370,   1,   33558921) /* Setup */
     , (800370,   3,  536870932) /* SoundTable */
     , (800370,   6,   67111919) /* PaletteBase */
     , (800370,   7,  268436199) /* ClothingBase */
     , (800370,   8,  100677062) /* Icon */
     , (800370,  22,  872415275) /* PhysicsEffectTable */
     , (800370,  52,  100689403) /* IconUnderlay */
     , (800370,  55,       5356) /* ProcSpell - Arcane Pyramid */;
