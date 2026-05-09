DELETE FROM `weenie` WHERE `class_Id` = 800040;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800040, 'cursedslash', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800040,   1,      32768) /* ItemType - Caster */
     , (800040,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800040,   5,        150) /* EncumbranceVal */
     , (800040,   9,   16777216) /* ValidLocations - Held */
     , (800040,  16,          1) /* ItemUseable - No */
     , (800040,  18,          1) /* UiEffects - Magical */
     , (800040,  19,          1) /* Value */
     , (800040,  33,          1) /* Bonded - Bonded */
     , (800040,  36,       9999) /* ResistMagic */
     , (800040,  45,         16) /* DamageType - Fire */
     , (800040,  46,        512) /* DefaultCombatStyle - Magic */
     , (800040,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800040,  94,         16) /* TargetType - Creature */
     , (800040, 114,          1) /* Attuned - Attuned */
     , (800040, 151,          2) /* HookType - Wall */
     , (800040, 158,          2) /* WieldRequirements - RawSkill */
     , (800040, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800040, 160,        390) /* WieldDifficulty */
     , (800040, 166,         14) /* SlayerCreatureType - Undead */
	 , (800040, 179,          8) /* ImbuedEffect - Bludgeoning */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800040,  22, True ) /* Inscribable */
     , (800040,  69, False) /* IsSellable */
     , (800040,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800040,  29,    1.40) /* WeaponDefense */
     , (800040, 138,       3) /* SlayerDamageBonus */
     , (800040, 144,    0.30) /* ManaConversionMod */
     , (800040, 152,       2) /* ElementalDamageMod */
	 , (800040, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800040,   1, 'Cursed Slashing Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800040,   1,   33559826) /* Setup */
     , (800040,   3,  536870932) /* SoundTable */
     , (800040,   6,   67111919) /* PaletteBase */
     , (800040,   7,  268436395) /* ClothingBase */
     , (800040,   8,  100688568) /* Icon */
     , (800040,  22,  872415275) /* PhysicsEffectTable */
	 , (800040,  55,       2759) /* ProcSpell - Fire Bolt VII */;
