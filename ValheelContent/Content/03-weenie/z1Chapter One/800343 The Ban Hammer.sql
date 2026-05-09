DELETE FROM `weenie` WHERE `class_Id` = 800343;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800343, 'The Ban Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800343,   1,          1) /* ItemType - MeleeWeapon */
     , (800343,   5,        800) /* EncumbranceVal */
     , (800343,   8,        340) /* Mass */
     , (800343,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800343,  16,          1) /* ItemUseable - No */
     , (800343,  19,      10000) /* Value */
     , (800343,  44,        999) /* Damage */
     , (800343,  45, 2147483647) /* DamageType - Force */
     , (800343,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800343,  47,          4) /* AttackType - Slash */
     , (800343,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800343,  49,          1) /* WeaponTime */
     , (800343,  51,          1) /* CombatUse - Melee */
     , (800343,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800343, 106,       9999) /* ItemSpellcraft */
     , (800343, 107,       9999) /* ItemCurMana */
     , (800343, 108,       9999) /* ItemMaxMana */
     , (800343, 150,        103) /* HookPlacement - Hook */
     , (800343, 151,          2) /* HookType - Wall */
     , (800343, 158,          2) /* WieldRequirements - RawSkill */
     , (800343, 159,         20) /* WieldSkillType - FinesseWeapons */
     , (800343, 160,          1) /* WieldDifficulty */
	 , (800343, 179, 2147483647) /* Imbued Effect - Force */
     , (800343, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800343,  11, True ) /* IgnoreCollisions */
     , (800343,  13, True ) /* Ethereal */
     , (800343,  14, True ) /* GravityStatus */
     , (800343,  19, True ) /* Attackable */
     , (800343,  22, True ) /* Inscribable */
     , (800343,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800343,   5,  -0.0000001) /* ManaRate */
     , (800343,  21,       1) /* WeaponLength */
     , (800343,  22,       0) /* DamageVariance */
     , (800343,  26,       0) /* MaximumVelocity */
     , (800343,  29,       5) /* WeaponDefense */
     , (800343,  39,     1.5) /* DefaultScale */
     , (800343,  62,       5) /* WeaponOffense */
     , (800343,  63,     999) /* DamageMod */
     , (800343, 136,     999) /* CriticalMultiplier */
     , (800343, 147,       1) /* CriticalFrequency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800343,   1, 'Order') /* Name */
     , (800343,  16, 'This weapon can only be weilded by an admin. It is to remind all players that if you break any rules or cause problems in excess, this hammer will be used on you.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800343,   1,   33560337) /* Setup */
     , (800343,   3,  536870932) /* SoundTable */
     , (800343,   6,   67113236) /* PaletteBase */
     , (800343,   7,  268437211) /* ClothingBase */
     , (800343,   8,  100689561) /* Icon */
     , (800343,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800343,  3716,      2)  /* Prodigal Leadership */
     , (800343,  3738,      2)  /* Prodigal Leadership */
     , (800343,  3700,      2)  /* Prodigal Leadership */
     , (800343,  3694,      2)  /* Prodigal Leadership */
     , (800343,  3705,      2)  /* Prodigal Leadership */
     , (800343,  3733,      2)  /* Prodigal Leadership */
     , (800343,  3730,      2)  /* Prodigal Leadership */;
