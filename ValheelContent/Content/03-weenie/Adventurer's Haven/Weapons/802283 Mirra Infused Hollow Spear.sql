DELETE FROM `weenie` WHERE `class_Id` = 802283;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802283, 'Mirra Infused Hollow Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802283,   1,          1) /* ItemType - MeleeWeapon */
     , (802283,   3,         20) /* PaletteTemplate - Silver */
     , (802283,   5,        700) /* EncumbranceVal */
     , (802283,   8,        140) /* Mass */
     , (802283,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802283,  16,          1) /* ItemUseable - No */
     , (802283,  18,          1) /* UiEffects - Magical */
     , (802283,  19,       4000) /* Value */
     , (802283,  33,          1) /* Bonded - Bonded */
     , (802283,  36,       9999) /* ResistMagic */
     , (802283,  44,        115) /* Damage */
     , (802283,  45,       1024) /* DamageType - Nether */
     , (802283,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802283,  47,          2) /* AttackType - Thrust */
     , (802283,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (802283,  49,         30) /* WeaponTime */
     , (802283,  51,          1) /* CombatUse - Melee */
     , (802283,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802283, 114,          1) /* Attuned - Attuned */
     , (802283, 150,        103) /* HookPlacement - Hook */
     , (802283, 151,          2) /* HookType - Wall */
     , (802283, 158,          7) /* WieldRequirements - RawSkill */
     , (802283, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (802283, 160,        1000) /* WieldDifficulty */
	 , (802283, 179,      16384) /* Imbued Effect - Nether */
     , (802283, 292,          3) /* Cleaving */
     , (802283, 353,          5) /* WeaponType - Spear */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802283,  11, True ) /* IgnoreCollisions */
     , (802283,  13, True ) /* Ethereal */
     , (802283,  14, True ) /* GravityStatus */
     , (802283,  15, True ) /* LightsStatus */
     , (802283,  19, True ) /* Attackable */
     , (802283,  22, True ) /* Inscribable */
     , (802283,  23, True ) /* DestroyOnSell */
     , (802283,  65, True ) /* IgnoreMagicResist */
     , (802283,  66, True ) /* IgnoreMagicArmor */
     , (802283,  69, False) /* IsSellable */
     , (802283,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802283,  21,     1.5) /* WeaponLength */
     , (802283,  22,     0.3) /* DamageVariance */
     , (802283,  26,       0) /* MaximumVelocity */
     , (802283,  29,    1.35) /* WeaponDefense */
     , (802283,  39,    0.67) /* DefaultScale */
     , (802283,  62,     1.1) /* WeaponOffense */
     , (802283,  63,     2.2) /* DamageMod */
     , (802283,  76,     0.7) /* Translucency */
     , (802283, 136,    0.25) /* CriticalMultiplier */
     , (802283, 147,     0.3) /* CriticalFrequency */
     , (802283, 152,     1.4) /* ElementalDamageMod */
     , (802283, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802283,   1, 'Mirra Infused Hollow Spear') /* Name */
     , (802283,  15, 'A spear crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (802283,  16, 'A spear crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802283,   1,   33556646) /* Setup */
     , (802283,   3,  536870932) /* SoundTable */
     , (802283,   6,   67111919) /* PaletteBase */
     , (802283,   7,  268435768) /* ClothingBase */
     , (802283,   8,  100669005) /* Icon */
     , (802283,  22,  872415275) /* PhysicsEffectTable */
     , (802283,  36,  234881044) /* MutateFilter */
	 , (802283,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
