DELETE FROM `weenie` WHERE `class_Id` = 800737;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800737, 'Crafted Acid Vhorma Drum', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800737,   1,      32768) /* ItemType - Caster */
     , (800737,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800737,   5,         50) /* EncumbranceVal */
     , (800737,   9,   16777216) /* ValidLocations - Held */
     , (800737,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800737,  18,        256) /* UiEffects - Magical */
     , (800737,  19,          1) /* Value */
     , (800737,  33,          1) /* Bonded - Slippery */
     , (800737,  45,         32) /* DamageType - Acid */
     , (800737,  46,        512) /* DefaultCombatStyle - Magic */
     , (800737,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800737,  94,         16) /* TargetType - Creature */
     , (800737, 106,        999) /* ItemSpellcraft */
     , (800737, 107,       2700) /* ItemCurMana */
     , (800737, 108,       2700) /* ItemMaxMana */
     , (800737, 114,          1) /* Attuned - Attuned */
     , (800737, 158,          7) /* WieldRequirements - Level */
     , (800737, 159,          1) /* WieldSkillType - Axe */
     , (800737, 160,        325) /* WieldDifficulty */
	 , (800737, 179,         64) /* Imbued Effect - Acid Rend */
     , (800737, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800737,  22, True ) /* Inscribable */
     , (800737,  65, True ) /* IgnoreMagicResist */
     , (800737,  66, True ) /* IgnoreMagicArmor */
     , (800737,  69, False) /* IsSellable */
     , (800737,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800737,   5,   -0.05) /* ManaRate */
     , (800737,  29,    1.30) /* WeaponDefense */
     , (800737,  39,     0.8) /* DefaultScale */
     , (800737, 136,     1.1) /* CriticalMultiplier */
     , (800737, 144,    0.35) /* ManaConversionMod */
     , (800737, 147,     0.3) /* CriticalFrequency */
     , (800737, 152,     1.5) /* ElementalDamageMod */
	 , (800737, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800737,   1, 'Crafted Acid Vhorma Drum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800737,   1,   33557297) /* Setup */
     , (800737,   3,  536870932) /* SoundTable */
     , (800737,   6,   67113783) /* PaletteBase */
     , (800737,   7,  268436324) /* ClothingBase */
     , (800737,   8,  100672520) /* Icon */
     , (800737,  22,  872415275) /* PhysicsEffectTable */
     , (800737,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800737,  36,  234881046) /* MutateFilter */
	 , (800737,  52,  100689404) /* IconUnderlay */
	 , (800737,  55,       4433) /* ProcSpell - Fire Bomb */;

