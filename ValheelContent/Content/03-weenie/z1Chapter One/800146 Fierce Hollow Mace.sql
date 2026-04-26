DELETE FROM `weenie` WHERE `class_Id` = 800146;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800146, 'fiercehollowmace', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800146,   1,          1) /* ItemType - MeleeWeapon */
     , (800146,   3,         20) /* PaletteTemplate - Silver */
     , (800146,   5,        900) /* EncumbranceVal */
     , (800146,   8,        360) /* Mass */
     , (800146,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800146,  16,          1) /* ItemUseable - No */
     , (800146,  19,       4000) /* Value */
     , (800146,  33,          1) /* Bonded - Bonded */
     , (800146,  36,       9999) /* ResistMagic */
     , (800146,  44,         75) /* Damage */
     , (800146,  45,          4) /* DamageType - Bludgeon */
     , (800146,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800146,  47,          4) /* AttackType - Slash */
     , (800146,  48,         45) /* WeaponSkill - LightWeapons */
     , (800146,  49,         30) /* WeaponTime */
     , (800146,  51,          1) /* CombatUse - Melee */
     , (800146,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800146, 114,          1) /* Attuned - Attuned */
     , (800146, 150,        103) /* HookPlacement - Hook */
     , (800146, 151,          2) /* HookType - Wall */
     , (800146, 158,          2) /* WieldRequirements - RawSkill */
     , (800146, 159,         45) /* WieldSkillType - LightWeapons */
     , (800146, 160,        250) /* WieldDifficulty */
     , (800146, 353,          4) /* WeaponType - Mace */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800146,  11, True ) /* IgnoreCollisions */
     , (800146,  13, True ) /* Ethereal */
     , (800146,  14, True ) /* GravityStatus */
     , (800146,  15, True ) /* LightsStatus */
     , (800146,  19, True ) /* Attackable */
     , (800146,  22, True ) /* Inscribable */
     , (800146,  23, True ) /* DestroyOnSell */
     , (800146,  65, True ) /* IgnoreMagicResist */
     , (800146,  66, True ) /* IgnoreMagicArmor */
     , (800146,  69, False) /* IsSellable */
     , (800146,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800146,  21,    0.62) /* WeaponLength */
     , (800146,  22,    0.25) /* DamageVariance */
     , (800146,  29,       1) /* WeaponDefense */
     , (800146,  39,       2) /* DefaultScale */
     , (800146,  62,     1.1) /* WeaponOffense */
     , (800146,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800146,   1, 'Fierce Hollow Mace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800146,   1,   33556649) /* Setup */
     , (800146,   3,  536870932) /* SoundTable */
     , (800146,   6,   67111919) /* PaletteBase */
     , (800146,   7,  268435792) /* ClothingBase */
     , (800146,   8,  100668955) /* Icon */
     , (800146,  22,  872415275) /* PhysicsEffectTable */
     , (800146,  36,  234881044) /* MutateFilter */;
