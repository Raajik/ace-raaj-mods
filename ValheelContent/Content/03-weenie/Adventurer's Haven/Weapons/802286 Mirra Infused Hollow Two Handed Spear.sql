DELETE FROM `weenie` WHERE `class_Id` = 802286;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802286, 'Mirra Infused Hollow Two Handed Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802286,   1,          1) /* ItemType - MeleeWeapon */
     , (802286,   5,        700) /* EncumbranceVal */
     , (802286,   9,   33554432) /* ValidLocations - TwoHanded */
     , (802286,  16,          1) /* ItemUseable - No */
     , (802286,  18,          1) /* UiEffects - Magical */
     , (802286,  19,       4000) /* Value */
     , (802286,  33,          1) /* Bonded - Bonded */
     , (802286,  36,       9999) /* ResistMagic */
     , (802286,  44,        115) /* Damage */
     , (802286,  45,       1024) /* DamageType - Nether */
     , (802286,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (802286,  47,          2) /* AttackType - Thrust */
     , (802286,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (802286,  49,         30) /* WeaponTime */
     , (802286,  51,          5) /* CombatUse - TwoHanded */
     , (802286,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802286, 114,          1) /* Attuned - Attuned */
     , (802286, 151,          2) /* HookType - Wall */
     , (802286, 158,          7) /* WieldRequirements - RawSkill */
     , (802286, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (802286, 160,        1000) /* WieldDifficulty */
	 , (802286, 179,      16384) /* Imbued Effect - Nether */
     , (802286, 292,          4) /* Cleaving */
     , (802286, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802286,  11, True ) /* IgnoreCollisions */
     , (802286,  13, True ) /* Ethereal */
     , (802286,  14, True ) /* GravityStatus */
     , (802286,  15, True ) /* LightsStatus */
     , (802286,  19, True ) /* Attackable */
     , (802286,  22, True ) /* Inscribable */
     , (802286,  23, True ) /* DestroyOnSell */
     , (802286,  65, True ) /* IgnoreMagicResist */
     , (802286,  66, True ) /* IgnoreMagicArmor */
     , (802286,  69, False) /* IsSellable */
     , (802286,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802286,  21,       0) /* WeaponLength */
     , (802286,  22,     0.3) /* DamageVariance */
     , (802286,  26,       0) /* MaximumVelocity */
     , (802286,  29,    1.35) /* WeaponDefense */
     , (802286,  39,    0.67) /* DefaultScale */
     , (802286,  62,     1.1) /* WeaponOffense */
     , (802286,  63,       5) /* DamageMod */
     , (802286,  76,     0.7) /* Translucency */
     , (802286, 136,    0.25) /* CriticalMultiplier */
     , (802286, 147,     0.3) /* CriticalFrequency */
     , (802286, 152,     1.4) /* ElementalDamageMod */
     , (802286, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802286,   1, 'Mirra Infused Hollow Two Handed Spear') /* Name */
     , (802286,  16, 'A spear crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802286,   1,   33556646) /* Setup */
     , (802286,   3,  536870932) /* SoundTable */
     , (802286,   8,  100690819) /* Icon */
     , (802286,  22,  872415275) /* PhysicsEffectTable */
	 , (802286,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
