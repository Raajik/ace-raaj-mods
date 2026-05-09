DELETE FROM `weenie` WHERE `class_Id` = 800705;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800705, 'Crafted Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800705,   1,      32768) /* ItemType - Caster */
     , (800705,   3,         39) /* PaletteTemplate - Black */
     , (800705,   5,         50) /* EncumbranceVal */
     , (800705,   9,   16777216) /* ValidLocations - Held */
     , (800705,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800705,  18,          1) /* UiEffects - Magical */
     , (800705,  19,          1) /* Value */
     , (800705,  33,          1) /* Bonded - Bonded */
     , (800705,  45, 2147483647) /* DamageType - 2147483647 */
     , (800705,  46,        512) /* DefaultCombatStyle - Magic */
     , (800705,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800705,  94,         16) /* TargetType - Creature */
     , (800705, 106,        999) /* ItemSpellcraft */
     , (800705, 107,       2700) /* ItemCurMana */
     , (800705, 108,       2700) /* ItemMaxMana */
     , (800705, 114,          1) /* Attuned - Attuned */
     , (800705, 158,          7) /* WieldRequirements - Level */
     , (800705, 159,          1) /* WieldSkillType - Axe */
     , (800705, 160,        325) /* WieldDifficulty */
     , (800705, 179,          4) /* ImbuedEffect - ArmorRending */
     , (800705, 263,          1) /* ResistanceModifierType */
     , (800705, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800705,  22, True ) /* Inscribable */
     , (800705,  65, True ) /* IgnoreMagicResist */
     , (800705,  66, True ) /* IgnoreMagicArmor */
     , (800705,  69, False) /* IsSellable */
     , (800705,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800705,   5,   -0.05) /* ManaRate */
     , (800705,  29,    1.30) /* WeaponDefense */
     , (800705,  39,     0.8) /* DefaultScale */
     , (800705, 136,     1.1) /* CriticalMultiplier */
     , (800705, 144,    0.35) /* ManaConversionMod */
     , (800705, 147,     0.3) /* CriticalFrequency */
     , (800705, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800705,   1, 'Crafted Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800705,   1,   33557297) /* Setup */
     , (800705,   3,  536870932) /* SoundTable */
     , (800705,   6,   67113783) /* PaletteBase */
     , (800705,   7,  268436324) /* ClothingBase */
     , (800705,   8,  100672520) /* Icon */
     , (800705,  22,  872415275) /* PhysicsEffectTable */
     , (800705,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800705,  36,  234881046) /* MutateFilter */
     , (800705,  52,  100689404) /* IconUnderlay */;
