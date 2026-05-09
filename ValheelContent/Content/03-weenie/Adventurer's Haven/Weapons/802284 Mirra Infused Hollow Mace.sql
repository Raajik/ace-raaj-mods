DELETE FROM `weenie` WHERE `class_Id` = 802284;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802284, 'Mirra Infused Hollow Mace', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802284,   1,          1) /* ItemType - MeleeWeapon */
     , (802284,   3,         20) /* PaletteTemplate - Silver */
     , (802284,   5,        900) /* EncumbranceVal */
     , (802284,   8,        360) /* Mass */
     , (802284,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802284,  16,          1) /* ItemUseable - No */
     , (802284,  18,          1) /* UiEffects - Magical */
     , (802284,  19,       4000) /* Value */
     , (802284,  33,          1) /* Bonded - Bonded */
     , (802284,  36,       9999) /* ResistMagic */
     , (802284,  44,        900) /* Damage */
     , (802284,  45,       1024) /* DamageType - Nether */
     , (802284,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802284,  47,          4) /* AttackType - Slash */
     , (802284,  48,         45) /* WeaponSkill - LightWeapons */
     , (802284,  49,         30) /* WeaponTime */
     , (802284,  51,          1) /* CombatUse - Melee */
     , (802284,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802284, 114,          1) /* Attuned - Attuned */
     , (802284, 150,        103) /* HookPlacement - Hook */
     , (802284, 151,          2) /* HookType - Wall */
     , (802284, 158,          7) /* WieldRequirements - RawSkill */
     , (802284, 159,         45) /* WieldSkillType - LightWeapons */
     , (802284, 160,        1000) /* WieldDifficulty */
	 , (802284, 179,      16384) /* Imbued Effect - Nether */
     , (802284, 292,          3) /* Cleaving */
     , (802284, 353,          4) /* WeaponType - Mace */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802284,  11, True ) /* IgnoreCollisions */
     , (802284,  13, True ) /* Ethereal */
     , (802284,  14, True ) /* GravityStatus */
     , (802284,  15, True ) /* LightsStatus */
     , (802284,  19, True ) /* Attackable */
     , (802284,  22, True ) /* Inscribable */
     , (802284,  23, True ) /* DestroyOnSell */
     , (802284,  65, True ) /* IgnoreMagicResist */
     , (802284,  66, True ) /* IgnoreMagicArmor */
     , (802284,  69, False) /* IsSellable */
     , (802284,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802284,  21,    0.62) /* WeaponLength */
     , (802284,  22,     0.3) /* DamageVariance */
     , (802284,  26,       0) /* MaximumVelocity */
     , (802284,  29,    1.35) /* WeaponDefense */
     , (802284,  39,     1.8) /* DefaultScale */
     , (802284,  62,     1.1) /* WeaponOffense */
     , (802284,  63,       5) /* DamageMod */
     , (802284,  76,     0.7) /* Translucency */
     , (802284, 136,    0.25) /* CriticalMultiplier */
     , (802284, 147,     0.3) /* CriticalFrequency */
     , (802284, 152,     1.4) /* ElementalDamageMod */
     , (802284, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802284,   1, 'Mirra Infused Hollow Mace') /* Name */
     , (802284,  15, 'A mace crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (802284,  16, 'A mace crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802284,   1,   33556649) /* Setup */
     , (802284,   3,  536870932) /* SoundTable */
     , (802284,   6,   67111919) /* PaletteBase */
     , (802284,   7,  268435792) /* ClothingBase */
     , (802284,   8,  100668955) /* Icon */
     , (802284,  22,  872415275) /* PhysicsEffectTable */
     , (802284,  36,  234881044) /* MutateFilter */
	 , (802284,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
