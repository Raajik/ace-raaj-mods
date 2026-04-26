DELETE FROM `weenie` WHERE `class_Id` = 800042;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800042, 'cursedblunt', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800042,   1,      32768) /* ItemType - Caster */
     , (800042,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800042,   5,        150) /* EncumbranceVal */
     , (800042,   9,   16777216) /* ValidLocations - Held */
     , (800042,  16,          1) /* ItemUseable - No */
     , (800042,  18,          1) /* UiEffects - Magical */
     , (800042,  19,          1) /* Value */
     , (800042,  33,          1) /* Bonded - Bonded */
     , (800042,  36,       9999) /* ResistMagic */
     , (800042,  45,         16) /* DamageType - Fire */
     , (800042,  46,        512) /* DefaultCombatStyle - Magic */
     , (800042,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800042,  94,         16) /* TargetType - Creature */
     , (800042, 114,          1) /* Attuned - Attuned */
     , (800042, 151,          2) /* HookType - Wall */
     , (800042, 158,          2) /* WieldRequirements - RawSkill */
     , (800042, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800042, 160,        390) /* WieldDifficulty */
     , (800042, 166,         14) /* SlayerCreatureType - Undead */
	 , (800042, 179,         32) /* ImbuedEffect - Bludgeoning */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800042,  22, True ) /* Inscribable */
     , (800042,  69, False) /* IsSellable */
     , (800042,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800042,  29,    1.40) /* WeaponDefense */
     , (800042, 138,       3) /* SlayerDamageBonus */
     , (800042, 144,    0.30) /* ManaConversionMod */
     , (800042, 152,       2) /* ElementalDamageMod */
	 , (800042, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800042,   1, 'Cursed Blunt Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800042,   1,   33559826) /* Setup */
     , (800042,   3,  536870932) /* SoundTable */
     , (800042,   6,   67111919) /* PaletteBase */
     , (800042,   7,  268436395) /* ClothingBase */
     , (800042,   8,  100688568) /* Icon */
     , (800042,  22,  872415275) /* PhysicsEffectTable */
	 , (800042,  55,       2752) /* ProcSpell - Fire Bolt VII */;
