DELETE FROM `weenie` WHERE `class_Id` = 800094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800094, 'Cursed Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800094,   1,          1) /* ItemType - MeleeWeapon */
     , (800094,   3,         39) /* PaletteTemplate - Black */
     , (800094,   5,        125) /* EncumbranceVal */
     , (800094,   8,        110) /* Mass */
     , (800094,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800094,  16,          1) /* ItemUseable - No */
     , (800094,  18,          1) /* UiEffects - Magical */
     , (800094,  19,          2) /* Value */
     , (800094,  33,          1) /* Bonded - Bonded */
     , (800094,  44,        180) /* Damage */
     , (800094,  45,       1024) /* DamageType - Nether */
     , (800094,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (800094,  47,          1) /* AttackType - Punch */
     , (800094,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800094,  49,         12) /* WeaponTime */
     , (800094,  51,          1) /* CombatUse - Melee */
     , (800094,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800094, 106,        999) /* ItemSpellcraft */
     , (800094, 107,       1200) /* ItemCurMana */
     , (800094, 108,       1200) /* ItemMaxMana */
     , (800094, 114,          1) /* Attuned - Attuned */
     , (800094, 115,        325) /* ItemSkillLevelLimit */
     , (800094, 150,        103) /* HookPlacement - Hook */
     , (800094, 151,          2) /* HookType - Wall */
     , (800094, 158,          7) /* WieldRequirements - Level */
     , (800094, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (800094, 160,        275) /* WieldDifficulty */
     , (800094, 179,      16384) /* ImbuedEffect - CriticalStrike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800094,  11, True ) /* IgnoreCollisions */
     , (800094,  13, True ) /* Ethereal */
     , (800094,  14, True ) /* GravityStatus */
     , (800094,  19, True ) /* Attackable */
     , (800094,  22, True ) /* Inscribable */
     , (800094,  65, True ) /* IgnoreMagicResist */
     , (800094,  66, True ) /* IgnoreMagicArmor */
     , (800094,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800094,   5,    -0.1) /* ManaRate */
     , (800094,  21,    0.55) /* WeaponLength */
     , (800094,  22,    0.33) /* DamageVariance */
     , (800094,  29,    1.25) /* WeaponDefense */
     , (800094,  62,    1.25) /* WeaponOffense */
     , (800094,  63,     2.4) /* DamageMod */
     , (800094,  76,     0.7) /* Translucency */
     , (800094, 136,       2) /* CriticalMultiplier */
     , (800094, 147,     0.5) /* CriticalFrequency */
     , (800094, 152,     1.5) /* ElementalDamageMod */
     , (800094, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800094,   1, 'Cursed Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800094,   1,   33556258) /* Setup */
     , (800094,   3,  536870932) /* SoundTable */
     , (800094,   6,   67111919) /* PaletteBase */
     , (800094,   7,  268436380) /* ClothingBase */
     , (800094,   8,  100672905) /* Icon */
     , (800094,  22,  872415275) /* PhysicsEffectTable */
     , (800094,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (800094,  55,       5354) /* ProcSpell - Ring of Skulls II */;
