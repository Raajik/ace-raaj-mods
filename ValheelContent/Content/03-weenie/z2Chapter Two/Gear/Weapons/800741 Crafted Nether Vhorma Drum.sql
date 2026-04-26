DELETE FROM `weenie` WHERE `class_Id` = 800741;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800741, 'Crafted Nether Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800741,   1,      32768) /* ItemType - Caster */
     , (800741,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800741,   5,         50) /* EncumbranceVal */
     , (800741,   9,   16777216) /* ValidLocations - Held */
     , (800741,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800741,  18,         4096) /* UiEffects - Magical */
     , (800741,  19,          1) /* Value */
     , (800741,  33,          1) /* Bonded - Slippery */
     , (800741,  45,         1024) /* DamageType - Acid */
     , (800741,  46,        512) /* DefaultCombatStyle - Magic */
     , (800741,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800741,  94,         16) /* TargetType - Creature */
     , (800741, 106,        999) /* ItemSpellcraft */
     , (800741, 107,       2700) /* ItemCurMana */
     , (800741, 108,       2700) /* ItemMaxMana */
     , (800741, 114,          1) /* Attuned - Attuned */
     , (800741, 158,          7) /* WieldRequirements - Level */
     , (800741, 159,          1) /* WieldSkillType - Axe */
     , (800741, 160,        325) /* WieldDifficulty */
	 , (800741, 179,        16384) /* Imbued Effect - Acid Rend */
     , (800741, 353,          12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800741,  22, True ) /* Inscribable */
     , (800741,  65, True ) /* IgnoreMagicResist */
     , (800741,  66, True ) /* IgnoreMagicArmor */
     , (800741,  69, False) /* IsSellable */
     , (800741,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800741,   5,   -0.05) /* ManaRate */
     , (800741,  29,    1.30) /* WeaponDefense */
     , (800741,  39,     0.8) /* DefaultScale */
     , (800741, 136,     1.1) /* CriticalMultiplier */
     , (800741, 144,    0.35) /* ManaConversionMod */
     , (800741, 147,     0.3) /* CriticalFrequency */
     , (800741, 152,     1.5) /* ElementalDamageMod */
	 , (800741, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800741,   1, 'Crafted Nether Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800741,   1,   33557297) /* Setup */
     , (800741,   3,  536870932) /* SoundTable */
     , (800741,   6,   67113783) /* PaletteBase */
     , (800741,   7,  268436324) /* ClothingBase */
     , (800741,   8,  100672520) /* Icon */
     , (800741,  22,  872415275) /* PhysicsEffectTable */
     , (800741,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800741,  36,  234881046) /* MutateFilter */
	 , (800741,  52,  100689404) /* IconUnderlay */
	 , (800741,  55,       5356) /* ProcSpell - Fire Bomb */;

