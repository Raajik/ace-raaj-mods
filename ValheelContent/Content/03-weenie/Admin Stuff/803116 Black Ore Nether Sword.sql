DELETE FROM `weenie` WHERE `class_Id` = 803116;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803116, 'Black Ore Nether Sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803116,   1,          1) /* ItemType - MeleeWeapon */
     , (803116,   3,         39) /* PaletteTemplate - Black */
     , (803116,   5,        550) /* EncumbranceVal */
     , (803116,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803116,  16,          1) /* ItemUseable - No */
     , (803116,  18,          1) /* UiEffects - Magical */
     , (803116,  19,         10) /* Value */
     , (803116,  33,          1) /* Bonded - Bonded */
     , (803116,  44,          1) /* Damage */
     , (803116,  45,       1024) /* DamageType - Nether */
     , (803116,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803116,  47,          2) /* AttackType - Thrust, Slash */
     , (803116,  48,         43) /* WeaponSkill - Void */
     , (803116,  49,          0) /* WeaponTime */
     , (803116,  51, 2147483647) /* CombatUse - Melee */
     , (803116,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803116, 106,        999) /* ItemSpellcraft */
     , (803116, 107,       1200) /* ItemCurMana */
     , (803116, 108,       1200) /* ItemMaxMana */
     , (803116, 114,          1) /* Attuned - Attuned */
     , (803116, 151,          2) /* HookType - Wall */
     , (803116, 158,          7) /* WieldRequirements - Level */
     , (803116, 159,         43) /* WieldSkillType - Void */
     , (803116, 160,       3000) /* WieldDifficulty */
     , (803116, 179,      16384) /* ImbuedEffect - NetherRending */
     , (803116, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803116,  11, True ) /* IgnoreCollisions */
     , (803116,  13, True ) /* Ethereal */
     , (803116,  14, True ) /* GravityStatus */
     , (803116,  19, True ) /* Attackable */
     , (803116,  22, True ) /* Inscribable */
     , (803116,  65, True ) /* IgnoreMagicResist */
     , (803116,  66, True ) /* IgnoreMagicArmor */
     , (803116,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803116,  29,       1) /* WeaponDefense */
     , (803116,  39,       1) /* DefaultScale */
     , (803116, 144,       0) /* ManaConversionMod */
     , (803116, 149,     1.4) /* WeaponMissileDefense */
     , (803116, 150,     1.4) /* WeaponMagicDefense */
     , (803116, 152,     1.7) /* ElementalDamageMod */
     , (803116, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803116,   1, 'Black Ore Nether Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803116,   1,   33561138) /* Setup */
     , (803116,   3,  536870932) /* SoundTable */
     , (803116,   6,   67115357) /* PaletteBase */
     , (803116,   7,  268436902) /* ClothingBase */
     , (803116,   8,  100668792) /* Icon */
     , (803116,  22,  872415275) /* PhysicsEffectTable */
     , (803116,  36,  234881046) /* MutateFilter */
     , (803116,  46,  939524170) /* TsysMutationFilter */
     , (803116,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
