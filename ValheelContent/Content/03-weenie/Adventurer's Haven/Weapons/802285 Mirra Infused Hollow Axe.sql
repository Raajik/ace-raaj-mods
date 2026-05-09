DELETE FROM `weenie` WHERE `class_Id` = 802285;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802285, 'Mirra Infused Hollow Axe', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802285,   1,          1) /* ItemType - MeleeWeapon */
     , (802285,   3,         20) /* PaletteTemplate - Silver */
     , (802285,   5,        800) /* EncumbranceVal */
     , (802285,   8,        320) /* Mass */
     , (802285,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802285,  16,          1) /* ItemUseable - No */
     , (802285,  18,          1) /* UiEffects - Magical */
     , (802285,  19,       4000) /* Value */
     , (802285,  33,          1) /* Bonded - Bonded */
     , (802285,  36,       9999) /* ResistMagic */
     , (802285,  44,        135) /* Damage */
     , (802285,  45,       1024) /* DamageType - Nether */
     , (802285,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802285,  47,          4) /* AttackType - Slash */
     , (802285,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (802285,  49,         30) /* WeaponTime */
     , (802285,  51,          1) /* CombatUse - Melee */
     , (802285,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802285, 114,          1) /* Attuned - Attuned */
     , (802285, 150,        103) /* HookPlacement - Hook */
     , (802285, 151,          2) /* HookType - Wall */
     , (802285, 158,          7) /* WieldRequirements - RawSkill */
     , (802285, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (802285, 160,        1000) /* WieldDifficulty */
	 , (802285, 179,      16384) /* Imbued Effect - Nether */
     , (802285, 292,          3) /* Cleaving */
     , (802285, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802285,  11, True ) /* IgnoreCollisions */
     , (802285,  13, True ) /* Ethereal */
     , (802285,  14, True ) /* GravityStatus */
     , (802285,  15, True ) /* LightsStatus */
     , (802285,  19, True ) /* Attackable */
     , (802285,  22, True ) /* Inscribable */
     , (802285,  23, True ) /* DestroyOnSell */
     , (802285,  65, True ) /* IgnoreMagicResist */
     , (802285,  66, True ) /* IgnoreMagicArmor */
     , (802285,  69, False) /* IsSellable */
     , (802285,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802285,  21,    0.75) /* WeaponLength */
     , (802285,  22,     0.3) /* DamageVariance */
     , (802285,  26,       0) /* MaximumVelocity */
     , (802285,  29,    1.35) /* WeaponDefense */
     , (802285,  39,    0.67) /* DefaultScale */
     , (802285,  62,     1.1) /* WeaponOffense */
     , (802285,  63,     2.2) /* DamageMod */
     , (802285,  76,     0.7) /* Translucency */
     , (802285, 136,    0.25) /* CriticalMultiplier */
     , (802285, 147,     0.3) /* CriticalFrequency */
     , (802285, 152,     1.4) /* ElementalDamageMod */
     , (802285, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802285,   1, 'Mirra Infused Hollow Axe') /* Name */
     , (802285,  15, 'An axe crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (802285,  16, 'An axe crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802285,   1,   33556651) /* Setup */
     , (802285,   3,  536870932) /* SoundTable */
     , (802285,   6,   67111919) /* PaletteBase */
     , (802285,   7,  268435779) /* ClothingBase */
     , (802285,   8,  100668985) /* Icon */
     , (802285,  19,         88) /* ActivationAnimation */
     , (802285,  22,  872415275) /* PhysicsEffectTable */
     , (802285,  30,         87) /* PhysicsScript - BreatheLightning */
     , (802285,  36,  234881044) /* MutateFilter */
	 , (802285,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
