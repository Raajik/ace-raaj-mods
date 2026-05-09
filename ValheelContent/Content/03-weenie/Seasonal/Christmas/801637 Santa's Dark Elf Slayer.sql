DELETE FROM `weenie` WHERE `class_Id` = 801637;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801637, 'SantasSword', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801637,   1,          1) /* ItemType - MeleeWeapon */
     , (801637,   3,         20) /* PaletteTemplate - Silver */
     , (801637,   5,        450) /* EncumbranceVal */
     , (801637,   8,        180) /* Mass */
     , (801637,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801637,  16,          1) /* ItemUseable - No */
     , (801637,  18,        128) /* UiEffects - Frost */
     , (801637,  19,       1300) /* Value */
     , (801637,  44,        500) /* Damage */
     , (801637,  45,          8) /* DamageType - Cold */
     , (801637,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801637,  47,          6) /* AttackType - Thrust, Slash */
     , (801637,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (801637,  49,         35) /* WeaponTime */
     , (801637,  51,          1) /* CombatUse - Melee */
     , (801637,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801637, 106,        250) /* ItemSpellcraft */
     , (801637, 107,       1000) /* ItemCurMana */
     , (801637, 108,       1000) /* ItemMaxMana */
     , (801637, 109,          1) /* ItemDifficulty */
     , (801637, 150,        103) /* HookPlacement - Hook */
     , (801637, 151,          2) /* HookType - Wall */
     , (801637, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801637,  22, True ) /* Inscribable */
     , (801637,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801637,   5,  -0.022) /* ManaRate */
     , (801637,  21,     1.8) /* WeaponLength */
     , (801637,  22,     0.5) /* DamageVariance */
     , (801637,  29,     1.4) /* WeaponDefense */
     , (801637,  39,     1.4) /* DefaultScale */
     , (801637,  62,     1.4) /* WeaponOffense */
     , (801637,  63,       5) /* DamageMod */
     , (801637, 147,    0.30) /* CriticalFrequency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801637,   1, 'Santa''s Dark Elf Slayer') /* Name */
     , (801637,  15, 'The elves had started to go dark at the hands of Krampus, and Christmas was at risk. Forged from the icy fires of the North Pole, St. Nick used this sword to defend Christmas for all!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801637,   1,   33555754) /* Setup */
     , (801637,   6,   67111919) /* PaletteBase */
     , (801637,   7,  268435788) /* ClothingBase */
     , (801637,   8,  100667934) /* Icon */
     , (801637,  22,  872415275) /* PhysicsEffectTable */;
