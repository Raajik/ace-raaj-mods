DELETE FROM `weenie` WHERE `class_Id` = 801095;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801095, 'cursed hollow axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801095,   1,          1) /* ItemType - MeleeWeapon */
     , (801095,   3,         39) /* PaletteTemplate - Black */
     , (801095,   5,        550) /* EncumbranceVal */
     , (801095,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801095,  16,          1) /* ItemUseable - No */
     , (801095,  18,          1) /* UiEffects - Magical */
     , (801095,  19,          2) /* Value */
     , (801095,  33,          1) /* Bonded - Bonded */
     , (801095,  44,        180) /* Damage */
     , (801095,  45,       1024) /* DamageType - Nether */
     , (801095,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801095,  47,          6) /* AttackType - Thrust, Slash */
     , (801095,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (801095,  49,         35) /* WeaponTime */
     , (801095,  51,          1) /* CombatUse - Melee */
     , (801095,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801095, 106,        999) /* ItemSpellcraft */
     , (801095, 107,       1200) /* ItemCurMana */
     , (801095, 108,       1200) /* ItemMaxMana */
     , (801095, 114,          1) /* Attuned - Attuned */
     , (801095, 151,          2) /* HookType - Wall */
     , (801095, 158,          7) /* WieldRequirements - Level */
     , (801095, 159,          1) /* WieldSkillType - Axe */
     , (801095, 160,        275) /* WieldDifficulty */
     , (801095, 179,      16384) /* ImbuedEffect - CriticalStrike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801095,  11, True ) /* IgnoreCollisions */
     , (801095,  13, True ) /* Ethereal */
     , (801095,  14, True ) /* GravityStatus */
     , (801095,  19, True ) /* Attackable */
     , (801095,  22, True ) /* Inscribable */
     , (801095,  65, True ) /* IgnoreMagicResist */
     , (801095,  66, True ) /* IgnoreMagicArmor */
     , (801095,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801095,   5,    -0.1) /* ManaRate */
     , (801095,  21,       1) /* WeaponLength */
     , (801095,  22,    0.33) /* DamageVariance */
     , (801095,  29,    1.25) /* WeaponDefense */
     , (801095,  62,    1.25) /* WeaponOffense */
     , (801095,  63,       3) /* DamageMod */
     , (801095,  76,     0.7) /* Translucency */
     , (801095, 136,       2) /* CriticalMultiplier */
     , (801095, 147,     0.5) /* CriticalFrequency */
     , (801095, 152,     1.5) /* ElementalDamageMod */
     , (801095, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801095,   1, 'Cursed Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801095,   1,   33556302) /* Setup */
     , (801095,   3,  536870932) /* SoundTable */
     , (801095,   6,   67111919) /* PaletteBase */
     , (801095,   7,  268435881) /* ClothingBase */
     , (801095,   8,  100670513) /* Icon */
     , (801095,  22,  872415275) /* PhysicsEffectTable */
     , (801095,  55,       5354) /* ProcSpell - Ring of Skulls II */;
